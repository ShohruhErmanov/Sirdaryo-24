<section class="posts">
    <div class="container">
        <ul class="posts__list basic-flex">
            @foreach ($spacialPosts as $spacialPost)
                <li class="posts__item">
                    <a href="{{ route('postDetail', $spacialPost->slug) }}">
                        <img src="/images/{{  $spacialPost->image }}" alt="Image" class="posts__img">
                        <h2 class="posts__title">{{  $spacialPost['title_' . \App::getLocale()] }}</h2>
                        <span class="posts__date">{{ $spacialPost->created_at->format('H:m') }} / {{ $spacialPost->created_at->format('d.m.Y') }}</span>
                    </a>
                </li>
            @endforeach


        </ul>
    </div>
</section>

<div class="container">
    <div class="notification basic-flex">
        <div class="notification__text basic-flex">
            <h3>Хотите узнать новости первыми? подключите уведомления!
            </h3>
        </div>
        <button type="button" class="notification__button btn">
            Включит уведомления!
        </button>
    </div>
</div>


<div class="apps-block container basic-flex">
    <div class="apps-block__image"></div>
    <div class="apps-block__content">
        <h4>Всегда будьте в курсе последних новостей!</h4>
        <p>Установите мобильное приложение NAMANGANLIKLAR24 и все новости в вашем кармане!</p>
    </div>
    <div class="apps-block__links basic-flex">
        <div class="links__item">
            <a href="#"><img src="img/googleplay.png" alt="googleplay"></a>
        </div>
        <div class="links__item">
            <a href="#"><img src="img/appstore.png" alt="googleplay"></a>
        </div>
    </div>
</div>
