
@extends('layouts.site')

@section('title')
    Qidiruv
@endsection

@section('content')




    <section class="news">
        <div class="container">
            <div class="news__wrapper basic-flex">
                <div class="column-news">
                    @if (count($posts) > 0)
                    <h2 class="news__title">{{ $key  }} so'zi bo'yicha qidiruv natijalari {{ count($posts) }}</h2>
                    @endif
                    <h1>{{ $key }}</h1> <h3>bu so'z orqali malumot topilmadi.</h3>

                    <ul class="news__list basic-flex">
                        @foreach ($posts as $post)
                        <li class="news__item">
                            <a href="#" class="basic-flex news__link">
                                <div class="news-image-wrapper"><img src="/images/{{ $post->image }}" alt="Bottom Img"></div>
                                    <div class="news-box basic-flex">
                                    <h4 class="news__title">{{ $post['title_' . \App::getLocale()] }}</h4>
                                    <p class="news__description">   {!!\Str::limit($post['body_' . \App::getLocale()],100)!!}
                                    </p>
                                     <span class="news__date basic-flex">{{ $post->created_at->format('H:m') }} / {{ $post->created_at->format('d.m.Y') }}</span>
                                </div>
                            </a>
                        </li>
                        @endforeach


                    </ul>
                    <button type="button" class="btn load-more-btn">Больше новостей</button>
                </div>
                @include('sections.popular')
            </div>
        </div>
    </section>



@endsection
