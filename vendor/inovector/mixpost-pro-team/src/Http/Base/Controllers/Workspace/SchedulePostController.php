<?php

namespace Inovector\Mixpost\Http\Base\Controllers\Workspace;

use Illuminate\Http\JsonResponse;
use Illuminate\Routing\Controller;
use Inovector\Mixpost\Facades\Settings;
use Inovector\Mixpost\Http\Base\Requests\Workspace\SchedulePost; 
use Inovector\Mixpost\Util;
use Inovector\Mixpost\Enums\PostStatus;
use Inovector\Mixpost\Models\Post;
use Inovector\Mixpost\Mail\RejectPost;
use Illuminate\Support\Facades\Mail;
use Inovector\Mixpost\Models\Workspace;
use Inovector\Mixpost\Models\User; 

class SchedulePostController extends Controller
{ 
    public function __invoke(SchedulePost $schedulePost): JsonResponse
    {
        $scheduledPosting = $schedulePost->handle();
        
        if($scheduledPosting->approval_status == 1){
            $scheduledAt = $schedulePost->getDateTime()->tz(Settings::get('timezone'))->translatedFormat("D, M j, " . Util::timeFormat());
            return response()->json([
                'message' => __('mixpost::post.post_scheduled') . "\n $scheduledAt",
                'date' => $scheduledPosting->scheduled_at->toDateString()
            ]);
        }else{ 
            return response()->json([
                'message' =>"Post submitted. Please wait for approval"
            ]);
            
        }
      
    }
 
    public function decline($workspaceUuid,$postUuid): JsonResponse
    {
        
        $post = Post::firstOrFailByUuid($postUuid); 
        $post->status = PostStatus::DRAFT->value;
        $post->save();
        
        $post_user = User::where('id',$post->user_id)->first();
        $workspace = Workspace::firstOrFailByUuid($workspaceUuid);
         
        $emailContent = $this->htmlContent($post_user, $workspace); 
        Mail::to($post_user->email)->send(new RejectPost($post_user->name, $emailContent, $workspace->name));
          
        return response()->json([
            'message' => "The post was declined and user notified."
        ]);
    }

    public function htmlContent($user,$workspace){
         
        $url = route('br.posts.index', ['workspace' => $workspace->uuid]);
        $pending_url = $url.'?status=draft';

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
                <p>A recently submitted social media post has been reviewed and rejected. Please find the details of the post by clicking the link below:</p>
                <p>Click this <a class="button" href="'.$pending_url.'">link</a> to check contents.</p>';    
                
                 
                $emailContent .= '<p>Regards,</p>
                <p>'.env('APP_NAME').'</p>
            </div>
            ';
            $emailContent .= '<i>Note: This is an automated email. Please do not reply directly to this message. If you have any questions, please contact <span style="color:blue">support@brandmeup.pro</span></i>';
            return $emailContent;
    }
}
