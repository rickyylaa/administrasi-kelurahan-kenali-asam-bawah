<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Surat extends Model
{
    use HasFactory;

    protected $guarded = ['id'];
    protected $table = "surats";

    public function warga()
    {
        return $this->belongsTo(Warga::class);
    }
}
