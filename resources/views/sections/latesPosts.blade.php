
    <section class="news">
        <div class="container">
            <div class="news__wrapper basic-flex">
                <div class="column-news">
                    <h2 class="news__title">Последние новости</h2>
                    <ul class="news__list basic-flex">
                        @foreach ($latestPosts as $latestPost)
                        <li class="news__item">
                            <a href="{{ route('postDetail', $latestPost->slug) }}" class="basic-flex news__link">
                                <div class="news-image-wrapper"><img src="/images/{{ $latestPost->image }}" alt="Bottom Img"></div>
                                <div class="news-box basic-flex">
                                    <h4 class="news__title">{{ $latestPost['title_' . \App::getLocale()] }}</h4>
                                    <p class="news__description">

                                        {!!\Str::limit($latestPost['body_' . \App::getLocale()],100)!!}
                                    </p>
                                    <span class="news__date basic-flex">{{ $latestPost->created_at->format('H:m') }} / {{ $latestPost->created_at->format('d.m.Y') }}</span>
                                </div>
                            </a>
                        </li>
                        @endforeach


                    </ul>
                    <button type="button" class="btn load-more-btn">Больше новостей</button>
                </div>
                <div class="popular-news">
                    <div class="popular-news-wrapper">
                        <h4 class="popular-news__title">Cамые популярные новости</h4>
                        <ul class="popular-news__list">
                            @foreach ($popularPosts as $popularPost)
                            <li class="popular-news__item">
                                <a href="#">
                                    <p class="popular-news__description"> {!!\Str::limit($popularPost['body_' . \App::getLocale()],100)!!}</p>
                                    <span class="popular-news__date">{{ $popularPost->created_at->format('H:m') }} / {{ $popularPost->created_at->format('d.m.Y') }}</span>
                                </a>
                            </li>

                            @endforeach

                        </ul>
                    </div>
                    <div class="ads-placeholder">
                        <h4>ADS PLACEHOLDER</h4>
                    </div>
                </div>
            </div>
        </div>
    </section>

