<?php

namespace Inovector\Mixpost\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Inovector\Mixpost\Abstracts\User as UserAbstract;
use Illuminate\Notifications\Notifiable;

class User extends UserAbstract
{
    use HasFactory, Notifiable;

    protected $fillable = [
        'name',
        'email',
        'password',
        'type',
        'password_changed'
    ];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
}
