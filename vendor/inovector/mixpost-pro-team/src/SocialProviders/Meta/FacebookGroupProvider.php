<?php

namespace Inovector\Mixpost\SocialProviders\Meta;

use Inovector\Mixpost\Contracts\AccountResource;
use Inovector\Mixpost\SocialProviders\Meta\Concerns\ManagesFacebookGroupResources;
use Inovector\Mixpost\SocialProviders\Meta\Concerns\ManagesFacebookOAuth;

class FacebookGroupProvider extends MetaProvider
{
    use ManagesFacebookOAuth;
    use ManagesFacebookGroupResources;

    public bool $onlyUserAccount = false;

    protected function accessToken(): string
    {
        return $this->getAccessToken()['access_token'];
    }

    public static function externalPostUrl(AccountResource $accountResource): string
    {
        return "https://www.facebook.com/{$accountResource->pivot->provider_post_id}";
    }
}
