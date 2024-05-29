<?php

namespace Inovector\Mixpost\Events\Account;

use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;
use Inovector\Mixpost\Contracts\WebhookEvent;
use Inovector\Mixpost\Http\Api\Resources\AccountResource;
use Inovector\Mixpost\Models\Account;

class AccountUpdated implements WebhookEvent
{
    use Dispatchable, SerializesModels;

    public Account $account;

    public function __construct(Account $account)
    {
        $this->account = $account;
    }

    public static function name(): string
    {
        return 'account.updated';
    }

    public static function nameLocalized(): string
    {
        return __('mixpost::webhook.event.account.updated');
    }

    public function payload(): array
    {
        return (new AccountResource($this->account))->resolve();
    }
}
