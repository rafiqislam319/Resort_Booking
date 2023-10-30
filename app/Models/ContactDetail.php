<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ContactDetail extends Model
{
    use HasFactory;
    protected $table = 'contact_details';
    protected $fillable = [
        'name',
        'email',
        'phone',
        'details',
        'service',
        'filenames',
    ];
    public function setFilenamesAttribute($value){
        $this->attributes['filenames'] = json_encode($value);
}
}
