@extends('layouts.site')

@section('title')
    Maqola Sahifasi
@endsection


@section('content')


    <section class="article">
        <div class="container">
            <div class="news__wrapper basic-flex">
                <div class="article__wrapper">
                    <h2 class="article__title">{{ $post['title_' . \App::getLocale()] }}
                    </h2>
                    <span class="article__date basic-flex">{{ $post->created_at->format('H:m') }} / {{ $post->created_at->format('d.m.Y') }}</span>
                    <img src="/images/{{ $post->image }}" alt="Шавкат Мирзиёев строго предупредил хокимов всех уровней
          ">
                    <p class="important-text">
                       {!! $post['body_' . \App::getLocale()] !!}
                    </p>



                    <div class="hashtags basic-flex">
                        @foreach ($post->tags as $tag)
                        <a href="#">#{{ $tag['name_' . \App::getLocale()] }}</a>
                        @endforeach


                    </div>
                </div>
                     @include('sections.popular')
                <div class="related-news">
                    <h3 class="related-news__title">Новости по теме
                    </h3>
                    <div class="related-posts basic-flex">
                        @foreach ($otherPosts as $otherPost)
                        <div class="posts__item">
                            <a href="#">
                                <img src="/images/{{  $otherPost->image }}" alt="Image" class="posts__img">
                                <h2 class="posts__title">{{  $otherPost['title_' . \App::getLocale()] }}</h2>
                                <span class="posts__date">{{ $otherPost->created_at->format('H:m') }} / {{ $otherPost->created_at->format('d.m.Y') }}</span>
                            </a>
                        </div>
                        @endforeach


                    </div>
                </div>
            </div>
        </div>
    </section>


@endsection
