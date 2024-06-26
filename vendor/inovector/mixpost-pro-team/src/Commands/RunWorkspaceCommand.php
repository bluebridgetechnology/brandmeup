<?php

namespace Inovector\Mixpost\Commands;

use Illuminate\Console\Command;
use Inovector\Mixpost\Jobs\WorkspaceArtisanJob;
use Inovector\Mixpost\Models\Workspace;

class RunWorkspaceCommand extends Command
{
    public $signature = 'mixpost:run-command {command_name : The name of the command to run} {--workspace= : The ID of the workspace to run the command in}';

    public $description = 'Run a workspace command';

    public function handle(): int
    {
        $workspace = Workspace::find($this->option('workspace'));

        if (!$workspace) {
            $this->error('Workspace not found!');
            return Command::FAILURE;
        }

        WorkspaceArtisanJob::dispatchSync($workspace, $this->argument('command_name'));

        return Command::SUCCESS;
    }
}
