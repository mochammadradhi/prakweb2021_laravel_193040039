-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2021 at 03:02 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_193040039`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Novel', 'novel', '2021-11-27 04:39:46', '2021-11-27 04:39:46'),
(2, 'Blog', 'blog', '2021-11-27 04:39:46', '2021-11-27 04:39:46'),
(3, 'Personal Blog', 'personal-blog', '2021-11-27 04:39:46', '2021-11-27 04:39:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_14_044355_create_posts_table', 1),
(6, '2021_10_14_104445_create_categories_table', 1),
(7, '2021_11_27_130716_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exrt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `exrt`, `body`, `publish_at`, `created_at`, `updated_at`) VALUES
(1, 3, 4, 'Sunt ut sint eum mollitia ut dolorum nihil temporibus.', 'minus-enim-iste-doloremque-quaerat-voluptates-nisi', NULL, 'Totam ipsum placeat quidem omnis est sed blanditiis. Qui laudantium et est voluptates omnis fuga in in. Consequuntur rerum placeat architecto corporis expedita et. Et et et quo ea accusamus sunt.', '<p>Atque qui consequuntur molestiae sit. Id enim tenetur in ipsum ratione. Dicta non sit quasi eos quia explicabo sit. Provident vel reiciendis in officia et qui eum. Consequatur tempore at est cum dolorem.</p><p>Quia harum ut ipsa cumque alias. Odit nam repellat eum ad. Dicta est eos tempora quas impedit. Eos illo facilis est aut eos sapiente eveniet.</p><p>Eligendi occaecati eum illum velit eligendi quis eaque. Sequi hic eum quod qui quia eos. Eos aut ipsam eius omnis consequuntur consequuntur placeat. Hic optio qui quia commodi. Possimus fugit assumenda consequuntur vitae adipisci.</p><p>Recusandae maxime quo ut consequuntur fugit. Voluptatem ullam architecto numquam autem consequatur ducimus voluptatem tempore. Dolorum magnam aut quia aut ut quam. Dicta quibusdam non libero aliquid incidunt et voluptatem.</p><p>Repellendus rerum debitis id officia. Repellat minus sint velit.</p><p>Omnis omnis ratione beatae perspiciatis sint quaerat nihil. Id et non harum blanditiis.</p><p>Quia blanditiis laborum quas necessitatibus enim soluta tenetur asperiores. Iusto aut aut architecto sunt est. Laborum dolores perspiciatis natus provident recusandae. Asperiores sunt et iste suscipit.</p>', NULL, '2021-11-27 04:39:46', '2021-11-27 04:39:46'),
(2, 3, 4, 'Ut beatae aut libero veritatis.', 'impedit-recusandae-temporibus-maiores-sapiente-non-nihil', NULL, 'At error nemo repellat. Sunt occaecati non commodi aliquam. Voluptatibus explicabo laboriosam vero facere placeat sed hic corporis.', '<p>Repellendus sed qui dignissimos et est repellat rerum. Natus nihil illo qui totam vero maxime voluptatem molestiae. Ad perspiciatis non voluptatem omnis. Assumenda soluta quia sint modi et aperiam.</p><p>Pariatur ut cumque numquam qui. Consequatur ut quia qui laudantium ullam officiis. Explicabo eaque nulla itaque ut. Accusamus sunt mollitia nemo fuga illum.</p><p>Rerum sint voluptatem cum cumque non voluptatibus et amet. Harum occaecati nostrum qui vitae alias aut ea dolores. Ea ea voluptatem molestias id officia dolores.</p><p>Sequi aut et corrupti minima. Ut illum et deleniti quidem omnis nihil voluptate. Distinctio consequatur eos dolorum saepe unde et. Vel quia occaecati ratione sed hic voluptatem reprehenderit.</p><p>Unde iste at itaque. Accusantium iusto modi amet in consequuntur alias et. Magni tempora nesciunt error consequatur voluptatem. Consectetur occaecati exercitationem porro eum dolore consequatur.</p><p>Id non odit praesentium id ab. Fuga id et eum laudantium. Culpa illo sit minus dolor delectus eum in quam.</p>', NULL, '2021-11-27 04:39:46', '2021-11-27 04:39:46'),
(3, 1, 1, 'Non earum fugit voluptatem odit.', 'dolorum-voluptatibus-quos-rem-non-sapiente-accusamus', NULL, 'Quibusdam sint magni architecto quisquam. Magnam ut eum impedit quae ex eos.', '<p>Vel rerum quibusdam aut veritatis beatae distinctio. Esse enim et sapiente dolores distinctio ut ab. Rem optio architecto consequatur expedita incidunt sed neque.</p><p>Quia possimus tempore amet labore temporibus. Ipsa libero harum qui occaecati. Rerum tempora aliquam voluptatem vitae facilis.</p><p>Exercitationem blanditiis ut dolorem nihil. Dolorum quia aspernatur quo quia suscipit aut. Autem consequuntur fugit ipsa autem a. Accusamus voluptatibus laborum rem ipsam odit adipisci.</p><p>Cum fugit quod corrupti debitis. Incidunt qui excepturi quae et. Labore quod earum cum sed voluptatibus eligendi eius. Sapiente voluptas aliquid quo doloremque laboriosam.</p><p>Quia incidunt tenetur optio similique ipsum eum ex. Hic ut repellendus in sit in qui consectetur.</p><p>Magni nihil ea et esse ipsam. Sit veritatis esse velit. Sit ea eligendi commodi quidem iure quibusdam voluptates. Aspernatur inventore labore nihil aspernatur.</p>', NULL, '2021-11-27 04:39:46', '2021-11-27 04:39:46'),
(4, 2, 4, 'Qui modi odio labore natus illum ratione aut quia.', 'recusandae-provident-ipsum-eligendi-molestiae-maiores', NULL, 'Expedita quis culpa doloremque consequatur debitis modi. In nobis nesciunt optio quis omnis dolorem reprehenderit voluptatibus. Iure occaecati enim aut cupiditate ut fugit. Est dolor tenetur voluptatibus quae laborum unde et ut.', '<p>Incidunt aut quis dolor. Rerum officiis aut aut assumenda ipsum non quas voluptatem. Eum sit non non dolor nobis iste doloremque aut.</p><p>Tempora labore beatae sit aut. Explicabo ut architecto iusto incidunt. Veritatis et voluptas ipsum sed occaecati voluptate. Rerum eius aperiam sint ipsa consequuntur atque.</p><p>Distinctio labore incidunt error soluta aut voluptatibus. Provident doloribus rem et id beatae. Reiciendis aut laudantium quasi tempore. Est maiores ipsa a et qui impedit.</p><p>Et similique suscipit quam natus. Tempora tempore exercitationem laboriosam aut ipsam. Iure numquam id maxime ut praesentium.</p><p>Possimus consectetur porro incidunt quaerat. Necessitatibus sed esse et et. Magni inventore tenetur saepe odit sed. Dolores dolores harum nisi debitis.</p>', NULL, '2021-11-27 04:39:46', '2021-11-27 04:39:46'),
(5, 1, 2, 'Amet explicabo eum.', 'ipsa-quia-non-quia-odio-minima', NULL, 'A hic vel iure enim non. Architecto ut quisquam exercitationem unde labore. Temporibus distinctio repellat et eveniet voluptate accusamus explicabo.', '<p>Fugiat minus molestiae sed eos ea ducimus sed. Saepe doloribus dolores inventore harum dolores. Non ut neque autem fugit quia fugit ipsam.</p><p>Quia ea labore omnis et. Molestias voluptatem dolorem impedit itaque. Sed voluptatibus ab accusantium ipsam ullam.</p><p>Qui nihil dignissimos dolores est consequatur est. Quis quo maiores iusto voluptates. In ullam aliquid occaecati qui earum amet. Labore non sed molestiae aperiam id rerum.</p><p>Consequatur inventore ratione repudiandae consequatur sed aut aut. Facilis aperiam voluptatem nisi distinctio in. Non quo natus eaque et pariatur. Modi et amet doloremque deleniti cumque sit nihil velit.</p><p>Ut et quia pariatur ut. Ipsum facilis vel quasi autem. Quae atque possimus est inventore voluptas et modi quis.</p><p>Minima est qui vitae vel. Qui qui officiis ab fuga quod vitae. At sed et architecto cumque dolore illum sunt et. Nobis laboriosam non asperiores et.</p><p>Doloremque ut molestiae rerum numquam. Adipisci dicta aut rerum neque. Quisquam ullam id dignissimos sunt quia. Est nobis autem laborum voluptates. Numquam eius voluptate illum quia eligendi repellendus.</p>', NULL, '2021-11-27 04:39:46', '2021-11-27 04:39:46'),
(6, 1, 4, 'Dolor molestiae tempore vel.', 'et-ipsam-dolor-qui-molestias-et', NULL, 'Facilis soluta earum necessitatibus officiis veritatis consequatur sed. Accusantium molestias facere laboriosam quidem vitae consequatur asperiores. Quisquam asperiores et est sed id. Quibusdam cumque qui praesentium assumenda debitis sint tempore.', '<p>Deleniti rerum tenetur provident accusantium pariatur et. Eos quos pariatur quis voluptatem sint ut. Aperiam veritatis commodi omnis nam. Exercitationem voluptatem soluta eius quidem sed. Sit consectetur iure quia consequatur.</p><p>Voluptas libero quia perferendis in dolorem similique. Quia maiores blanditiis et aut aperiam qui. Accusantium et nisi aut ullam occaecati. Eum iste et provident aut vel. Eligendi iure reprehenderit labore voluptatem.</p><p>Doloribus hic sint ut iusto. Aut cupiditate quam sit sit enim dolores beatae nulla. Illum accusantium sed non animi blanditiis modi cupiditate. Dolor occaecati accusamus culpa eaque distinctio atque adipisci.</p><p>Ut recusandae ipsam sint quis aliquid. Qui voluptas voluptatem consequuntur. Facilis fugiat occaecati ipsam.</p><p>Deleniti omnis impedit eum est minus delectus aut. Accusantium modi nostrum odio cumque ullam placeat voluptas. Et sunt eaque possimus non eius deserunt.</p><p>Eum voluptas consequatur tempore quos. Veritatis occaecati beatae esse beatae similique neque cumque eius. Ipsa unde est eos voluptatum ipsum. Qui ea voluptatem distinctio voluptatem culpa vel molestiae est.</p><p>Laudantium cumque et molestiae ut sunt distinctio. Et a aut qui. Architecto est animi esse dolorem. Voluptas ab suscipit sit perferendis quis odit ut.</p><p>Voluptatem delectus aut numquam quas consequuntur quis laboriosam. Sunt eaque minus quibusdam repudiandae aperiam quia nesciunt consequatur. Qui eum recusandae sit consequatur id fugiat facilis ipsum. Explicabo alias aut delectus odio.</p><p>Consequatur aspernatur consequuntur et possimus corrupti voluptate. Aperiam exercitationem ut repellendus odit ex at iste.</p><p>Quia voluptates sunt et accusantium. Unde vel est ut quia eaque totam. Deleniti nam id sint laudantium.</p>', NULL, '2021-11-27 04:39:46', '2021-11-27 04:39:46'),
(7, 2, 3, 'Nihil sapiente provident reiciendis quae sed labore voluptatem.', 'cumque-porro-molestias-dignissimos-culpa-neque-eligendi', NULL, 'Delectus quia asperiores nihil. Amet a praesentium et ut deleniti. Odit aut possimus aut iusto consequuntur.', '<p>Quod similique omnis et ex iure velit iure eligendi. Aut accusantium minima id sunt voluptatem veritatis vel. Provident magnam consequuntur ex sint. Rerum necessitatibus optio qui.</p><p>Reprehenderit quidem sit magnam culpa eos quod consequatur. Commodi voluptatem recusandae excepturi. Earum aliquid molestiae unde voluptas doloremque aspernatur eligendi.</p><p>Sequi aspernatur praesentium aut corrupti. Ut rerum praesentium aut qui ullam. Quasi dignissimos vitae rerum voluptas impedit dolor aut.</p><p>Qui nisi vitae omnis optio. Eos qui aspernatur iure commodi. Ut ut reiciendis repellendus harum a quas.</p><p>Corporis modi doloribus nostrum ut blanditiis. Tempora rerum expedita id eum fugit. Nesciunt consequuntur deleniti voluptates rem voluptas.</p><p>Ducimus consectetur neque et recusandae dignissimos quia voluptatem ex. Deserunt consequatur ut id eius ut et odit. Et quod hic fugiat reiciendis nam velit at. Earum beatae molestiae quas voluptatem nulla totam. Doloribus nesciunt voluptates rem reprehenderit.</p><p>Non dolorem porro odit delectus ad maxime. Deserunt autem ipsum deleniti. Iusto dolor ipsa reprehenderit qui labore.</p>', NULL, '2021-11-27 04:39:46', '2021-11-27 04:39:46'),
(8, 1, 2, 'Hic molestiae sed animi non.', 'aut-est-illum-doloremque-minima-sint-sunt', NULL, 'Delectus vitae ipsum ut eveniet reprehenderit cumque. Omnis culpa iusto molestiae id et. Voluptatibus maxime praesentium ab voluptate eveniet.', '<p>Dicta ullam rem quae hic iste ut qui. Cupiditate vitae dolorem nostrum dolor et. Aliquid corrupti et corporis facere qui temporibus ea. Aut vel ex ipsam soluta sed.</p><p>Minus aut sit voluptatem autem soluta ut accusantium amet. Aut repudiandae at tempore impedit laboriosam. Voluptas id eum aut. Doloremque exercitationem necessitatibus nihil quia.</p><p>Dignissimos iure deserunt non. Impedit consequatur suscipit nam porro aut qui expedita.</p><p>Voluptates ut ut expedita dolorem aspernatur et dolorem. Harum qui voluptas molestias.</p><p>Quis harum et voluptatum et non. Non qui fugiat et fugiat molestias ipsam minima. Mollitia provident quaerat nulla consequatur sit assumenda maxime possimus. Fugiat modi et in a et. Aut sed est quaerat eum qui aspernatur.</p>', NULL, '2021-11-27 04:39:46', '2021-11-27 04:39:46'),
(9, 2, 3, 'Atque ex blanditiis expedita animi et odio quibusdam molestiae.', 'dolore-consequatur-et-consectetur', NULL, 'Id blanditiis ut iusto aliquid cumque amet officiis. Atque qui non eos minus ut vel dicta. Laboriosam excepturi quia veniam labore omnis.', '<p>Soluta sit aut quam nostrum. Nulla magnam ea ipsum consectetur quidem id. Laborum id vero distinctio et minus ut voluptatem. Minus a sunt omnis fugit.</p><p>Dolorum odit rerum molestias est pariatur voluptatum. Perferendis et rem et est. Libero asperiores dolore quo ut sunt in et. Ut rerum sint perspiciatis consectetur.</p><p>Ut repudiandae aliquid praesentium. Corrupti minima eaque ut et enim qui. Qui molestiae odio ab id officiis quam quo.</p><p>Ut aut totam optio ut nisi natus. Corrupti delectus praesentium optio cupiditate. Quas repudiandae quam necessitatibus eum dolorem.</p><p>Temporibus ipsa quibusdam molestias culpa eveniet aut. Quis sed commodi totam voluptatem non rem nisi. Perferendis itaque aut aut inventore aut.</p>', NULL, '2021-11-27 04:39:46', '2021-11-27 04:39:46'),
(10, 2, 2, 'Facere provident debitis.', 'rem-eos-rerum-sapiente-aspernatur-distinctio-sed', NULL, 'Dicta aut id at quis in molestias accusamus. Earum aut qui repellendus rerum qui omnis iusto. Laboriosam odio illum sed molestias ut.', '<p>Aut quo ipsa alias ipsum ducimus at ut. Reiciendis omnis nisi aspernatur quia. Et eligendi ipsa ipsam.</p><p>Enim ipsam consequuntur eos nihil. Temporibus quaerat quia saepe nobis dicta tempora. Ducimus veniam et distinctio.</p><p>Autem sint asperiores odio aut cumque. Odio velit sit repellendus.</p><p>Eos natus eius et ratione tempora laboriosam veniam. Cupiditate temporibus doloribus id nulla. Beatae corporis deserunt veritatis est laudantium inventore impedit error. Id est reprehenderit et repellat nulla dolorum.</p><p>Minima est officia accusantium voluptatum enim. Sint qui et eum rem. Vel impedit ut autem veritatis. Dolores numquam fugiat odio iure voluptatem rerum.</p>', NULL, '2021-11-27 04:39:46', '2021-11-27 04:39:46'),
(11, 1, 2, 'Harum voluptatem cumque facere eveniet vel velit et.', 'sit-molestiae-voluptates-doloremque-id-aut-quam-qui', NULL, 'Illum blanditiis molestias omnis consequatur libero est. Ut enim sunt est suscipit sapiente autem. Fugit officiis enim eveniet. Fuga esse ratione asperiores aut sit.', '<p>Doloremque quo repellat sed nemo autem. Rem adipisci quia qui. Incidunt debitis rerum ullam rem rerum dicta porro.</p><p>Voluptatem enim temporibus ipsa. Veniam similique necessitatibus aut qui velit repellendus.</p><p>Totam ipsum velit eos. Rem veritatis consequuntur id voluptatibus. Perferendis rerum eum dolorem est eaque ab. Molestiae officia doloribus id dignissimos qui beatae. Assumenda maxime nostrum maxime architecto quisquam quia.</p><p>Accusantium delectus ipsa et. Et reiciendis molestiae accusamus earum deserunt ut explicabo. Ullam facere accusamus aut magni quis.</p><p>Numquam ex quia nulla excepturi deleniti amet minima voluptatibus. Reiciendis sunt ab necessitatibus itaque. Omnis quaerat fuga dolorem. Minima similique voluptates deleniti ullam.</p><p>Impedit et quos consequatur esse eum voluptatum. Dignissimos ea sint at. Voluptate velit qui excepturi asperiores molestiae.</p><p>Aliquid corporis iusto porro cupiditate est adipisci. Consequuntur in molestiae molestias consequatur quia temporibus tempore. Itaque cum et officiis fuga quia qui aut quia.</p><p>Quia quae quis autem id. Ab deleniti dolores ut placeat architecto. Qui et laborum mollitia sequi mollitia. Ratione aperiam asperiores id voluptas illum.</p>', NULL, '2021-11-27 04:39:46', '2021-11-27 04:39:46'),
(12, 3, 3, 'Amet tempore cum minus vel.', 'rem-vitae-et-ab-vel', NULL, 'Dolor sit illo tenetur. Reiciendis ad nihil sit fuga animi aliquam architecto inventore. Laborum repudiandae omnis voluptatem molestiae fuga.', '<p>Magnam voluptatum voluptatem numquam aperiam. Cum quibusdam nisi dolor harum. Consequuntur vitae rerum omnis odio sunt inventore. Ipsum illum ex et labore provident qui.</p><p>Officiis tempore placeat at consequatur rem quae atque. Quo non possimus magnam natus quos. Ut non sunt hic saepe autem et. Qui a eaque nesciunt sed.</p><p>Rem quidem soluta eligendi tenetur vel. Tempore rerum tenetur aut eum autem velit itaque. Atque qui nobis non commodi sunt.</p><p>Sint aut labore nihil nostrum debitis. Suscipit incidunt a cupiditate dolorum. Enim unde nihil ratione repellendus laudantium nemo recusandae.</p><p>Rerum voluptas eius ab eos quos ab odio. Similique praesentium magni aut. Laboriosam qui et exercitationem corrupti fuga.</p><p>Quo a nobis architecto qui. Dolorem mollitia facere repudiandae consequatur. Necessitatibus maiores porro dolorem ad totam quis.</p><p>Enim ducimus eaque corporis et nam. Eligendi nihil debitis tempore modi maiores totam. Velit ipsam dignissimos quis nihil voluptatem recusandae. Et mollitia eos et necessitatibus quia.</p><p>Nemo necessitatibus quae nihil. At sunt in mollitia molestiae. Ab non quaerat animi ipsam.</p><p>Atque facilis nihil quisquam nostrum rerum consequatur. Sit iste ipsum dolores saepe quae. Ipsum ab excepturi qui sit sed suscipit dignissimos.</p><p>Nesciunt culpa non et dolores necessitatibus magni numquam ex. Fugit quis vel et sapiente nobis sint ut quidem.</p>', NULL, '2021-11-27 04:39:46', '2021-11-27 04:39:46'),
(13, 3, 5, 'Similique voluptas itaque tenetur ex sint fugiat tempore ut.', 'provident-mollitia-quod-et-sapiente-ea', NULL, 'Alias totam pariatur ut asperiores error mollitia fugit. Ut qui iure assumenda consectetur accusamus delectus ut beatae. Non aut repellendus doloremque impedit. At quia doloribus ut harum mollitia sequi.', '<p>Nihil quia molestias autem nisi quas labore. Ex ducimus qui laborum odio vitae fuga. Esse vel praesentium eum architecto laborum nostrum minus.</p><p>Quaerat laboriosam consequatur impedit esse et. Amet illum consequatur et enim porro consequuntur. Tenetur numquam hic et excepturi maxime dolore.</p><p>Dolorem in autem facere optio vel eveniet molestiae. Maiores dolores omnis sit ullam totam atque laborum. Ipsam commodi non consequatur facilis.</p><p>Aut harum alias ex non quos cumque. Vel accusamus assumenda omnis ullam. Vel consequatur rerum deserunt quas facere. Similique laudantium facere voluptatem.</p><p>Sed occaecati nemo illo quia quos. Odio animi quibusdam possimus incidunt eos laboriosam. Quod architecto animi ipsum totam voluptatibus non.</p><p>Commodi in modi sint voluptate. Blanditiis et aliquid aut voluptas. Ex et voluptatem nemo sed. Doloribus nisi recusandae aut.</p>', NULL, '2021-11-27 04:39:46', '2021-11-27 04:39:46'),
(14, 3, 3, 'Praesentium temporibus dolorem aspernatur sit.', 'quasi-repudiandae-quas-reiciendis-quas-autem-molestiae', NULL, 'Doloribus voluptatem saepe fugiat. Laboriosam voluptatem dolorem nobis expedita. Enim ipsa quos recusandae dolorem eum qui.', '<p>Nesciunt aut consectetur consequatur sit sunt quia. Sit aut provident beatae nam quaerat. Numquam doloremque dolor provident et sed. Ea consequatur mollitia dolorum enim delectus.</p><p>Aut quis dolorem voluptate vero cum et et voluptatibus. Accusamus tempora laborum omnis voluptas consequatur ea molestiae. Eos laborum fuga odit tenetur tempore qui suscipit. Aspernatur nulla necessitatibus natus inventore aliquid sequi rerum.</p><p>Similique itaque fugit cum et rerum quo rem. Et iusto et ut aut quos cumque unde saepe. Ipsum ullam ut mollitia velit quaerat est voluptas. Velit saepe odio id.</p><p>Doloribus et eveniet culpa sit dolorem nisi occaecati. Autem voluptates velit et deserunt id aut dolor. Laborum aut reiciendis eaque quis reprehenderit officia. Et et et non praesentium tenetur maxime quis. Odit ea optio qui voluptatem veritatis odio.</p><p>Facere culpa reprehenderit velit earum dicta atque in. Aperiam facilis et explicabo doloremque ut veritatis eum. Error ducimus omnis aliquam nisi sed nemo praesentium. Perferendis nulla numquam repellendus debitis tenetur omnis odio excepturi. Quia assumenda sunt soluta.</p><p>Sint impedit aperiam quia. Temporibus et reiciendis ullam animi explicabo. Maxime beatae qui doloremque delectus.</p><p>Ullam eum qui laudantium similique alias officia dolorem. Soluta delectus eos veritatis sed. Asperiores quos qui autem quo. Repellat eos totam exercitationem architecto distinctio nam.</p>', NULL, '2021-11-27 04:39:46', '2021-11-27 04:39:46'),
(15, 2, 4, 'Laudantium eos illum.', 'placeat-delectus-est-quo-voluptatem-aliquid', NULL, 'Possimus qui repudiandae voluptate rerum quia ratione sit voluptatem. Aut vel qui fugiat dolores nemo. Et et et repudiandae quia excepturi est. Dicta qui dolore quasi nulla at tempora.', '<p>Qui aut quia quae quaerat. Beatae accusamus voluptatem dicta ad. Ipsum quo et ducimus numquam. Asperiores sed ea sint ducimus cum cumque ducimus.</p><p>Voluptas hic sed sed quam. Amet suscipit qui eum culpa animi nihil sint. Praesentium magni in velit commodi. Ut qui enim voluptatem quasi dolores minima libero. Sapiente id recusandae consequuntur ullam voluptas id.</p><p>Aliquid maxime qui tempore praesentium eos est sapiente. Aut velit dolor asperiores sit modi accusantium. Iste provident odit iure modi vel aliquam.</p><p>Et non velit ea nihil aut tenetur aut. Recusandae quos eligendi facere harum. Fuga corporis qui at repudiandae.</p><p>Et beatae deserunt fugit sint quas. Voluptatem doloremque consequatur ut non rerum pariatur et.</p><p>Doloremque aut assumenda aliquam veritatis. Aspernatur doloribus est saepe velit sint est maxime. Quia ea eligendi nulla quidem. Vitae natus et corrupti quos architecto cum eos harum. Reprehenderit laborum dolorem qui iure omnis.</p>', NULL, '2021-11-27 04:39:46', '2021-11-27 04:39:46'),
(16, 2, 5, 'Mollitia numquam rerum.', 'doloribus-nobis-nesciunt-aut-aspernatur', NULL, 'Rerum magni iusto distinctio. Qui ex consequatur et eum commodi eligendi. Commodi eum eligendi a tenetur quasi.', '<p>Aut eligendi ullam quis vel est deleniti aut. Repudiandae non autem quos ab. Facilis est quo sit vitae veritatis. Non temporibus voluptate dolor sint sed ratione et.</p><p>Quidem rerum quia quasi odio. Quo nihil fugit ut id sit. Deleniti explicabo exercitationem omnis excepturi eum voluptas. Fuga itaque omnis quis sunt.</p><p>Dicta excepturi labore delectus ut illo fuga similique. Et numquam ipsum enim est qui. Quos expedita voluptas asperiores nulla eaque officia. Rem nisi est et itaque rerum pariatur ab.</p><p>Aut ut error ut voluptatem id beatae. Id totam mollitia harum iste.</p><p>Minus quidem aut reprehenderit ut eos. Ipsam velit non accusantium laboriosam qui perspiciatis. Doloribus quia accusantium sequi atque molestiae et. Ullam enim et aut occaecati iure.</p>', NULL, '2021-11-27 04:39:46', '2021-11-27 04:39:46'),
(17, 2, 1, 'Velit aut ex.', 'inventore-odit-provident-eveniet-dicta-soluta-in', NULL, 'Voluptas dolor quos eius facilis. Animi et fuga quas porro necessitatibus voluptatem architecto. Ex velit ut officia optio cumque velit laborum.', '<p>Facere mollitia qui quasi pariatur. Aut at corporis provident incidunt porro asperiores et. Cupiditate quos cum minus veritatis. Est nisi sapiente aut ut nobis.</p><p>Quae voluptas eos officiis est. Quae et aliquam et optio minima tempora. Id ut aut doloribus rerum culpa ducimus.</p><p>Sequi animi atque eos quo nisi. Dolor labore aut nesciunt iure.</p><p>Et debitis perferendis officiis numquam asperiores facilis dolores. Nostrum porro nihil doloribus aliquam. Nihil in aperiam aut neque eum nesciunt officiis autem.</p><p>Fugit omnis in et optio id. Est quia voluptas rerum nesciunt quibusdam vel. Sed eum adipisci eius necessitatibus excepturi. Unde voluptatem quisquam accusantium qui.</p><p>Beatae quis dolor vitae minima ut voluptas. Occaecati eius excepturi harum omnis assumenda ut occaecati. Natus tempore repellat consequatur voluptate molestias eum. Et suscipit eos perspiciatis eos error.</p><p>Aspernatur fuga soluta repellat ut. Voluptas nulla voluptatem eaque repellat architecto corrupti. Sequi ullam perspiciatis et recusandae velit praesentium quo. Dolorem vero fuga quasi odit ducimus voluptas ea.</p><p>Deleniti itaque ad rerum odio. Enim culpa maiores explicabo aut soluta sit harum. Ipsa itaque fuga eaque voluptatem cum. Placeat sapiente sit dolores asperiores corporis cum ipsam.</p><p>Ut commodi laborum est magni vero amet impedit aut. Est quia magni iste maiores architecto aliquam nesciunt. Molestiae asperiores ducimus in aliquid. Velit quisquam expedita ut debitis accusantium dolorem tempore.</p>', NULL, '2021-11-27 04:39:46', '2021-11-27 04:39:46'),
(18, 1, 1, 'Aut sit eligendi ut ut voluptatem nesciunt.', 'vel-sit-vel-et-aliquam', NULL, 'Rem omnis voluptate facere accusantium. Quos eos ea tempore molestiae molestiae et dolor.', '<p>Quod blanditiis suscipit atque quis rerum dolor quia nihil. Velit possimus vel aut cum sit consectetur nihil. Nulla delectus veniam voluptas quibusdam esse tenetur consequatur.</p><p>Et delectus aut et id ut et repellendus. Eveniet magnam nostrum qui animi molestiae placeat. Porro explicabo reprehenderit doloremque sed nihil ad quis. Reprehenderit esse molestias veniam. Quia rem perferendis non nemo repudiandae enim rerum.</p><p>Repellat id ut deleniti facere ut. Voluptatibus dolore rerum quo quis amet magnam. Aut voluptatem expedita eum est voluptatem animi omnis. Facere commodi eum mollitia eius.</p><p>Voluptatibus impedit quas architecto atque libero. Reiciendis vel quos dolor dolorum dolores nobis. Est reiciendis et totam dolorem mollitia aut nulla. Sequi et incidunt assumenda et aut dicta reprehenderit a.</p><p>Enim et molestias beatae qui. A adipisci quia occaecati harum facilis qui. Nihil explicabo suscipit dicta quia et voluptatem.</p><p>Corporis ab excepturi nam incidunt est. Sed nobis qui labore recusandae dolorum quis necessitatibus.</p>', NULL, '2021-11-27 04:39:46', '2021-11-27 04:39:46'),
(19, 3, 4, 'Nemo nesciunt et fugit praesentium omnis aliquid officia vel.', 'quibusdam-ut-nesciunt-rerum-doloremque-sed-et-maiores-corporis', NULL, 'Incidunt reiciendis temporibus eum voluptatem rem corporis. Rerum eaque voluptas et voluptatibus veniam quasi. Rerum officiis sapiente nihil ipsam illo veritatis itaque. Beatae nostrum sit et.', '<p>Tenetur et autem ea ut non. Quo eius aspernatur optio fugiat maiores sed molestiae amet. Quibusdam asperiores animi animi minus cumque voluptatum.</p><p>Accusamus quis velit voluptas eum magni et sapiente laborum. Ratione cupiditate aut omnis odit eum nam. Magni quisquam totam maxime atque. Blanditiis quos nihil aut ut.</p><p>Placeat cum rerum tenetur maxime. Natus dignissimos neque ea voluptates aut eveniet. Repellendus sint reiciendis ut qui magnam.</p><p>Perferendis amet et molestiae. Impedit maiores provident doloremque et inventore. Fugiat dolorem nulla voluptate aut. Eaque numquam libero libero voluptate quo enim sit. Adipisci voluptas provident fuga.</p><p>Asperiores sed in et dolorem vitae et amet. Eligendi quam officiis illo voluptas rem. Aut vel tenetur dignissimos repellat alias voluptas inventore. Eveniet qui aut non vitae nisi sed.</p><p>Dignissimos animi dolorum quidem minima. Dicta dolore ut qui perferendis rem facere. Iusto praesentium et nihil et voluptas est eligendi numquam.</p><p>Vel autem molestias assumenda sed dolorum aliquam. Quam quo officiis ut ullam eum ut quia consequatur. Illo eveniet molestiae labore qui atque. Atque minus quo vero et ut cumque et. Unde consequatur quasi ducimus repellendus rerum ea.</p><p>Quaerat et sit voluptatem ea. Doloribus deleniti eveniet blanditiis libero asperiores. Magni eius consequuntur velit et autem. Provident optio esse explicabo quia officia voluptas voluptatem.</p><p>Voluptatem odit atque assumenda et. Quia sit temporibus magni incidunt. Ducimus iusto delectus enim placeat.</p>', NULL, '2021-11-27 04:39:46', '2021-11-27 04:39:46'),
(20, 1, 1, 'Quae exercitationem itaque.', 'numquam-rerum-mollitia-dolore', NULL, 'Delectus consequuntur alias aut illum laborum nemo qui quia. Culpa nam doloribus dolorem est iusto. Eos consequuntur quia error harum omnis saepe pariatur. Doloribus dignissimos illum ipsam ut et repellendus.', '<p>Eius quis sed hic vel et aliquid magnam. Voluptas vel officia nisi libero. Voluptatem est vitae eligendi iste. Sunt quia praesentium expedita illo perspiciatis.</p><p>In dicta suscipit non omnis. Ut voluptatem quod officia ea totam occaecati recusandae. Facilis et fuga illo repellendus. Assumenda qui a in laborum.</p><p>Natus molestiae a officiis veritatis necessitatibus. Voluptatem ut necessitatibus quis quo. Beatae est nam tempore quis.</p><p>In nam quae qui quo sapiente ipsa sunt illo. Omnis sed voluptatem quae libero earum et magni. Provident eius qui ipsum consequatur sed alias ut quaerat.</p><p>Beatae eum vel eum et laboriosam dolor officiis et. Earum est nostrum et sapiente ut. Mollitia non voluptas possimus quibusdam sapiente.</p>', NULL, '2021-11-27 04:39:46', '2021-11-27 04:39:46'),
(22, 2, 1, 'Content 2', 'content-2', 'post-images/vbNWuV1fR433x12E4A2dwnz44fupXAfHx2U7n366.jpg', 'asdasdas', '<div>asdasdas</div>', NULL, '2021-11-27 04:48:05', '2021-11-27 04:48:05'),
(23, 3, 1, 'Content 3', 'content-3', 'post-images/rVTDLUesP9awz477nvDvs3BvFXUEGfrCEzLwWvzj.jpg', 'adasdadas', '<div>adasdadas</div>', NULL, '2021-11-27 05:12:30', '2021-11-27 05:27:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Mochammad Radhi Akbar', 'mochammadradhi', '193040039@gmail.com', NULL, '$2y$10$6JZdHMTb1iul.jmumMXd8.DxFtQoQk3bVqz.diip6GDJbKmXETS7q', NULL, '2021-11-27 04:39:46', '2021-11-27 04:39:46', 1),
(2, 'Cici Cinthia Nasyiah', 'tampubolon.carla', 'luwes.sitorus@example.org', '2021-11-27 04:39:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'emPtYwHIcY', '2021-11-27 04:39:46', '2021-11-27 04:39:46', 0),
(3, 'Danuja Thamrin S.Farm', 'najam.wacana', 'bwahyuni@example.net', '2021-11-27 04:39:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YGMijpG2lc', '2021-11-27 04:39:46', '2021-11-27 04:39:46', 0),
(4, 'Yuni Sudiati', 'jatmiko.aryani', 'latupono.tina@example.com', '2021-11-27 04:39:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TrBPRqnoXx0OZ27gSLcy609eKTP8eMmnz6lB93ezkhWDwup8vnqruyBihHn4', '2021-11-27 04:39:46', '2021-11-27 04:39:46', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
