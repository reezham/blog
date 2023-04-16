<?php

namespace Database\Seeders;
use App\Models\Post;
use App\Models\Category;
use App\Models\User;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run()
    {
        

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        // User::create([
        //     'name' => 'Arham',
        //     'email' => 'dfgh@fgh.com',
        //     'password' => bcrypt(12345),
        // ]);

        // User::create([
        //     'name' => 'Reezham',
        //     'email' => 'rtyui@fgh.com',
        //     'password' => bcrypt('qwerty'),
        // ]);

        User::factory(5)->create();

        Category::create([
            'name' => 'Web Development',
            'slug' => 'web-development',
            
        ]);

        Category::create([
            'name' => 'Programing',
            'slug' => 'programing',
            
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal',
            
        ]);

        Category::create([
            'name' => 'UI/UX',
            'slug' => 'ui/ux',
            
        ]);

        Post::factory(30)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptates deleniti cum at, porro maxime minima explicabo neque repellendus adipisci accusantium.',
        //     'body' => '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptates deleniti cum at, porro maxime minima explicabo neque repellendus adipisci accusantium. Vitae modi ex tenetur distinctio, tempora, aspernatur nihil possimus maiores fugit deleniti cum voluptas perferendis quo. Laboriosam, quia.</p><p> Magni, fuga laboriosam? Et facilis vero, tempora ullam quisquam magnam architecto praesentium, molestiae nostrum fugit fugiat perferendis! Nisi mollitia dicta rem repellendus optio expedita, voluptas sint cumque rerum dolorum neque reiciendis quis consectetur dolores necessitatibus recusandae. Placeat, natus! Quo ipsam assumenda ad corrupti earum aperiam exercitationem sunt ullam libero. Laudantium sint iusto, eligendi eos culpa, cumque temporibus voluptatum dolor, molestias deleniti laboriosam.</p>',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptates deleniti cum at, porro maxime minima explicabo neque repellendus adipisci accusantium.',
        //     'body' => '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptates deleniti cum at, porro maxime minima explicabo neque repellendus adipisci accusantium. Vitae modi ex tenetur distinctio, tempora, aspernatur nihil possimus maiores fugit deleniti cum voluptas perferendis quo. Laboriosam, quia.</p><p> Magni, fuga laboriosam? Et facilis vero, tempora ullam quisquam magnam architecto praesentium, molestiae nostrum fugit fugiat perferendis! Nisi mollitia dicta rem repellendus optio expedita, voluptas sint cumque rerum dolorum neque reiciendis quis consectetur dolores necessitatibus recusandae. Placeat, natus! Quo ipsam assumenda ad corrupti earum aperiam exercitationem sunt ullam libero. Laudantium sint iusto, eligendi eos culpa, cumque temporibus voluptatum dolor, molestias deleniti laboriosam.</p>',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Postingan Pertama',
        //     'slug' => 'postingan-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptates deleniti cum at, porro maxime minima explicabo neque repellendus adipisci accusantium.',
        //     'body' => '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptates deleniti cum at, porro maxime minima explicabo neque repellendus adipisci accusantium. Vitae modi ex tenetur distinctio, tempora, aspernatur nihil possimus maiores fugit deleniti cum voluptas perferendis quo. Laboriosam, quia.</p><p> Magni, fuga laboriosam? Et facilis vero, tempora ullam quisquam magnam architecto praesentium, molestiae nostrum fugit fugiat perferendis! Nisi mollitia dicta rem repellendus optio expedita, voluptas sint cumque rerum dolorum neque reiciendis quis consectetur dolores necessitatibus recusandae. Placeat, natus! Quo ipsam assumenda ad corrupti earum aperiam exercitationem sunt ullam libero. Laudantium sint iusto, eligendi eos culpa, cumque temporibus voluptatum dolor, molestias deleniti laboriosam.</p>',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
        
    }
}
