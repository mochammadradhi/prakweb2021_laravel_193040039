<?php

namespace App\Models;

class Post
{
    private static $blog_post = [
        [
            "title" => "Journey.",
            "img" => "journey.jpg",
            "slug" => "posts-pertama",
            "author" => "Go Yoon Joung",
            "body" => "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestiae assumenda nulla quam nihil, odit ab ducimus beatae tempora ipsa neque architecto dolorum atque laudantium quod nam nostrum? Eius officia numquam facere vel est, voluptatum magnam magni perspiciatis repellendus impedit tempora facilis, laudantium, quas mollitia! Fugit repellendus explicabo ea rem provident saepe, similique at commodi mollitia sunt, ratione consectetur consequuntur voluptatibus."
        ],
        [
            "title" => "Summer.",
            "img" => "summer.jpg",
            "slug" => "posts-kedua",
            "author" => "Yeji",
            "body" => "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestiae assumenda nulla quam nihil, odit ab ducimus beatae tempora ipsa neque architecto dolorum atque laudantium quod nam nostrum? Eius officia numquam facere vel est, voluptatum magnam magni perspiciatis repellendus impedit tempora facilis, laudantium, quas mollitia! Fugit repellendus explicabo ea rem provident saepe, similique at commodi mollitia sunt, ratione consectetur consequuntur voluptatibus."

        ]
    ];

    public static function all()
    {
        return collect(self::$blog_post);
    }

    public static function find($slug)
    {
        $posts = static::all();
        // $new_post = [];
        // foreach ($posts as $p) {
        //     if ($p['slug'] === $slug) {
        //         $new_post = $p;
        //     }
        // }
        return $posts->firstWhere('slug', $slug);
    }
}
