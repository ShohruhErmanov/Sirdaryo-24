<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Posts;

class Category extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function posts () {
        return $this->hasMany(Posts::class);
    }
}
