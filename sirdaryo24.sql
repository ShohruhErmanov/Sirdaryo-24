-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 01 2023 г., 09:21
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `sirdaryo24`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name_uz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name_uz`, `name_ru`, `slug`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'O\'zbekiston', 'Узбекистана', 'ozbekiston', NULL, NULL, NULL, '2023-07-09 06:33:54', '2023-07-09 06:33:54'),
(2, 'Jahon', 'Мир', 'jahon', NULL, NULL, NULL, '2023-07-09 06:34:09', '2023-07-09 06:34:09'),
(3, 'Iqtisodiyot', 'Экономика', 'iqtisodiyot', NULL, NULL, NULL, '2023-07-09 06:34:36', '2023-07-09 06:34:36'),
(4, 'Siyosat', 'Политика', 'siyosat', NULL, NULL, NULL, '2023-07-09 06:34:58', '2023-07-09 06:34:58'),
(5, 'Jamiyat', 'Общество', 'jamiyat', NULL, NULL, NULL, '2023-07-09 06:35:27', '2023-07-09 06:35:27'),
(6, 'Технологии', 'Технологии', 'texnologii', NULL, NULL, NULL, '2023-07-09 06:35:53', '2023-07-09 06:35:53'),
(7, 'Sport', 'Спорт', 'sport', NULL, NULL, NULL, '2023-07-09 06:36:10', '2023-07-09 06:36:37'),
(8, 'Madaniyat', 'Культура', 'madaniyat', NULL, NULL, NULL, '2023-07-09 06:37:08', '2023-07-09 06:37:08'),
(9, 'Hodisalar', 'Происшествия', 'hodisalar', NULL, NULL, NULL, '2023-07-09 06:37:31', '2023-07-09 06:37:31');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 2),
(29, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(30, '2023_06_16_162638_create_categories_table', 2),
(31, '2023_06_16_164349_create_posts_table', 2),
(32, '2023_06_16_165408_create_tags_table', 2),
(33, '2023_06_24_085920_create_post_tag_table', 2),
(34, '2023_07_09_042159_add_is_spacial_column_to_posts_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `title_uz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_uz` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_ru` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` int NOT NULL DEFAULT '0',
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_spacial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title_uz`, `title_ru`, `body_uz`, `body_ru`, `image`, `slug`, `view`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`, `is_spacial`) VALUES
(1, 1, 'Sarob uchun to‘lov – O‘zbekistonda uy-joy xaridorlarini qanday himoya qilish mumkin?', 'Италияга ташриф: оддий ҳамкорликдан жипс иқтисодий шериклик сари дадил қадам', '<p>Toshkent shahrida mingdan ortiq fuqaro &ldquo;novostroyka&rdquo; uchun pul to&lsquo;lab, uysiz va pulsiz qoldi. Bu quruvchi bilan shartnoma tuzib, yakunda mojaroga duch kelingan ilk holat emas: quruvchiga bergan pulini qaytarib olish ilinjida sudma-sud yurib, sarson bo&lsquo;layotganlar qancha. Mazkur holatlar ko&lsquo;chmas mulk bozoridagi munosabatlar qonunchilik darajasida islohotga muhtoj ekanligini, O&lsquo;zbekistonda eskrou tizimini joriy qilish davri kelganligini ko&lsquo;rsatadi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>O&lsquo;zbekistonda qurilish sohasi shiddat bilan rivojlanib bormoqda. Davlat statistika qo&lsquo;mitasi ma&rsquo;lumotlariga&nbsp;<a href=\"https://stat.uz/uz/rasmiy-statistika/construction-2\" target=\"_blank\">ko&lsquo;ra</a>, so&lsquo;nggi 10 yil ichida qurilish ishlari hajmi 11 barobar ko&lsquo;paygan. 2012 yilda 11,7 trln so&lsquo;mlik qurilish ishlari bajarilgan bo&lsquo;lsa, 2022 yilda bu ko&lsquo;rsatkich 130,7 trln so&lsquo;mdan oshgan.</p>', '<p>Toshkent shahrida mingdan ortiq fuqaro &ldquo;novostroyka&rdquo; uchun pul to&lsquo;lab, uysiz va pulsiz qoldi. Bu quruvchi bilan shartnoma tuzib, yakunda mojaroga duch kelingan ilk holat emas: quruvchiga bergan pulini qaytarib olish ilinjida sudma-sud yurib, sarson bo&lsquo;layotganlar qancha. Mazkur holatlar ko&lsquo;chmas mulk bozoridagi munosabatlar qonunchilik darajasida islohotga muhtoj ekanligini, O&lsquo;zbekistonda eskrou tizimini joriy qilish davri kelganligini ko&lsquo;rsatadi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>O&lsquo;zbekistonda qurilish sohasi shiddat bilan rivojlanib bormoqda. Davlat statistika qo&lsquo;mitasi ma&rsquo;lumotlariga&nbsp;<a href=\"https://stat.uz/uz/rasmiy-statistika/construction-2\" target=\"_blank\">ko&lsquo;ra</a>, so&lsquo;nggi 10 yil ichida qurilish ishlari hajmi 11 barobar ko&lsquo;paygan. 2012 yilda 11,7 trln so&lsquo;mlik qurilish ishlari bajarilgan bo&lsquo;lsa, 2022 yilda bu ko&lsquo;rsatkich 130,7 trln so&lsquo;mdan oshgan.</p>', '1688895882.jpg', 'sarob-uchun-tolov-ozbekistonda-uy-joy-xaridorlarini-qanday-himoya-qilish-mumkin', 2, NULL, NULL, NULL, '2023-07-09 06:44:42', '2023-07-09 06:45:46', '1'),
(2, 4, 'O‘zbekistonda navbatdan tashqari prezidentlik saylovi boshlandi', 'O‘zbekistonda navbatdan tashqari prezidentlik saylovi boshlandi', '<p>Soat 8:00 da O&lsquo;zbekistonda muddatidan ilgari prezidentlik saylovi bo&lsquo;yicha saylov uchastkalari ochildi. Uchastkalarda soat 20:00 gacha ovoz berish mumkin.</p>\r\n\r\n<p>Bu safar nomzodlar soni besh emas, to&lsquo;rt nafar, chunki ikki&nbsp;partiya bitta nomzodni ilgari surgan. Nomzodlar:</p>\r\n\r\n<ul>\r\n	<li>Xalq-demokratik</li>\r\n</ul>', '<p>Soat 8:00 da O&lsquo;zbekistonda muddatidan ilgari prezidentlik saylovi bo&lsquo;yicha saylov uchastkalari ochildi. Uchastkalarda soat 20:00 gacha ovoz berish mumkin.</p>\r\n\r\n<p>Bu safar nomzodlar soni besh emas, to&lsquo;rt nafar, chunki ikki&nbsp;partiya bitta nomzodni ilgari surgan. Nomzodlar:</p>\r\n\r\n<ul>\r\n	<li>Xalq-demokratik</li>\r\n</ul>', '1688896062.jpg', 'ozbekistonda-navbatdan-tashqari-prezidentlik-saylovi-boshlandi', 3, NULL, NULL, NULL, '2023-07-09 06:46:57', '2023-07-10 06:15:04', '1'),
(3, 1, 'Qabul va OTMda o‘qish jarayonlariga oid yangi qaror qabul qilindi. Qanday yangiliklar bor?', 'Qabul va OTMda o‘qish jarayonlariga oid yangi qaror qabul qilindi. Qanday yangiliklar bor?', '<p>3 iyul kuni prezident &ldquo;Ma&rsquo;muriy islohotlar doirasida oliy ta&rsquo;lim, fan va innovatsiyalar sohasida davlat boshqaruvini samarali tashkil qilish chora-tadbirlari to&lsquo;g&lsquo;risida&rdquo;gi qarorini&nbsp;<a href=\"https://t.me/huquqiyaxborot_lotin/5754\" target=\"_blank\">imzoladi</a>. Unda ko&lsquo;rsatilgan eng muhim o&lsquo;zgarishlardan biri 2024/2025 o&lsquo;quv yilidan abituriyentlar kirish imtihonlarida ishtirok etib, keyin yo&lsquo;nalish tanlaydi. Yangi tartibning abituriyentga beradigan afzalligi haqida Bilim va malakalarni baholash agentligi bo&lsquo;lim boshlig&lsquo;i Hasan Sobirov tushuntirish berdi.</p>', '<p>3 iyul kuni prezident &ldquo;Ma&rsquo;muriy islohotlar doirasida oliy ta&rsquo;lim, fan va innovatsiyalar sohasida davlat boshqaruvini samarali tashkil qilish chora-tadbirlari to&lsquo;g&lsquo;risida&rdquo;gi qarorini&nbsp;<a href=\"https://t.me/huquqiyaxborot_lotin/5754\" target=\"_blank\">imzoladi</a>. Unda ko&lsquo;rsatilgan eng muhim o&lsquo;zgarishlardan biri 2024/2025 o&lsquo;quv yilidan abituriyentlar kirish imtihonlarida ishtirok etib, keyin yo&lsquo;nalish tanlaydi. Yangi tartibning abituriyentga beradigan afzalligi haqida Bilim va malakalarni baholash agentligi bo&lsquo;lim boshlig&lsquo;i Hasan Sobirov tushuntirish berdi.</p>', '1688896200.jpg', 'qabul-va-otmda-oqish-jarayonlariga-oid-yangi-qaror-qabul-qilindi-qanday-yangiliklar-bor', 5, NULL, NULL, NULL, '2023-07-09 06:50:00', '2023-07-09 07:20:27', '1'),
(4, 2, 'NATO Rossiya bilan chegara yaqinidagi sammitga tayyorlanmoqda. Patriot tizimlari Kaliningradga qaratib qo‘yilgan', 'NATO Rossiya bilan chegara yaqinidagi sammitga tayyorlanmoqda. Patriot tizimlari Kaliningradga qaratib qo‘yilgan', '<p>11&ndash;12 iyul kunlari Vilnyusda bo&lsquo;lib o&lsquo;tadigan NATO sammiti arafasida Shimoliy Atlantika alyansi rahbariyati Litva poytaxtini &laquo;blokka a&rsquo;zo mamlakatlarning eng ilg&lsquo;or qurollari bilan himoyalangan haqiqiy qal&rsquo;aga aylantirish&raquo; to&lsquo;g&lsquo;risida qayg&lsquo;urmoqda&raquo;, deb yozadi Reuters agentligi 8 iyul kungi&nbsp;<a href=\"https://www.reuters.com/world/nato-flexes-muscle-protect-vilnius-summit-near-russia-belarus-2023-07-08/\" target=\"_blank\">materialida.</a></p>\r\n\r\n<p>Misli ko&lsquo;rilmagan xavfsizlik choralari qo&lsquo;llanishi sammit Litvaning Belarus bilan chegarasidan juda yaqin masofada &mdash; 30 kilometrdan ortiqroq &mdash; o&lsquo;tkazilayotgani tufaylidir. Rossiyaning o&lsquo;ziga ham u qadar uzoq emas &mdash; Kaliningrad oblasti uchrashuv joyidan taxminan 150 kilometr masofada. Tadbirda esa NATO a&rsquo;zolarining AQSh prezidenti Jo Bayden boshchiligidagi asosiy yetakchilari ishtirok etadi.</p>', '<p>11&ndash;12 iyul kunlari Vilnyusda bo&lsquo;lib o&lsquo;tadigan NATO sammiti arafasida Shimoliy Atlantika alyansi rahbariyati Litva poytaxtini &laquo;blokka a&rsquo;zo mamlakatlarning eng ilg&lsquo;or qurollari bilan himoyalangan haqiqiy qal&rsquo;aga aylantirish&raquo; to&lsquo;g&lsquo;risida qayg&lsquo;urmoqda&raquo;, deb yozadi Reuters agentligi 8 iyul kungi&nbsp;<a href=\"https://www.reuters.com/world/nato-flexes-muscle-protect-vilnius-summit-near-russia-belarus-2023-07-08/\" target=\"_blank\">materialida.</a></p>\r\n\r\n<p>Misli ko&lsquo;rilmagan xavfsizlik choralari qo&lsquo;llanishi sammit Litvaning Belarus bilan chegarasidan juda yaqin masofada &mdash; 30 kilometrdan ortiqroq &mdash; o&lsquo;tkazilayotgani tufaylidir. Rossiyaning o&lsquo;ziga ham u qadar uzoq emas &mdash; Kaliningrad oblasti uchrashuv joyidan taxminan 150 kilometr masofada. Tadbirda esa NATO a&rsquo;zolarining AQSh prezidenti Jo Bayden boshchiligidagi asosiy yetakchilari ishtirok etadi.</p>', '1688896386.jpg', 'nato-rossiya-bilan-chegara-yaqinidagi-sammitga-tayyorlanmoqda-patriot-tizimlari-kaliningradga-qaratib-qoyilgan', 1, NULL, NULL, NULL, '2023-07-09 06:53:06', '2023-07-09 06:57:55', '1'),
(5, 3, 'Rossiya rubli kursi kundan kunga pasaymoqda: bunga sabab nima va tanazzul qaysi nuqtada to‘xtashi mumkin?', 'Rossiya rubli kursi kundan kunga pasaymoqda: bunga sabab nima va tanazzul qaysi nuqtada to‘xtashi mumkin?', '<p>Rublning kursi bir oydan ziyod vaqt &mdash; 26 maydan buyon to&lsquo;xtovsiz pasayib bormoqda. Ekspertlar asosiy sabab sifatida savdo balansi bilan bog&lsquo;liq muammolarni ko&lsquo;rsatishmoqda.</p>\r\n\r\n<p>Rossiya&nbsp;&mdash; eksportchi davlat hisoblanadi. Shu sababli sotilgan neft va gaz uchun har bir kirib kelayotgan dollar hisobiga ko&lsquo;proq rublga ega bo&lsquo;ladi, binobarin budjetda ham pul ko&lsquo;proq bo&lsquo;ladi. Biroq, aynan gaz eksporti bo&lsquo;yicha katta muammolar kuzatilmoqda, ayniqsa Yevropa Rossiya uglevodorodlaridan voz kechgani sababli.</p>', '<p>Rublning kursi bir oydan ziyod vaqt &mdash; 26 maydan buyon to&lsquo;xtovsiz pasayib bormoqda. Ekspertlar asosiy sabab sifatida savdo balansi bilan bog&lsquo;liq muammolarni ko&lsquo;rsatishmoqda.</p>\r\n\r\n<p>Rossiya&nbsp;&mdash; eksportchi davlat hisoblanadi. Shu sababli sotilgan neft va gaz uchun har bir kirib kelayotgan dollar hisobiga ko&lsquo;proq rublga ega bo&lsquo;ladi, binobarin budjetda ham pul ko&lsquo;proq bo&lsquo;ladi. Biroq, aynan gaz eksporti bo&lsquo;yicha katta muammolar kuzatilmoqda, ayniqsa Yevropa Rossiya uglevodorodlaridan voz kechgani sababli.</p>', '1688896481.jpg', 'rossiya-rubli-kursi-kundan-kunga-pasaymoqda-bunga-sabab-nima-va-tanazzul-qaysi-nuqtada-toxtashi-mumkin', 2, NULL, NULL, NULL, '2023-07-09 06:54:41', '2023-07-10 09:48:12', '1'),
(6, 5, 'Toshkentda “novostroyka” uchun to‘lov qilgan mingdan ortiq odam chuv tushdi. Zarar miqdori 300 mlrd so‘mdan oshadi', 'Toshkentda “novostroyka” uchun to‘lov qilgan mingdan ortiq odam chuv tushdi. Zarar miqdori 300 mlrd so‘mdan oshadi', '<p>&ldquo;AZIYA INVEST FAVORIT&rdquo; MChJ bilan Toshkent shahri, Yashnobod tumani, Izzat ko&lsquo;chasida qurilishi rejalashtirilgan uylardan birini sotib olish bo&lsquo;yicha shartnoma tuzgan bir guruh fuqarolar Kun.uz&rsquo;ga murojaat qilib, oradan bir yarim yildan ko&lsquo;proq vaqt o&lsquo;tganiga qaramay qurilish ishlari hali boshlanmaganidan shikoyat qilishdi. Ularning aytishicha MChJ rahbari qamoqqa olingan bo&lsquo;lib, ishchi-xodimlar pullarini qaytarishni talab qilib borganlarga firma yopilganini aytishgan. Bundan tashqari, bir guruh fuqarolarning videomurojaatlari YouTube platformasiga ham&nbsp;<a href=\"https://youtu.be/rNhmdakuIAg\" target=\"_blank\">joylashtirilgan</a>.&nbsp;</p>', '<p>&ldquo;AZIYA INVEST FAVORIT&rdquo; MChJ bilan Toshkent shahri, Yashnobod tumani, Izzat ko&lsquo;chasida qurilishi rejalashtirilgan uylardan birini sotib olish bo&lsquo;yicha shartnoma tuzgan bir guruh fuqarolar Kun.uz&rsquo;ga murojaat qilib, oradan bir yarim yildan ko&lsquo;proq vaqt o&lsquo;tganiga qaramay qurilish ishlari hali boshlanmaganidan shikoyat qilishdi. Ularning aytishicha MChJ rahbari qamoqqa olingan bo&lsquo;lib, ishchi-xodimlar pullarini qaytarishni talab qilib borganlarga firma yopilganini aytishgan. Bundan tashqari, bir guruh fuqarolarning videomurojaatlari YouTube platformasiga ham&nbsp;<a href=\"https://youtu.be/rNhmdakuIAg\" target=\"_blank\">joylashtirilgan</a>.&nbsp;</p>', '1688896574.jpg', 'toshkentda-novostroyka-uchun-tolov-qilgan-mingdan-ortiq-odam-chuv-tushdi-zarar-miqdori-300-mlrd-somdan-oshadi', 3, NULL, NULL, NULL, '2023-07-09 06:56:14', '2023-07-15 00:03:47', '1'),
(7, 7, 'Yozda amalga oshib bo‘lgan 20 asosiy transfer. Ro‘yxatda – uch nafar jahon chempioni', 'Yozda amalga oshib bo‘lgan 20 asosiy transfer. Ro‘yxatda – uch nafar jahon chempioni', '<p>Yozning birinchi oyi ortda qoldi va allaqachon qator jiddiy transferlar ro&lsquo;y berdi. Masalan, Lionel Messi va Karim Benzema Yevropadan ketdi, &laquo;Real&raquo; esa 103 mln yevrolik transferga qo&lsquo;l urdi. Quyida so&lsquo;nggi haftalarda ro&lsquo;y bergan Yevropa futbolidagi asosiy transferlar&nbsp;<a href=\"https://www.championat.com/football/article-5159911-transfery-futbola-leto-2023-top-sdelki-iyunya-kuda-pereshli-messi-benzema-bellingem-gyundogan-buskets-haverc.html\" target=\"_blank\">keltiriladi.</a></p>\r\n\r\n<p><strong>Karim Benzema:&nbsp;</strong>&laquo;Real&raquo; &rarr; &laquo;Al-Ittihod&raquo; (erkin agent)</p>', '<p>Yozning birinchi oyi ortda qoldi va allaqachon qator jiddiy transferlar ro&lsquo;y berdi. Masalan, Lionel Messi va Karim Benzema Yevropadan ketdi, &laquo;Real&raquo; esa 103 mln yevrolik transferga qo&lsquo;l urdi. Quyida so&lsquo;nggi haftalarda ro&lsquo;y bergan Yevropa futbolidagi asosiy transferlar&nbsp;<a href=\"https://www.championat.com/football/article-5159911-transfery-futbola-leto-2023-top-sdelki-iyunya-kuda-pereshli-messi-benzema-bellingem-gyundogan-buskets-haverc.html\" target=\"_blank\">keltiriladi.</a></p>\r\n\r\n<p><strong>Karim Benzema:&nbsp;</strong>&laquo;Real&raquo; &rarr; &laquo;Al-Ittihod&raquo; (erkin agent)</p>', '1688896663.jpg', 'yozda-amalga-oshib-bolgan-20-asosiy-transfer-royxatda-uch-nafar-jahon-chempioni', 1, NULL, NULL, NULL, '2023-07-09 06:57:43', '2023-07-10 06:14:53', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `posts_tag`
--

CREATE TABLE `posts_tag` (
  `id` bigint UNSIGNED NOT NULL,
  `posts_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts_tag`
--

INSERT INTO `posts_tag` (`id`, `posts_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 2, 4, NULL, NULL),
(3, 3, 4, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 5, 4, NULL, NULL),
(7, 6, 1, NULL, NULL),
(8, 6, 2, NULL, NULL),
(9, 6, 3, NULL, NULL),
(10, 7, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `name_uz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ru` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `name_uz`, `name_ru`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Jahon', 'Мир', 'jahon', '2023-07-09 06:39:30', '2023-07-09 06:39:30'),
(2, 'qurilish', 'строительство', 'qurilish', '2023-07-09 06:39:59', '2023-07-09 06:39:59'),
(3, 'ob-havo', 'погода', 'ob-havo', '2023-07-09 06:42:01', '2023-07-09 06:42:01'),
(4, 'siyosat', 'политика', 'siyosat', '2023-07-09 06:42:24', '2023-07-09 06:42:24');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Shohruh', 'shohruhermanov5@gmail.com', NULL, '$2y$10$0OPozhT8li6mdcet26wPSu4BbsVrX2DvRa9MyQA44XG7eXYD9yL4y', NULL, '2023-07-08 09:40:47', '2023-07-08 09:40:47');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts_tag`
--
ALTER TABLE `posts_tag`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `posts_tag`
--
ALTER TABLE `posts_tag`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
