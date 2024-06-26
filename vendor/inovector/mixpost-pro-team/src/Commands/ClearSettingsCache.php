<?php

namespace Inovector\Mixpost\Commands;

use Illuminate\Console\Command;
use Inovector\Mixpost\Concerns\UsesUserModel;
use Inovector\Mixpost\Facades\Settings;

class ClearSettingsCache extends Command
{
    use UsesUserModel;

    public $signature = 'mixpost:clear-settings-cache';

    public $description = 'Clear cached user settings';

    public function handle(): int
    {
        self::getUserClass()::cursor()->each(function ($user) {
            Settings::forgetAll($user->id);
        });

        $this->info('Cached user settings have been cleared!');

        return self::SUCCESS;
    }
}
