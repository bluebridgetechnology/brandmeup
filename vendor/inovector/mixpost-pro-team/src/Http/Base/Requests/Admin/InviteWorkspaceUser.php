<?php

namespace Inovector\Mixpost\Http\Base\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;
use Illuminate\Validation\Rule;
use Inovector\Mixpost\Concerns\UsesUserModel;
use Inovector\Mixpost\Enums\WorkspaceUserRole;
use Inovector\Mixpost\Models\Workspace; 
use Inovector\Mixpost\Models\User;  
use Inovector\Mixpost\Http\Base\Requests\Admin\StoreUser; 
use Inovector\Mixpost\Mail\InviteEmail;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Auth; 

class InviteWorkspaceUser extends FormRequest
{
    use UsesUserModel;

  
    public function rules(): array
        {
            // return [
            //     'email' => ['required', 'email'],
            //     'role' => ['required', Rule::in(Arr::map(WorkspaceUserRole::cases(), fn($item) => $item->value))]
            // ];
            $workspaceRoles = WorkspaceUserRole::cases();

            return [
                'email' => [
                    'required',
                    'email',
                    function ($attribute, $value, $fail) {
                        $workspace = Workspace::firstOrFailByUuid($this->route('workspace'));
                        $user = User::where('email', $value)->first();
        
                        if ($user && $workspace->users()->where('user_id', $user->id)->exists()) {
                            $fail('User is already a member of this workspace.');
                        }
                    },
                ],
                'role' => ['required', Rule::in(array_values($workspaceRoles))],
            ];
        }

    public function messages(): array
    {
        return [
            'email.email' => 'Please enter a valid email address.',
            'email.exists' => 'User is already a member of this workspace.',
        ];
    }

    public function handle()
    {      
        
        $workspace = Workspace::firstOrFailByUuid($this->route('workspace')); 

        $email = $this->input('email');
        $user = User::where('email', $email)->first();
        
        if (!$user) { 
            $randomPassword = Str::random(12); 
            $this->merge(['password' => $randomPassword]); 

            $storeUserRequest = new StoreUser($this->all());
            $user = $storeUserRequest->handle();
        }
        
        try {
            $workspace->attachUser($user->id, WorkspaceUserRole::fromName(Str::upper($this->input('role'))));
        } catch (\Illuminate\Database\QueryException $e) { 
            if ($e->getCode() === '23000') { 
                return response()->json(['email' => 'User is already a member of this workspace.'], 422);
            } else { 
                throw $e;
            }
        }
        // $workspace->attachUser($user->id, WorkspaceUserRole::fromName(Str::upper($this->input('role'))));
        
        $emailContent = $this->htmlContent($user, $workspace, isset($randomPassword) ? $randomPassword : null); 
        Mail::to($user->email)->send(new InviteEmail($user->name, $emailContent, $workspace->name));
    }

    public function htmlContent($user,$workspace,$randomPassword = null){
        $url = url('/');
        // Create the HTML content for the email with inline CSS
            $emailContent = '
            <style>
                /* Add your CSS styles here */
                body {
                    font-family: Arial, sans-serif;
                    line-height: 1.6;
                    background-color: #f8f8f8;
                    margin: 0;
                    padding: 0;
                }
                .container {
                    max-width: 600px;
                    margin: 20px auto;
                    padding: 20px;
                    background-color: #fff;
                    border-radius: 5px;
                    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
                }
                .button {
                    display: inline-block;
                    padding: 10px 20px;
                    margin: 10px 30px;
                    background-color: #007bff;
                    color: #000;
                    text-decoration: none;
                    border-radius: 5px;
                }
            </style>
            <div class="container">
                <p>Dear '.$user->name.',</p> 
                <p><strong>Invitation to collaborate</strong></p>
                <p>'.Auth::user()->email.' has invited you to collaborate by sharing access to their '.$workspace->name.' account.</p>
                <p>Accept the invitation by clicking the button below.</p>';    
                // Include password only if it exists
                if ($randomPassword !== null) {
                    $emailContent .= '
                                    <p><a class="button" href="'.$url.'">Accept Invitation</a></p>
                                    <p>To get started please login with this password.</p>
                                    <p><strong>Password:</strong> '.$randomPassword.'</p>';
                } else {
                    $emailContent .= '.</p>';
                    $emailContent .= '<p><a class="button" href="'.$url.'">Accept Invitation</a></p>';
                }
                $emailContent .= '<p>To change password click on your profile and select edit profile.</p>';
            
                $emailContent .= '<p>Regards,</p>
                <p>'.env('APP_NAME').'</p>
            </div>
            ';
            $emailContent .= '<i>Note: This is an automated email. Please do not reply directly to this message. If you have any questions, please contact <span style="color:blue">support@brandmeup.pro</span></i>';
           
            return $emailContent;
    }
}
