<?php

use Illuminate\Support\Facades\Route;
use Inovector\Mixpost\Http\Base\Controllers\Main\CallbackSocialProviderController;
use Inovector\Mixpost\Http\Base\Middleware\CheckWorkspaceUser;
use Inovector\Mixpost\Http\Base\Middleware\HandleInertiaRequests;
use Inovector\Mixpost\Http\Base\Middleware\IdentifyWorkspaceForCallback;
use Inovector\Mixpost\Util;

$prefix = Util::config('force_core_path_callback_to_native', false) ?
    'br' :
    Util::corePath();

$middleware = array_merge(
    Util::config('middlewares')['web']['app'],
    Util::config('middlewares')['web']['dashboard'],
    [
        HandleInertiaRequests::class,
        IdentifyWorkspaceForCallback::class,
        CheckWorkspaceUser::class
    ]
);

Route::middleware($middleware)
    ->prefix($prefix)
    ->get('callback/{provider}', CallbackSocialProviderController::class)
    ->name('br.callbackSocialProvider');
