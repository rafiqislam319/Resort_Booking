<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ClientDetail extends Model
{
    use HasFactory;

    protected $table = 'client_details';
    protected $fillable = [
        'name',
        'email',
        'phone',
        'details',
        'service',
    ];
    public function files()
    {
        return $this->hasMany(ClientFile::class, 'client_details_id');
    }
}

