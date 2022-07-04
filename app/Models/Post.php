<?php

namespace App\Models;

use App\Models\Category;
use Illuminate\Database\Eloquent\Model;

use Illuminate\Database\Eloquent\Factories\HasFactory;


class Post extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'slug','excerpt', 'body', 'category_id','foto','published_at'];
    protected $with = ['category'];

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id', 'id');
    }

}
