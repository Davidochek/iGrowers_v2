<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Crop extends Model
{
    use HasFactory;
     public function pests()
    {
        return $this->belongsToMany(Pests::class);
    }

     public function diseases()
    {
        return $this->belongsToMany(Diseases::class);
    }
}
