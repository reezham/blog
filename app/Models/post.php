<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
use PharIo\Manifest\Author;

class post extends Model
{
    use HasFactory, Sluggable;

    //table boleh diisi
    protected $fillable = ['title','excerpt','body'];

    //tidak boleh diisi
    protected $guarded = ['id'];
    protected $with = ['category','user'];

    public function scopeFilter($query, array $filters){
        // if(isset($filters['search']) ? $filters['search'] : false){
        //     return $query->where('title','like','%'.$filters['search'].'%')->orWhere('body','like','%'.$filters['search'].'%');
        // }

        $query->when($filters['search'] ??  false, function($query, $search){
            return $query->where('title','like','%'.$search.'%')->orWhere('body','like','%'.$search.'%');
        });

        $query->when($filters['category'] ??  false, function($query, $category){
            return $query->whereHas('category', function($query) use($category){
                $query->where('slug',$category);
            });
        });

        $query->when($filters['user'] ??  false, fn($query, $user)=>
            $query->whereHas('user', fn($query)=>
                $query->where('username', $user)
            )
        );
        
    }

    public function category(){
        return $this->belongsTo(Category::class);
    }

    public function user(){
        return $this->belongsTo(User::class);
    }

    public function getRouteKeyName(){
        return 'slug';
    }

    public function sluggable():array
    {
     return [
        'slug' => [
            'source' => 'title'
        ]
        ];   
    }

}
