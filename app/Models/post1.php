<?php

namespace App\Models;



class Post 
{
    private static $blog_posts = [[
    'title' => 'Judul Kesatu',
    'slug' => 'judul-kesatu',
    'author' => 'Arham',
    'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. 
    Dolor impedit nihil fugit voluptatibus accusantium labore quaerat quos 
    expedita cumque minus aliquam modi inventore praesentium aliquid, quod 
    ratione repellat sapiente totam magni exercitationem pariatur in. Enim, 
    itaque. Pariatur nihil totam voluptatem!'
],[
    'title' => 'Judul Second',
    'slug' => 'judul-second',
    'author' => 'Reezham',
    'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. 
    Dolor impedit nihil fugit voluptatibus accusantium labore quaerat quos 
    expedita cumque minus aliquam modi inventore praesentium aliquid, quod 
    ratione repellat sapiente totam magni exercitationem pariatur in. Enim, 
    itaque. Pariatur nihil totam voluptatem!'
]
    
];

public static function all(){
    return collect(self::$blog_posts);
}

public static function find($slug){
    $posts = static::all();
return $posts->firstWhere('slug',$slug);
}

}
