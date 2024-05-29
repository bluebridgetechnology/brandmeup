<?php

namespace Inovector\Mixpost\SocialProviders\Meta\Support;

use Inovector\Mixpost\Support\SocialProviderResponse;

class FacebookVideoErrorCodes
{
    public static function handleResponse(SocialProviderResponse $response): array
    {
        if (isset($response->status['processing_phase']['errors'])) {
            $errors = $response->status['processing_phase']['errors'];
            $errorMessages = [];

            foreach ($errors as $error) {
                if (isset($error['code'])) {
                    $errorMessages[] = $error['code'];
                }
            }

            return $errorMessages;
        }

        return ['unknown_error'];
    }
}
