<?php

namespace Inovector\Mixpost\Rules;

use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\Translation\Translator;
use Illuminate\Contracts\Validation\Rule;
use Inovector\Mixpost\Enums\ResourceStatus;

class ResourceStatusRule implements Rule
{
    public function passes($attribute, $value): bool
    {
        return in_array($value, [ResourceStatus::DISABLED->value, ResourceStatus::ENABLED->value]);
    }

    public function message(): array|string|Translator|Application|null
    {
        return trans('validation.not_in');
    }
}
