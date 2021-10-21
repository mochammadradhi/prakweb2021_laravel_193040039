<?php

namespace Database\Factories;

use App\Models\Post;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Arr;

class PostFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Post::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $rand_img = [
            'journey.jpg',
            'summer.jpg',
            'cold.png',
            'windy.jpg'

        ];

        return [
            'title' => $this->faker->sentence(mt_rand(2, 8)),
            'slug' => $this->faker->slug(),
            'exrt' => $this->faker->paragraph(),
            'img'  => $rand_img[mt_rand(1, 3)],
            'body' => collect($this->faker->paragraphs(mt_rand(5, 10)))->map(fn ($p) => "<p>$p</p>")->implode(''),
            // '<p>' . implode('</p><p>', $this->faker->paragraphs(mt_rand(5, 10))) . '</p>',
            'category_id' => mt_rand(1, 3),
            'user_id' => mt_rand(1, 5)
        ];
    }
}
