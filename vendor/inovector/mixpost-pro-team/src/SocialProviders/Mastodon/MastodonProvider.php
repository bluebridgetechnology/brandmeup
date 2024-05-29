<?php

namespace Inovector\Mixpost\SocialProviders\Mastodon;

use Illuminate\Http\Request;
use Inovector\Mixpost\Abstracts\SocialProvider;
use Inovector\Mixpost\Contracts\AccountResource;
use Inovector\Mixpost\SocialProviders\Mastodon\Concerns\ManagesOAuth;
use Inovector\Mixpost\SocialProviders\Mastodon\Concerns\ManagesRateLimit;
use Inovector\Mixpost\SocialProviders\Mastodon\Concerns\ManagesResources;
use Inovector\Mixpost\SocialProviders\Mastodon\Support\MastodonPostOptions;
use Inovector\Mixpost\Contracts\SocialProviderPostOptions;

class MastodonProvider extends SocialProvider
{
    use ManagesRateLimit;
    use ManagesOAuth;
    use ManagesResources;

    public array $callbackResponseKeys = ['code'];

    protected string $apiVersion = 'v1';
    protected string $serverUrl;

    public function __construct(Request $request, string $clientId, string $clientSecret, string $redirectUrl, array $values = [])
    {
        $this->serverUrl = "https://{$values['data']['server']}";

        parent::__construct($request, $clientId, $clientSecret, $redirectUrl, $values);
    }

    public static function service(): string
    {
        return 'mastodon';
    }

    public static function postOptions(): SocialProviderPostOptions
    {
        return new MastodonPostOptions();
    }

    public static function externalPostUrl(AccountResource $accountResource): string
    {
        $server = $accountResource->data['server'] ?? 'undefined';

        return "https://$server/@$accountResource->username/{$accountResource->pivot->provider_post_id}";
    }

    public static function mapErrorMessage(string $key): string
    {
        return match ($key) {
            'access_token_expired' => __('mixpost::account.access_token_expired'),
            'upload_failed' => __('mixpost::service.mastodon.upload_failed'),
            default => $key
        };
    }
}
