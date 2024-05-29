<?php

namespace Inovector\Mixpost\SocialProviders\Twitter\Concerns;

trait ManagesConfig
{
    public static function getTier(): string
    {
        return self::service()::getConfiguration('tier');
    }
}
