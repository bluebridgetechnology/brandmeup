<?php

namespace Inovector\Mixpost\Http\Base\Requests\Workspace;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Inovector\Mixpost\Enums\PostStatus;
use Inovector\Mixpost\Models\Post;
use Inovector\Mixpost\Util;
use Inovector\Mixpost\Facades\WorkspaceManager;

class StorePost extends PostFormRequest
{
    public function handle()
    { 
       
       $workspace_user = DB::table('mixpost_workspace_user')->where('user_id',Auth::user()->id)->where('workspace_id',WorkspaceManager::current()?->id)->first();
       $approval_status = 1;
       if($workspace_user->role == 'member' || Auth::user()->isAdmin()){
        $approval_status = 0;
       } 
       
       return DB::transaction(function () use ($approval_status) {
            $record = Post::create([
                'user_id' => Auth::id(),
                'status' => PostStatus::DRAFT,
                'approval_status' =>  $approval_status,
                'scheduled_at' => $this->scheduledAt() ? Util::convertTimeToUTC($this->scheduledAt()) : null
            ]);

            $record->accounts()->attach($this->input('accounts', []));
            $record->tags()->attach($this->input('tags'));
            $record->versions()->createMany($this->inputVersions());

            return $record;
        });
    }
}
