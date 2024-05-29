<?php

namespace Inovector\Mixpost\Http\Base\Requests\Workspace;
 
use Illuminate\Foundation\Http\FormRequest;
use Inovector\Mixpost\Models\Post;
use Inovector\Mixpost\PostingSchedule;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Inovector\Mixpost\Mail\NotifyApprovalStatus;
use Illuminate\Support\Facades\Mail;
use Inovector\Mixpost\Models\Workspace;

class AddPostToQueue extends FormRequest
{
    public Post $post;

    public function rules(): array
    {
        return [];
    }

    public function withValidator($validator)
    {
        $this->post = Post::firstOrFailByUuid($this->route('post'));

        $validator->after(function ($validator) {
            if ($this->post->isInHistory()) {
                $validator->errors()->add('in_history', 'in_history');
            }

            if ($this->post->isScheduleProcessing()) {
                $validator->errors()->add('publishing', 'publishing');
            }

            if (!$this->post->accounts()->exists()) {
                $validator->errors()->add('cannot_scheduled', __('mixpost::post.post_cannot_scheduled') . "\n". __('mixpost::post.accounts_not_selected') );
            }

            if (!PostingSchedule::hasAvailableTimes()) {
                $validator->errors()->add('available_times', __('mixpost::post.posting_schedule_not_available_times'));
            }
        });
    }

    public function handle(): Post
    { 
        $workspace_user = DB::table('mixpost_workspace_user')->where('user_id',Auth::user()->id)->where('workspace_id',$this->post->workspace_id)->first();
         
        if($this->post->approval_status == 1 || $workspace_user->role =='admin'){
            $this->post->setScheduled(PostingSchedule::getNextScheduleDateTime()); 
            $this->post->setApproved(); 
        }else{ 
            $this->post->setPending(); 
            $this->post->setQueueType(); 
        $workspaceAdminIds = DB::table('mixpost_workspace_user as wu')
                ->leftJoin('mixpost_admins as a', 'wu.user_id', '=', 'a.user_id')
                ->where('wu.workspace_id', $this->post->workspace_id)
                ->where('wu.role', "admin")
                ->whereNull('a.user_id') 
                ->pluck('wu.user_id'); 
        $workspaceAdmins = DB::table('users')
                    ->whereIn('id', $workspaceAdminIds)
                    ->select('id','name','email')
                    ->get();
              
       $workspace = Workspace::find($this->post->workspace_id); 

        if(!empty($workspaceAdmins)){
            foreach ($workspaceAdmins as $admin) {
                $emailContent = $this->htmlContent($admin, $workspace); 
                Mail::to($admin->email)->send(new NotifyApprovalStatus($admin->name, $emailContent, $workspace->name));
            }
        }
            
        }
        $this->post->refresh(); 
        return $this->post;
        
    }

    public function htmlContent($user,$workspace){
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
                <p>A new social media post has been submitted on your workspace '.$workspace->name.' and requires your approval before it can be published.</p>
                <p>To approve or reject this post, please follow this link: <a class="button" href="'.$url.'">Approve/Reject</a>.</p>';    
                
                 
                $emailContent .= '<p>Regards,</p>
                <p>'.env('APP_NAME').'</p>
            </div>
            ';
            $emailContent .= '<i>Note: This is an automated email. Please do not reply directly to this message. If you have any questions, please contact <span style="color:blue">support@brandmeup.pro</span></i>';
           
            return $emailContent;
    }
}
