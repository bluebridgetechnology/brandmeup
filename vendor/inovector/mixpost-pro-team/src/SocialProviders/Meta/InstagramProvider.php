<?php

namespace Inovector\Mixpost\SocialProviders\Meta;

use Illuminate\Support\Arr;
use Inovector\Mixpost\Contracts\AccountResource;
use Inovector\Mixpost\Contracts\SocialProviderPostOptions;
use Inovector\Mixpost\SocialProviders\Meta\Concerns\ManagesFacebookOAuth;
use Inovector\Mixpost\SocialProviders\Meta\Concerns\ManagesInstagramResources;
use Inovector\Mixpost\SocialProviders\Meta\Support\InstagramPostOptions;

class InstagramProvider extends MetaProvider
{
    use ManagesFacebookOAuth;
    use ManagesInstagramResources;

    public bool $onlyUserAccount = false;

    protected function setScope(): void
    {
        // Remove `publish_to_groups` scope.
        $newScopes = array_values(
            Arr::where($this->getSupportedScopeList(), function ($scope) {
                return $scope !== 'publish_to_groups';
            })
        );

        $this->scope = implode(',', $newScopes);
    }

    public static function postOptions(): SocialProviderPostOptions
    {
        return new InstagramPostOptions;
    }

    public static function externalPostUrl(AccountResource $accountResource): string
    {
        $data = $accountResource->pivot->data ? json_decode($accountResource->pivot->data, true) : [];

        if (Arr::get($data, 'story')) {
            return "https://www.instagram.com/stories/$accountResource->username/";
        }

        $shortcode = Arr::get($data, 'shortcode');

        if (!$shortcode) {
            return '';
        }

        return "https://www.instagram.com/p/$shortcode/";
    }
}
