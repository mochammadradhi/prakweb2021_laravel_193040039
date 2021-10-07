<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('home', [
        "title" => "Home"
    ]);
});

Route::get('/about', function () {
    return view(
        'about',
        [
            "title" => "About",
            "name" => "Mochammad Radhi Akbar",
            "email" => "193040039@mail.unpas.ac.id",
            "img" => "radhi.gif"
        ]
    );
});



Route::get('/blog', function () {
    $blog_posts = [
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
    return view('posts', [
        "title" => "Posts",
        "posts" => $blog_posts
    ]);
});

Route::get('posts/{slug}', function ($slug) {
    $blog_posts = [
        [
            "title" => "Journey.",
            "image" => "journey.jpg",
            "slug" => "posts-pertama",
            "author" => "Go Yoon Joung",
            "body" => "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestiae assumenda nulla quam nihil, odit ab ducimus beatae tempora ipsa neque architecto dolorum atque laudantium quod nam nostrum? Eius officia numquam facere vel est, voluptatum magnam magni perspiciatis repellendus impedit tempora facilis, laudantium, quas mollitia! Fugit repellendus explicabo ea rem provident saepe, similique at commodi mollitia sunt, ratione consectetur consequuntur voluptatibus."
        ],
        [
            "title" => "Summer.",
            "image" => "summer.jpg",
            "slug" => "posts-kedua",
            "author" => "Yeji",
            "body" => "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Molestiae assumenda nulla quam nihil, odit ab ducimus beatae tempora ipsa neque architecto dolorum atque laudantium quod nam nostrum? Eius officia numquam facere vel est, voluptatum magnam magni perspiciatis repellendus impedit tempora facilis, laudantium, quas mollitia! Fugit repellendus explicabo ea rem provident saepe, similique at commodi mollitia sunt, ratione consectetur consequuntur voluptatibus."

        ]
    ];
    $new_post = [];
    foreach ($blog_posts as $blogspot) {
        if ($blogspot['slug'] === $slug) {
            $new_post = $blogspot;
        }
    }
    return view('post', [
        "title" => "Single Post",
        "post" => $new_post
    ]);
});
