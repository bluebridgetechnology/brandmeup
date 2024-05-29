<?php

namespace Inovector\Mixpost\SocialProviders\Twitter;

use Abraham\TwitterOAuth\TwitterOAuth;
use Illuminate\Http\Request;
use Inovector\Mixpost\Abstracts\SocialProvider;
use Inovector\Mixpost\Contracts\AccountResource;
use Inovector\Mixpost\Services\TwitterService;
use Inovector\Mixpost\SocialProviders\Twitter\Concerns\ManagesConfig;
use Inovector\Mixpost\SocialProviders\Twitter\Concerns\ManagesOAuth;
use Inovector\Mixpost\SocialProviders\Twitter\Concerns\ManagesRateLimit;
use Inovector\Mixpost\SocialProviders\Twitter\Concerns\ManagesResources;

class TwitterProvider extends SocialProvider
{
    use ManagesConfig;
    use ManagesRateLimit;
    use ManagesOAuth;
    use ManagesResources;

    public array $callbackResponseKeys = ['oauth_token', 'oauth_verifier'];

    protected string $apiVersion = '2';

    public TwitterOAuth $connection;

    // Overwrite __construct to use Twitter SDK
    public function __construct(Request $request, string $clientId, string $clientSecret, string $redirectUrl, array $values = [])
    {
        $this->connection = new TwitterOAuth($clientId, $clientSecret);
        $this->connection->setApiVersion($this->apiVersion);
        $this->connection->setTimeouts(10, 60);

        parent::__construct($request, $clientId, $clientSecret, $redirectUrl, $values);
    }

    public static function service(): string
    {
        return TwitterService::class;
    }

    public static function externalPostUrl(AccountResource $accountResource): string
    {
        return "https://twitter.com/$accountResource->username/status/{$accountResource->pivot->provider_post_id}";
    }

    public static function mapErrorMessage(string $key): string
    {
        return match ($key) {
            'access_token_expired' => __('mixpost::account.access_token_expired'),
            'upload_failed' => __('mixpost::service.twitter.upload_failed'),
            default => $key,
        };
    }
}
