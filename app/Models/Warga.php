<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Warga extends Model
{
    use HasFactory;

    protected $guarded = ['id'];
    protected $table = "wargas";

    public function surat()
    {
        return $this->hasMany(Surat::class);
    }
}
