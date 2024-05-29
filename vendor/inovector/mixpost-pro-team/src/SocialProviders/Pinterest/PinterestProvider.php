<?php

namespace Inovector\Mixpost\SocialProviders\Pinterest;

use Inovector\Mixpost\Abstracts\SocialProvider;
use Inovector\Mixpost\Contracts\SocialProviderPostOptions as SocialProviderPostOptionsContract;
use Inovector\Mixpost\Contracts\AccountResource;
use Inovector\Mixpost\Services\PinterestService;
use Inovector\Mixpost\SocialProviders\Pinterest\Concerns\ManagesConfig;
use Inovector\Mixpost\SocialProviders\Pinterest\Concerns\ManagesOAuth;
use Inovector\Mixpost\SocialProviders\Pinterest\Concerns\ManagesRateLimit;
use Inovector\Mixpost\SocialProviders\Pinterest\Concerns\ManagesResources;
use Inovector\Mixpost\SocialProviders\Pinterest\Support\PinterestPostOptions;

class PinterestProvider extends SocialProvider
{
    public array $callbackResponseKeys = ['code'];

    public string $apiVersion = 'v5';
    public string $apiUrlProduction = 'https://api.pinterest.com';
    public string $apiUrlSandbox = 'https://api-sandbox.pinterest.com';

    use ManagesConfig;
    use ManagesRateLimit;
    use ManagesOAuth;
    use ManagesResources;

    public static function service(): string
    {
        return PinterestService::class;
    }

    protected function getApiUrl(): string
    {
        if ($this->values['environment'] === 'sandbox') {
            return $this->apiUrlSandbox;
        }

        return $this->apiUrlProduction;
    }

    public static function postOptions(): SocialProviderPostOptionsContract
    {
        return new PinterestPostOptions();
    }

    public static function externalPostUrl(AccountResource $accountResource): string
    {
        return "https://www.pinterest.com/pin/{$accountResource->pivot->provider_post_id}/";
    }

    public static function mapErrorMessage(string $key): string
    {
        return match ($key) {
            'access_token_expired' => __('mixpost::account.access_token_expired'),
            'no_media_selected' => __('mixpost::post.no_media_selected'),
            'not_support_video' => __('mixpost::service.pinterest.not_support_video'),
            'video_upload_failed' => __('mixpost::service.pinterest.video_upload_failed'),
            default => $key
        };
    }
}
