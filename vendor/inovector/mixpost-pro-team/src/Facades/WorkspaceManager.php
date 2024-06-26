<?php

namespace Inovector\Mixpost\Facades;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Support\Facades\Facade;
use Inovector\Mixpost\Models\Workspace;

/**
 * @method static void setCurrent(Workspace $workspace)
 * @method static void forgetCurrent()
 * @method static Workspace current()
 * @method static Collection|array all()
 * @method static bool loadById(int $id)
 * @method static bool loadByUuid(string $id)
 * @method static uniqueRule($table, $column = 'NULL', $softDelete = false)
 * @method static existsRule($table, $column = 'NULL', $softDelete = false)
 *
 * @see \Inovector\Mixpost\WorkspaceManager
 */
class WorkspaceManager extends Facade
{
    protected static function getFacadeAccessor()
    {
        return 'MixpostWorkspaceManager';
    }
}
