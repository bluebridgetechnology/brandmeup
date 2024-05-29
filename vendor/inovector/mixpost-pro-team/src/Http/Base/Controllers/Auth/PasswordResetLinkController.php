<?php

namespace Inovector\Mixpost\Http\Base\Controllers\Auth;

use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Password;
use Inertia\Inertia;
use Inertia\Response;
use Inovector\Mixpost\Concerns\UsesUserModel;
use Inovector\Mixpost\Http\Base\Requests\Auth\SendPasswordResetLink;

class PasswordResetLinkController
{
    use UsesUserModel;

    public function create(): Response|RedirectResponse
    {
        if (!self::getUserClass()::exists()) {
            return redirect()->route('br.installation');
        }

        return Inertia::render('Auth/ForgotPassword');
    }

    public function store(SendPasswordResetLink $sendPasswordResetLink): RedirectResponse
    {
        $status = $sendPasswordResetLink->handle();

        return $status == Password::RESET_LINK_SENT
            ? back()->with('success', __($status))
            : back()->withErrors(['email' => __($status)]);
    }
}
