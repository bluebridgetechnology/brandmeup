<?php
 
namespace Inovector\Mixpost\Mail;
use Illuminate\Bus\Queueable; 
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class NotifyApprovalStatus extends Mailable
{
    use Queueable, SerializesModels;

    public $userName;
    public $emailContent;
    public $workspaceName;

    public function __construct($userName, $emailContent,$workspaceName)
    {
        $this->userName = $userName;
        $this->emailContent = $emailContent;
        $this->workspaceName = $workspaceName;
    }

    public function build()
    {
        $subject = "Approval Needed: New Social Media Post Submission";
        return $this->subject($subject)
                    ->html($this->emailContent); 
    }
}
