<?php

use Illuminate\Database\Seeder;

class BlogsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('blogs')->truncate();

        $blogs = [
            [
                'title'=>'Titulo do Artigo1',
                'subtitle'=>'As linhas que nos conduzem a paz Simplesmente fascinate1',
                'banner'=>'blogs/Alentejo.png',
                'thumbnail'=>'blogs/image-1.png',
                'content'=>'',
                'created_at' => date("Y-m-d H:i:s"),
                'updated_at' => date("Y-m-d H:i:s"),
            ],
            [
                'title'=>'Titulo do Artigo2',
                'subtitle'=>'As linhas que nos conduzem a paz Simplesmente fascinate2',
                'banner'=>'blogs/Alentejo.png',
                'thumbnail'=>'blogs/image-2.png',
                'content'=>'',
                'created_at' => date("Y-m-d H:i:s"),
                'updated_at' => date("Y-m-d H:i:s"),
            ],
            [
                'title'=>'Titulo do Artigo3',
                'subtitle'=>'As linhas que nos conduzem a paz Simplesmente fascinat3',
                'banner'=>'blogs/Alentejo.png',
                'thumbnail'=>'blogs/image-3.png',
                'content'=>'',
                'created_at' => date("Y-m-d H:i:s"),
                'updated_at' => date("Y-m-d H:i:s"),
            ],
            [
                'title'=>'Titulo do Artigo4',
                'subtitle'=>'As linhas que nos conduzem a paz Simplesmente fascinate4',
                'banner'=>'blogs/Alentejo.png',
                'thumbnail'=>'blogs/image-4.png',
                'content'=>'',
                'created_at' => date("Y-m-d H:i:s"),
                'updated_at' => date("Y-m-d H:i:s"),
            ],
            [
                'title'=>'Titulo do Artigo5',
                'subtitle'=>'As linhas que nos conduzem a paz Simplesmente fascinate5',
                'banner'=>'blogs/Alentejo.png',
                'thumbnail'=>'blogs/image-5.png',
                'content'=>'',
                'created_at' => date("Y-m-d H:i:s"),
                'updated_at' => date("Y-m-d H:i:s"),
            ],
            [
                'title'=>'Titulo do Artigo6',
                'subtitle'=>'As linhas que nos conduzem a paz Simplesmente fascinate6',
                'banner'=>'blogs/Alentejo.png',
                'thumbnail'=>'blogs/image-6.png',
                'content'=>'',
                'created_at' => date("Y-m-d H:i:s"),
                'updated_at' => date("Y-m-d H:i:s"),
            ],
            [
                'title'=>'Titulo do Artigo7',
                'subtitle'=>'As linhas que nos conduzem a paz Simplesmente fascinat7',
                'banner'=>'blogs/Alentejo.png',
                'thumbnail'=>'blogs/image-7.png',
                'content'=>'',
                'created_at' => date("Y-m-d H:i:s"),
                'updated_at' => date("Y-m-d H:i:s"),
            ],
            [
                'title'=>'Titulo do Artigo8',
                'subtitle'=>'As linhas que nos conduzem a paz Simplesmente fascinate8',
                'banner'=>'blogs/Alentejo.png',
                'thumbnail'=>'blogs/image-8.png',
                'content'=>'',
                'created_at' => date("Y-m-d H:i:s"),
                'updated_at' => date("Y-m-d H:i:s"),
            ],
            [
                'title'=>'Titulo do Artigo9',
                'subtitle'=>'As linhas que nos conduzem a paz Simplesmente fascinate9',
                'banner'=>'blogs/Alentejo.png',
                'thumbnail'=>'blogs/image-9.png',
                'content'=>'',
                'created_at' => date("Y-m-d H:i:s"),
                'updated_at' => date("Y-m-d H:i:s"),
            ],
            [
                'title'=>'Titulo do Artigo10',
                'subtitle'=>'As linhas que nos conduzem a paz Simplesmente fascinate10',
                'banner'=>'blogs/Alentejo.png',
                'thumbnail'=>'blogs/image-1.png',
                'content'=>'',
                'created_at' => date("Y-m-d H:i:s"),
                'updated_at' => date("Y-m-d H:i:s"),
            ],
            [
                'title'=>'Titulo do Artigo11',
                'subtitle'=>'As linhas que nos conduzem a paz Simplesmente fascinate11',
                'banner'=>'blogs/Alentejo.png',
                'thumbnail'=>'blogs/image-2.png',
                'content'=>'',
                'created_at' => date("Y-m-d H:i:s"),
                'updated_at' => date("Y-m-d H:i:s"),
            ],
            [
                'title'=>'Titulo do Artigo12',
                'subtitle'=>'As linhas que nos conduzem a paz Simplesmente fascinate12',
                'banner'=>'blogs/Alentejo.png',
                'thumbnail'=>'blogs/image-3.png',
                'content'=>'',
                'created_at' => date("Y-m-d H:i:s"),
                'updated_at' => date("Y-m-d H:i:s"),
            ],
            [
                'title'=>'Titulo do Artigo13',
                'subtitle'=>'As linhas que nos conduzem a paz Simplesmente fascinate13',
                'banner'=>'blogs/Alentejo.png',
                'thumbnail'=>'blogs/image-4.png',
                'content'=>'',
                'created_at' => date("Y-m-d H:i:s"),
                'updated_at' => date("Y-m-d H:i:s"),
            ],
        ];

        DB::table('blogs')->insert($blogs);
    }
}
