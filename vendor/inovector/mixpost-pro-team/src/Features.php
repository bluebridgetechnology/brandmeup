<?php

namespace Inovector\Mixpost;

class Features
{
    public static function isTwoFactorAuthEnabled(): bool
    {
        return self::enabled('two_factor_auth');
    }

    public static function isForgotPasswordEnabled(): bool
    {
        return self::enabled('forgot_password');
    }

    public static function isApiAccessTokenEnabled(): bool
    {
        return self::enabled('api_access_tokens');
    }

    private static function enabled(string $feature): bool
    {
        return Util::config("features.$feature", false);
    }
}
