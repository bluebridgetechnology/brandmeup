<?php

namespace Inovector\Mixpost\SocialProviders\Meta\Concerns;

trait ManagesConfig
{
    public static function getApiVersionConfig(): string
    {
        return self::service()::getConfiguration('api_version');
    }
}
