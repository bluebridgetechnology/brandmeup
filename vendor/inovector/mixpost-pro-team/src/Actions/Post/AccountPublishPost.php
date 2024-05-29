<?php

namespace Inovector\Mixpost\Actions\Post;

use Inovector\Mixpost\Concerns\UsesSocialProviderManager;
use Inovector\Mixpost\Enums\SocialProviderResponseStatus;
use Inovector\Mixpost\Events\Post\PostPublished;
use Inovector\Mixpost\Events\Post\PostPublishedFailed;
use Inovector\Mixpost\Models\Account;
use Inovector\Mixpost\Models\Post;
use Inovector\Mixpost\Support\PostContentParser;
use Inovector\Mixpost\Support\SocialProviderResponse;

class AccountPublishPost
{
    use UsesSocialProviderManager;

    public function __invoke(Account $account, Post $post): SocialProviderResponse
    {
        $parser = new PostContentParser($account, $post);

        $content = $parser->getVersionContent();

        if (empty($content)) {
            $errors = ['This account version has no content.'];

            $post->insertProviderAccountErrors($account, $errors);

            return new SocialProviderResponse(SocialProviderResponseStatus::ERROR, $errors);
        }

        $params = array_merge($parser->getVersionOptions(), ['url' => $content[0]['url'] ?? '']);

        $response = $this->connectProvider($account)->publishPost(
            text: $parser->formatBody($content[0]['body']),
            media: $parser->formatMedia($content[0]['media']),
            params: $params
        );

        if ($response->hasError()) {
            $post->insertErrors($account, $response->context());

            PostPublishedFailed::dispatch($post);

            return $response;
        }

        $post->insertProviderData($account, $response);

        PostPublished::dispatch($post);

        return $response;
    }
}
