<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Tag;

class Posts extends Model
{
    use HasFactory;

        protected $fillable = ['category_id','title_uz','title_ru','body_uz','body_ru','image','slug','view','meta_title','meta_description','meta_keywords', 'is_spacial'];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }


    public function tags()
    {
        return $this->belongsToMany(Tag::class);
    }
}
