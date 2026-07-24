<?php

namespace App\Models;

class Customer extends User
{
    protected static function booted(): void
    {
        static::creating(function (Customer $customer) {
            $customer->type = 'customer';
        });
    }

    public function newQuery()
    {
        return parent::newQuery()->where('type', 'customer');
    }
}
