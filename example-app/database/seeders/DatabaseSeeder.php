<?php

namespace Database\Seeders;

use Illuminate\Support\Arr;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::factory(5)->create();
        // User::Create([
        //     'name' => 'Mochammad Radhi Akbar',
        //     'email' => '193040039@mail.unpas.ac.id',
        //     'password' => bcrypt('193040039')

        // ]);

        // User::Create([
        //     'name' => 'Go Yoon Jung',
        //     'email' => 'goyoonjung@gmail.com',
        //     'password' => bcrypt('goyoonjung')

        // ]);

        // User::Create([
        //     'name' => 'Son Na-Eun',
        //     'email' => 'sonnaeun27@gmail.com',
        //     'password' => bcrypt('naeuni')

        // ]);

        // User::Create([
        //     'name' => 'Yeri',
        //     'email' => 'Yeri01@gmail.com',
        //     'password' => bcrypt('Yeri')

        // ]);

        Category::create([
            'name' => 'Novel',
            'slug' => 'novel'
        ]);

        Category::create([
            'name' => 'Blog',
            'slug' => 'blog'
        ]);

        Category::create([
            'name' => 'Personal Blog',
            'slug' => 'personal-blog'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Journey.',
        //     'slug' => 'journey.',
        //     'exrt' => 'Lorem ipsum pertama',
        //     'img'  => 'journey.jpg',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia ipsum sequi, repellendus, vitae quod asperiores, blanditiis architecto incidunt voluptatem temporibus impedit provident nihil placeat</p><p>dolorum recusandae in aliquam! Recusandae rerum repudiandae distinctio iusto tenetur officia molestias temporibus voluptates dolore, eos impedit, nisi illum at non qui. Nisi cum nulla, magnam, saepe illo molestias distinctio commodi fugiat minima eius sint aliquam repellat quam! Magnam libero mollitia harum sequi facere excepturi nulla cum corporis voluptate debitis ducimus id suscipit veritatis quas quos aut, repellat alias dicta pariatur doloribus non a accusamus aliquam magni. Quidem unde in non repudiandae tempora eligendi pariatur quas explicabo ratione quasi doloribus, error voluptatibus modi aliquid nobis fugiat facilis sequi! Error nulla necessitatibus veritatis eos nesciunt dignissimos quasi!</p>',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Summer.',
        //     'slug' => 'summmer.',
        //     'exrt' => 'Lorem ipsum ke-dua',
        //     'img'  => 'summer.jpg',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia ipsum sequi, repellendus, vitae quod asperiores, blanditiis architecto incidunt voluptatem temporibus impedit provident nihil placeat</p><p>dolorum recusandae in aliquam! Recusandae rerum repudiandae distinctio iusto tenetur officia molestias temporibus voluptates dolore, eos impedit, nisi illum at non qui. Nisi cum nulla, magnam, saepe illo molestias distinctio commodi fugiat minima eius sint aliquam repellat quam! Magnam libero mollitia harum sequi facere excepturi nulla cum corporis voluptate debitis ducimus id suscipit veritatis quas quos aut, repellat alias dicta pariatur doloribus non a accusamus aliquam magni. Quidem unde in non repudiandae tempora eligendi pariatur quas explicabo ratione quasi doloribus, error voluptatibus modi aliquid nobis fugiat facilis sequi! Error nulla necessitatibus veritatis eos nesciunt dignissimos quasi!</p>',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);

        // Post::create([
        //     'title' => 'Windy.',
        //     'slug' => 'windy.',
        //     'exrt' => 'Lorem ipsum ke-tiga',
        //     'img'  => 'windy.jpg',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia ipsum sequi, repellendus, vitae quod asperiores, blanditiis architecto incidunt voluptatem temporibus impedit provident nihil placeat</p><p>dolorum recusandae in aliquam! Recusandae rerum repudiandae distinctio iusto tenetur officia molestias temporibus voluptates dolore, eos impedit, nisi illum at non qui. Nisi cum nulla, magnam, saepe illo molestias distinctio commodi fugiat minima eius sint aliquam repellat quam! Magnam libero mollitia harum sequi facere excepturi nulla cum corporis voluptate debitis ducimus id suscipit veritatis quas quos aut, repellat alias dicta pariatur doloribus non a accusamus aliquam magni. Quidem unde in non repudiandae tempora eligendi pariatur quas explicabo ratione quasi doloribus, error voluptatibus modi aliquid nobis fugiat facilis sequi! Error nulla necessitatibus veritatis eos nesciunt dignissimos quasi!</p>',
        //     'category_id' => 1,
        //     'user_id' => 3
        // ]);

        // Post::create([
        //     'title' => 'Cold.',
        //     'slug' => 'cold.',
        //     'exrt' => 'Lorem ipsum ke-empat',
        //     'img'  => 'cold.png',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia ipsum sequi, repellendus, vitae quod asperiores, blanditiis architecto incidunt voluptatem temporibus impedit provident nihil placeat</p><p>dolorum recusandae in aliquam! Recusandae rerum repudiandae distinctio iusto tenetur officia molestias temporibus voluptates dolore, eos impedit, nisi illum at non qui. Nisi cum nulla, magnam, saepe illo molestias distinctio commodi fugiat minima eius sint aliquam repellat quam! Magnam libero mollitia harum sequi facere excepturi nulla cum corporis voluptate debitis ducimus id suscipit veritatis quas quos aut, repellat alias dicta pariatur doloribus non a accusamus aliquam magni. Quidem unde in non repudiandae tempora eligendi pariatur quas explicabo ratione quasi doloribus, error voluptatibus modi aliquid nobis fugiat facilis sequi! Error nulla necessitatibus veritatis eos nesciunt dignissimos quasi!</p>',
        //     'category_id' => 1,
        //     'user_id' => 4
        // ]);
    }
}
