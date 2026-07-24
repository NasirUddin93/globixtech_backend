<?php

namespace App\Models;

class Admin extends User
{
    protected static function booted(): void
    {
        static::creating(function (Admin $admin) {
            $admin->type = 'admin';
        });
    }

    public function newQuery()
    {
        return parent::newQuery()->where('type', 'admin');
    }
}
