<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ClientFile extends Model
{
    use HasFactory;
    protected $table = 'client_files';
    protected $fillable = [
        'filenames',
        'file_type',
        'file_path',
    ];

    public function clientDetail()
    {
        return $this->belongsTo(ClientDetail::class, 'client_details_id');
    }

}
