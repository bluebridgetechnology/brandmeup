<?php

namespace Inovector\Mixpost\Abstracts;

use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Inovector\Mixpost\Concerns\Model\TwoFactorAuthenticatable;
use Inovector\Mixpost\Concerns\Model\UserHasSettings;
use Inovector\Mixpost\Concerns\Model\UserHasTokens;
use Inovector\Mixpost\Concerns\Model\UserHasWorkspaces;
use Inovector\Mixpost\Models\Admin;
use Inovector\Mixpost\Models\Workspace;

abstract class User extends Authenticatable
{
    use UserHasWorkspaces;
    use UserHasSettings;
    use UserHasTokens;
    use TwoFactorAuthenticatable;

    public function admin(): HasOne
    {
        return $this->hasOne(Admin::class, 'user_id');
    }

    public function isAdmin(): bool
    {
        return $this->admin()->exists();
    }

    public function setActiveWorkspace(Workspace $workspace): void
    {
        $this->settings()->updateOrCreate(
            [
                'name' => 'active_workspace',
                'user_id' => $this->id
            ],
            ['payload' => $workspace->id]
        );
    }

    public function getActiveWorkspace()
    {
        $workspaceId = $this->settings()
            ->where('name', 'active_workspace')
            ->value('payload');

        if (!$workspaceId) {
            return null;
        }

        return $this->workspaces()->where('workspace_id', $workspaceId)->first();
    }
}
