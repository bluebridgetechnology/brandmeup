<?php

use Illuminate\Support\Facades\Route;
use Inovector\Mixpost\Http\Base\Middleware\HandleInertiaRequests;
use Inovector\Mixpost\Mixpost;
use Inovector\Mixpost\Util;

Route::prefix(Util::corePath())
    ->name('br.')
    ->middleware(array_merge(Util::config('middlewares')['web']['app'], Mixpost::getGlobalMiddlewares()))
    ->group(function () {
        // Auth routes
        Route::middleware(HandleInertiaRequests::class)->group(function () {
            require __DIR__ . '/includes/auth.php';
        });

        // Dashboard routes
        Route::middleware(array_merge(
            Util::config('middlewares')['web']['dashboard'],
            [HandleInertiaRequests::class]
        ))->group(function () {
            require __DIR__ . '/includes/main.php';

            require __DIR__ . '/includes/admin.php';

            require __DIR__ . '/includes/workspace.php';
        });
    });

require __DIR__ . '/includes/callback.php';

require __DIR__ . '/includes/public.php';
