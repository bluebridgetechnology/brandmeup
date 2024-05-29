<?php

namespace Inovector\Mixpost\Http\Base\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Arr;
use Inovector\Mixpost\Contracts\AccountResource as AccountResourceContract;

class AccountResource extends JsonResource implements AccountResourceContract
{
    public static $wrap = null;

    public function toArray($request): array
    {
        return [
            'id' => $this->id,
            'uuid' => $this->uuid,
            'name' => $this->name . ($this->suffix() ? " ({$this->suffix()})" : ''),
            'suffix' => $this->suffix(),
            'username' => $this->username,
            'image' => $this->image(),
            'provider' => $this->provider,
            'provider_options' => $this->providerOptions(),
            'relationships' => $this->relationships(),
            'data' => $this->data,
            'authorized' => $this->authorized,
            'created_at' => $this->created_at->diffForHumans(),
            'external_url' => $this->whenPivotLoaded('mixpost_post_accounts', function () {
                if (!$this->pivot->provider_post_id) {
                    return null;
                }

                return $this->getExternalPostUrl();
            }),
            'errors' => $this->whenPivotLoaded('mixpost_post_accounts', function () {
                return $this->errors();
            })
        ];
    }

    protected function errors(): array
    {
        if ($this->pivot->errors) {
            $errors = Arr::wrap(json_decode($this->pivot->errors, true));

            return array_map(function ($error) {
                if (is_string($error) && str_starts_with($error, '$t:')) {
                    $translationKey = substr($error, 3);

                    return __($translationKey);
                }

                if (is_string($error)) {
                    return $this->getErrorMessage($error);
                }

                return $error;
            }, $errors);
        }
        return [];
    }

    protected function getExternalPostUrl(): ?string
    {
        if ($this->resource->getProviderClass()) {
            return $this->resource->getProviderClass()::externalPostUrl($this);
        }

        return '#';
    }

    protected function getErrorMessage(string $key): string
    {
        if ($this->resource->getProviderClass()) {
            return $this->resource->getProviderClass()::mapErrorMessage($key);
        }

        return $key;
    }
}
