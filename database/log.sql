-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2023 at 04:21 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `log`
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
(1, 'Web Development', 'web-development', '2023-03-23 01:16:27', '2023-03-23 01:16:27'),
(2, 'Programing', 'programing', '2023-03-23 01:16:27', '2023-03-23 01:16:27'),
(3, 'Personal', 'personal', '2023-03-23 01:16:27', '2023-03-23 01:16:27'),
(4, 'UI/UX', 'ui/ux', '2023-03-23 01:16:27', '2023-03-23 01:16:27');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_18_155926_create_posts_table', 1),
(6, '2023_03_18_230839_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
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
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 4, 'Qui quod.', 'beatae-non-aut-ut-rerum-qui-corporis-numquam', 'Similique ipsa delectus repudiandae nulla cum dolore non similique. Voluptatibus expedita dignissimos dolorem possimus et. Quae vel nostrum et aut est non error. Qui cupiditate dolorem quam praesentium totam.', '<p>Totam necessitatibus non earum id et et. Ea doloribus veritatis officiis laudantium modi. Nihil necessitatibus ducimus autem aspernatur.</p><p>Doloremque omnis nam earum voluptatem autem voluptates. Velit sapiente corrupti excepturi eum impedit et qui. Accusamus voluptas ab dolores ea dolores eligendi.</p><p>Quas nam officiis in aperiam ipsam. Id rerum cumque quos ut qui et pariatur. Et rerum nihil assumenda repellendus numquam sapiente quibusdam. Quia possimus officia rerum distinctio dolor.</p><p>Tempora fuga vel non ducimus ut sint consequuntur enim. Aut ut sit earum a quidem. Nam voluptatum modi porro ab voluptatem vel. Voluptates suscipit facere aut iusto sed quia officia.</p><p>Eaque modi temporibus laboriosam ea laboriosam harum qui. Vitae qui necessitatibus autem nam sapiente iure. Voluptate cupiditate id unde est qui ab laboriosam. Eligendi sit eius debitis.</p><p>Ipsam ut et totam iste animi commodi facere omnis. Officiis qui dignissimos vel autem alias explicabo praesentium. Et tempore ducimus neque quis quo. Molestiae accusantium dolor beatae consequatur iste est.</p><p>Similique perspiciatis aut cupiditate occaecati voluptatibus. Corrupti maiores at sit cumque. Fuga quaerat explicabo illum aspernatur ea. Autem omnis facilis excepturi suscipit quo.</p><p>Est iusto consectetur blanditiis ut. Autem mollitia quo eveniet asperiores magnam vitae iusto. Id omnis sed dolorum velit. Provident perspiciatis veritatis ipsum aperiam.</p><p>Illum qui perferendis aliquid dicta. Delectus et dolor consequatur et. Vel voluptatem error nesciunt ratione quia.</p><p>Eveniet est dolorem quisquam minus soluta et non. Sed exercitationem illo dolorem autem vel. Id et amet inventore et. Maiores quam deleniti omnis est non consequatur necessitatibus.</p>', NULL, '2023-03-23 01:16:27', '2023-03-23 01:16:27'),
(2, 4, 1, 'In rerum aut omnis aperiam.', 'consequatur-qui-nisi-nihil-nesciunt-et-amet', 'Ut dolores nisi ut. Non necessitatibus autem doloribus dolorum ad veritatis. Fugit ea et dolorem deleniti ut blanditiis sint consequuntur.', '<p>Iusto quidem voluptatem rerum repellendus. Error quis ex sit aut. Sequi impedit occaecati et assumenda voluptates accusamus aliquam. Voluptatem occaecati nisi cupiditate qui facilis.</p><p>Dolore et illum qui qui aut. Cupiditate doloremque accusantium dolorum. Explicabo eius et perferendis. Corporis in molestiae et.</p><p>Rerum dolore quos quos ipsum. Saepe modi sint voluptas. Ut quo expedita aut officia qui sed ut.</p><p>Cupiditate necessitatibus debitis eius. Nostrum possimus et mollitia ut ipsum inventore. Odit pariatur quasi velit dolor vitae ut necessitatibus. Sit officiis deleniti sequi.</p><p>Dolorem quam et autem. Sit dolorum nesciunt aut aut esse est officia eos. Illum repellendus autem ut. Magni sed quos eos id.</p><p>Libero et dolores ut consequatur quia ratione quos amet. Esse perspiciatis in sed ad blanditiis. Dolorem iste tempore molestias earum est qui id autem.</p><p>Aut architecto quas minima pariatur. Ut minus tempora sed. Accusantium hic rerum repellat. Vero est tenetur autem necessitatibus est.</p>', NULL, '2023-03-23 01:16:27', '2023-03-23 01:16:27'),
(3, 3, 5, 'Illo quasi est laboriosam quo ea.', 'rerum-placeat-ut-sint-in', 'Quis sapiente dolorem ut fugit inventore a quae. Sit id quia dolorem reiciendis praesentium. Ad ipsam non consequatur ipsum natus inventore harum culpa.', '<p>Et sit impedit alias praesentium est qui veniam. Optio mollitia ut neque repellendus sunt omnis. Ut ipsam ab vitae nam. Nisi accusamus nihil rerum quia mollitia.</p><p>Accusantium distinctio sint fugit quia quo. Saepe libero quam ratione. Officiis velit placeat minima consequatur in recusandae laudantium. Porro unde qui non quam.</p><p>Ratione quis autem velit et labore vel quidem. Eos sit explicabo eos. Ut commodi sequi aut quibusdam. Error voluptatibus eos molestias rerum velit nostrum ut.</p><p>Id odio facilis qui non quo. Neque et dignissimos modi doloremque dolore aut labore magnam. Sunt autem quo odit sint. Voluptatum consequatur earum et sed quia porro.</p><p>Asperiores minus eius totam quibusdam vel non. Quae vel eligendi dolorum reiciendis a corporis assumenda. Sit sit explicabo et voluptas quis. Consequuntur odio hic alias ut delectus dolorem.</p>', NULL, '2023-03-23 01:16:28', '2023-03-23 01:16:28'),
(4, 3, 1, 'Non ducimus accusamus.', 'et-laborum-molestiae-doloremque', 'Ut eaque et exercitationem sit. Totam iure aut minus aliquam et cumque. Maiores nesciunt at minima voluptatum odit.', '<p>Asperiores odio voluptatem velit ea. Enim odio harum est vitae alias. Velit non impedit eum autem.</p><p>Laudantium aperiam quia praesentium saepe voluptate aspernatur. Sunt doloribus blanditiis sit. Officiis fugit deserunt distinctio laudantium sunt autem. Facere deserunt maiores consectetur molestias excepturi architecto.</p><p>Ratione quaerat dicta commodi impedit enim non. Repudiandae ea blanditiis quis ut est. Alias enim cum magni fugiat sint ut. Aut vitae assumenda aut vel dolorem quia. Ipsam est voluptatem repellat delectus minima.</p><p>Est et inventore voluptate. Officia dignissimos expedita repellendus sit. Laudantium cum nulla cum occaecati. Debitis provident qui nihil quas quia voluptates adipisci.</p><p>Et corporis explicabo consequatur alias ad nostrum aliquid. Sunt laborum quidem repudiandae explicabo. Autem quia ipsam deserunt voluptas pariatur.</p><p>Assumenda maxime cum eos ullam repellat eligendi. Omnis necessitatibus et omnis aut architecto velit quis. Ipsum id tenetur sit non voluptas tempore laudantium.</p>', NULL, '2023-03-23 01:16:28', '2023-03-23 01:16:28'),
(5, 3, 2, 'Iusto qui unde.', 'odio-animi-eaque-a', 'Id unde nihil fugit et. Eligendi sint suscipit optio occaecati omnis repudiandae. Itaque repudiandae id necessitatibus beatae. Magnam rerum culpa quod nostrum sit.', '<p>Hic quidem eum non iure quas officiis praesentium. Asperiores commodi exercitationem dolor aliquam ad. Nobis quos vel quos saepe.</p><p>Itaque libero eveniet similique id ut qui cum. Sint sunt temporibus id laudantium necessitatibus non aperiam.</p><p>Praesentium et ut vitae est voluptatibus dolorum sapiente. Et quia expedita exercitationem nulla quas. Officia culpa rerum voluptatem non quam ut vel aliquid. Tenetur corporis enim neque quas vitae placeat aut. Reiciendis aut nihil quaerat quod.</p><p>Quia doloremque sit et sit voluptates. Consequatur unde autem nulla odit incidunt enim harum.</p><p>Ut a qui tempora qui enim vero reprehenderit ipsa. Doloremque facere iure quae dolorum fugit et.</p><p>Laboriosam consequatur est vel natus dolorem libero. Et error officia voluptatem eligendi voluptas ipsam. Culpa omnis et aliquam aut.</p><p>Ex aut aliquid animi omnis quaerat. Quos minus neque quidem occaecati vel vel quas non. Fuga similique rerum repellat voluptatem.</p>', NULL, '2023-03-23 01:16:28', '2023-03-23 01:16:28'),
(6, 4, 4, 'Nihil sint autem.', 'odit-ut-soluta-ipsum-doloremque-tenetur-mollitia-iusto', 'Assumenda molestias quia velit aut non. Magni tenetur dolorem similique explicabo consequuntur. Quia aut ut in. Ea ut pariatur quia aut eos dicta maxime quisquam. Eius quis aperiam quia.', '<p>Sint ex molestias corrupti nihil maiores et. Enim quidem odio eos veritatis beatae quod animi. Deleniti et vel adipisci sed aut sunt. Quis consequatur aut est.</p><p>Pariatur magnam cumque nihil maiores qui et ducimus. Qui ut debitis magnam nemo consectetur. Nisi unde voluptate hic id esse.</p><p>Qui in minima facere debitis. Quisquam beatae quasi tempore et possimus. Beatae vel nostrum fuga tempore aut exercitationem.</p><p>Omnis nobis dignissimos omnis quibusdam dolor mollitia. Ducimus sit ipsam repudiandae ea tempora eos. Autem ut aut eveniet voluptatum ut. Et voluptatem consequatur illum iste commodi saepe ut. Aut voluptas itaque rerum suscipit nemo.</p><p>Quia modi officiis quidem laborum sint eum. Eum est magnam omnis velit voluptas accusantium in. Eum consequatur quo sequi sit accusantium.</p><p>Molestias placeat nisi repellat doloremque ullam quia ex. Dolor dolorum sed recusandae deleniti totam et. Velit nobis minima possimus cumque quos officia. Suscipit autem porro maxime non eum.</p><p>Quos at praesentium aut occaecati hic iure repudiandae. Quam quibusdam qui natus minima modi nemo. Quasi impedit minus doloremque excepturi.</p>', NULL, '2023-03-23 01:16:28', '2023-03-23 01:16:28'),
(7, 3, 3, 'Molestiae rerum similique est.', 'nihil-dolorem-numquam-dolor-excepturi-commodi-veritatis-soluta', 'Adipisci voluptate et accusamus. Voluptatum et qui dolor autem beatae ut facilis. Consequatur ipsa quidem et consequuntur ab. Cum blanditiis voluptas et.', '<p>Aut porro nam magni esse nihil aliquid ut. Iusto beatae nemo voluptates possimus sit facere. Voluptas eaque enim aut officiis.</p><p>Unde excepturi itaque quis voluptas ut minus deserunt qui. Ut beatae voluptatem minus. Aspernatur inventore tempore repellendus et deleniti exercitationem. Qui soluta et qui quidem. Sed veritatis ut nostrum qui consequatur perferendis reiciendis quod.</p><p>Aut magni quod ratione. Sit accusantium facere expedita laboriosam nobis non. Qui voluptas aliquam commodi autem maiores est. Rem quo tempore et et et consequuntur.</p><p>Tenetur illo beatae sapiente dicta iste enim assumenda. Cum beatae sint velit impedit suscipit ab. Perspiciatis rem tempore non enim.</p><p>Repellat saepe voluptatibus consequuntur modi eum. Consequatur libero doloremque autem. Consectetur porro eos tempora tempore.</p>', NULL, '2023-03-23 01:16:28', '2023-03-23 01:16:28'),
(8, 1, 4, 'Repellendus quisquam dolores dicta debitis excepturi quidem dicta necessitatibus.', 'quibusdam-et-voluptatem-quaerat', 'Nobis quia perferendis dolore veniam sit. Hic ut animi nulla ratione praesentium. Est beatae labore libero et minima temporibus quos. Aspernatur placeat quas voluptate tempora.', '<p>Esse beatae non nisi id praesentium qui possimus. Saepe veritatis aperiam minus.</p><p>Temporibus quas qui suscipit ipsum et tenetur. Veniam rerum libero a error hic. Nostrum vero voluptatem est blanditiis ut.</p><p>Deserunt consequuntur nam inventore minima aut. Accusantium quo iure possimus non vitae. Quia neque eos ratione consectetur pariatur. Exercitationem sit aut vitae laudantium deserunt itaque rerum quas.</p><p>Eum quia provident blanditiis dicta necessitatibus quia aperiam. Voluptatem qui et laborum est quia. Quidem consequatur recusandae perspiciatis.</p><p>Facere enim suscipit voluptas. Id non voluptates quia distinctio suscipit eum dolorem. Error saepe unde voluptas ratione laudantium nihil. Non et sit cupiditate praesentium perferendis.</p><p>Vel quisquam nam harum placeat velit accusantium aliquam alias. In quo cupiditate tempore eum. Quia itaque illum magnam rerum. Itaque autem autem exercitationem temporibus id aut.</p><p>Beatae ut qui illum natus et est ut. Explicabo ducimus distinctio sunt ipsa necessitatibus. Odio assumenda hic ad recusandae ipsa. Aut magni eos aliquam aut provident similique earum.</p><p>Modi aut quod est praesentium. Eaque ratione id ea totam deleniti dolorem excepturi. Velit earum velit omnis ullam qui consectetur qui.</p>', NULL, '2023-03-23 01:16:28', '2023-03-23 01:16:28'),
(9, 2, 5, 'Nesciunt officia aut ut id nesciunt quia.', 'error-unde-velit-quia-incidunt-corrupti-incidunt', 'Modi ut ut mollitia magni nisi dicta. Ut maiores facilis quisquam voluptate. Ut suscipit ut sunt dignissimos quibusdam voluptates. Voluptatem unde nihil tempore eveniet facilis.', '<p>Aspernatur est molestiae ut ut qui consequatur cum debitis. Sed fugit quis velit aperiam magni nam similique id. Et non voluptatem harum eius commodi.</p><p>Autem non nihil nulla. Saepe dolorum sit explicabo rerum voluptatem animi. Id excepturi sunt rerum rerum facilis qui. Quae dolores autem voluptas aut assumenda dignissimos.</p><p>Modi rerum vero deserunt et sed blanditiis. Reprehenderit et iure natus qui. Ut debitis beatae iste recusandae fugiat culpa. Voluptatibus tenetur maxime consequatur neque.</p><p>Eos fugit corporis inventore impedit. Ex eum eligendi qui quae accusamus. Magnam consequatur dolorem doloribus sint quos eos excepturi.</p><p>Laborum praesentium accusamus impedit et. Molestias sit eos ipsam repellat. Rerum ut nam eum et officiis. Velit doloremque dolorem impedit ab deserunt. Perspiciatis possimus sit sint explicabo repudiandae et non.</p><p>Deleniti omnis provident non vitae optio sint molestiae maxime. Nisi quis nam unde modi saepe. Dolore ipsum quibusdam ut eius distinctio aut eos et. Repellendus quo maxime tempore voluptatem distinctio impedit tempora.</p><p>Architecto sunt voluptas nihil dignissimos quia eveniet. Reprehenderit totam non doloremque omnis voluptas molestias. Quia ut dolores ut blanditiis error dolor. Consequatur perferendis id ipsam ullam sed et.</p>', NULL, '2023-03-23 01:16:28', '2023-03-23 01:16:28'),
(10, 4, 2, 'Dolorum impedit libero natus voluptate et quia.', 'quae-itaque-quasi-id-quia', 'Doloremque fugit impedit suscipit quo necessitatibus id. Expedita tempora sequi est non autem eaque. Enim ipsam dignissimos cum laudantium reiciendis. Inventore minus ut vitae eligendi nihil.', '<p>Quibusdam voluptas voluptas recusandae voluptas quae asperiores vel. Voluptatum sint et quam a incidunt eligendi mollitia. Est non ut eos et.</p><p>Nam accusantium error eos fugiat accusamus hic. Accusamus voluptas harum ipsam qui. Est ducimus eaque adipisci ut nam. Et at dolorum autem ut omnis suscipit ut vel. Voluptatem modi sed vitae.</p><p>Fuga esse velit minus sit voluptatum eos. Consequatur quia quia modi fuga minus et nesciunt ut. Voluptatem eligendi ullam nihil fugiat facilis ut sed qui. Saepe blanditiis autem perferendis ut dolores eveniet.</p><p>Earum voluptatem qui dolores veritatis animi. Quo hic voluptas doloremque eligendi asperiores sapiente. Exercitationem ab adipisci ea itaque. Voluptate neque culpa ullam autem dolor non.</p><p>Doloribus reiciendis fugiat mollitia eaque. Voluptatem architecto rerum esse minus dolorem. Atque nam rerum aliquid accusamus deserunt libero autem deleniti. Aspernatur et illo ad id necessitatibus aut animi.</p><p>Quo aliquam modi provident ipsam qui natus aut. Ea dolores maxime odio et aut est. Nesciunt numquam quis et tempora minus debitis.</p><p>Itaque ut harum earum. Laudantium dolores ut rerum est autem minus. Quae explicabo consequuntur qui odit.</p><p>Nihil ipsa illum sit dolore. Commodi labore voluptatem eos. Provident non consequatur sed id et debitis. Tempora molestiae autem reiciendis delectus omnis qui. Ad totam doloremque et est.</p><p>Suscipit cupiditate est sint enim. Ab et repudiandae voluptatem. Velit dolor porro blanditiis molestiae dolores itaque exercitationem soluta. Sed commodi ducimus vero ut.</p><p>Dolores ut animi repellat expedita iure tenetur aut. Enim harum reiciendis eligendi doloremque blanditiis corrupti labore. Esse facilis nihil quia quis incidunt hic.</p>', NULL, '2023-03-23 01:16:28', '2023-03-23 01:16:28'),
(11, 2, 4, 'Consequatur non magnam dolorem.', 'rem-aut-ea-aut-modi-qui-temporibus-placeat', 'Velit dicta sed iusto et. Sunt suscipit voluptatem earum sunt id id. Beatae magni doloribus et blanditiis eaque. Tenetur reprehenderit temporibus natus.', '<p>Quas accusantium aspernatur eius velit. Eos non qui architecto commodi et quo recusandae. Ut voluptatibus laudantium dolore earum.</p><p>Aut eum minima eos dolore. Consectetur molestiae architecto cupiditate nam tempore. Tempora et similique officia est a deleniti. Non sunt repellendus exercitationem ut nisi alias. Numquam itaque hic veritatis similique qui amet quibusdam.</p><p>Aperiam facere non quibusdam animi quam at occaecati. Qui est voluptatum quae eius eum ex. Omnis illum et possimus dolorem. Veritatis culpa est tempore sequi nihil sit.</p><p>Amet perspiciatis ea eum enim. Enim quidem dignissimos non debitis quos. Aut et ipsa modi.</p><p>Deleniti in vitae cupiditate voluptate. Deserunt nobis vel exercitationem ad vel. Ratione veniam aspernatur accusantium facere provident. Mollitia velit cumque fugit maiores at.</p><p>Tenetur magni ducimus nemo non quia accusantium. Incidunt reiciendis aut praesentium iure enim assumenda. Sunt qui qui et aperiam sit quos. Neque sed vero sit ea voluptatum placeat.</p><p>Qui vel consequatur est non est. Dolores necessitatibus aut veritatis asperiores veniam dolorum beatae.</p><p>Quaerat ratione est impedit consequatur non. Aut harum corrupti consectetur enim provident. Repellat debitis quam alias maxime.</p><p>Magni et dolorem unde. Sit et totam rerum. Iure aut et recusandae error nemo et est. Et sint atque fugit pariatur ab.</p>', NULL, '2023-03-23 01:16:28', '2023-03-23 01:16:28'),
(12, 2, 3, 'Sapiente quo quidem.', 'assumenda-illo-et-expedita-est-id', 'Distinctio ducimus itaque et. Veniam provident soluta asperiores tempora. Enim provident aut at doloremque. Id dolorum itaque tempora quae officia dicta recusandae. Ipsum est vel commodi minima quos aspernatur tenetur magni.', '<p>Veritatis ut itaque est nemo dolorem itaque quo. Aut sequi maiores suscipit delectus quia et. Sequi facere unde commodi rerum ab sequi.</p><p>Est consequatur iusto fugiat ab consectetur ex. Sed similique enim ad delectus quia omnis.</p><p>Non autem voluptatum modi aspernatur dolorum et. Impedit sequi reprehenderit cumque. Qui a sed voluptatem placeat. Nam dolorem quia veritatis veritatis aut modi aut.</p><p>Eveniet voluptatibus adipisci autem. Est sapiente impedit nihil consequatur ut cupiditate sunt est. Accusantium repellendus officia in.</p><p>Non temporibus illo qui optio ad ut. Nam sed quia non rerum dolorem earum recusandae. Assumenda voluptas ad possimus. Excepturi et quasi corrupti aut nobis vitae accusantium.</p><p>Culpa et ut odio vel eum. Vitae et qui sit a cumque tenetur provident.</p><p>Necessitatibus qui mollitia pariatur sunt iure mollitia consequatur eveniet. Error aut quaerat commodi ut voluptatem. Eum suscipit omnis ut ducimus.</p><p>Nam maiores officia corrupti doloremque et nisi quae eos. Beatae repellendus veniam nesciunt sed temporibus quasi qui sit. Occaecati eum omnis sed et. Voluptas harum doloribus iure aut.</p><p>Aut qui aliquam maxime delectus ab. Perspiciatis dolorem vero at velit aliquid consequatur enim.</p>', NULL, '2023-03-23 01:16:28', '2023-03-23 01:16:28'),
(13, 3, 5, 'Illum consequatur natus tenetur.', 'omnis-odit-et-minus-eaque', 'Veniam debitis dolorem excepturi sint assumenda possimus. Sed atque voluptas quis eos illo ad officiis. Perferendis alias voluptas ut. Iste sed accusamus reprehenderit non ut. Sapiente qui commodi quod repellendus iusto ex.', '<p>Ducimus omnis aut debitis. Sed aliquam autem eveniet aspernatur. Molestiae facere mollitia corrupti quia non et necessitatibus. Vero placeat libero in quam. Sapiente debitis iste distinctio repellendus officiis tenetur.</p><p>Culpa provident nihil et quia. Voluptatibus aut nobis aliquam impedit. Aut itaque saepe animi ipsa sint quae accusamus.</p><p>In eum veniam adipisci voluptatem molestias nemo sunt. Architecto alias sed velit inventore iusto quia quia. Qui nobis beatae velit ea.</p><p>Vel vitae provident veniam et cupiditate. Aut qui dolorem exercitationem iure.</p><p>Praesentium tenetur sunt quia sunt iure magnam reiciendis. Aut et est officia rerum. Id accusantium non molestias ut et.</p><p>Expedita quam voluptas voluptatem maxime neque in cum. Eos nihil sit esse sed non veniam perspiciatis. Qui quia magnam sed amet accusamus sed non qui. Maxime et explicabo aut aliquam facilis praesentium id nostrum.</p><p>Nemo voluptatem sequi provident adipisci at libero maiores laborum. Delectus facilis cupiditate sunt corrupti commodi ut. Voluptas similique nisi quae tempore. Aut veritatis necessitatibus maxime earum.</p><p>Tempora ut veritatis eius nam quam est. Eos sint et ut perspiciatis at. Culpa iusto ad velit. Deleniti dicta praesentium molestiae.</p><p>Laboriosam maiores repellat dignissimos maiores voluptatem placeat nemo. Et perspiciatis veritatis debitis aut dolores quod. Sed debitis sunt voluptas repellendus quia explicabo.</p>', NULL, '2023-03-23 01:16:28', '2023-03-23 01:16:28'),
(14, 4, 4, 'Eos est dolores facere aut.', 'nemo-rem-in-nostrum-ab-laborum', 'Saepe non nulla omnis. Dolores tempora laudantium dolorem atque vitae mollitia. Qui laudantium libero autem provident.', '<p>Quia asperiores aut assumenda temporibus illum placeat. Eligendi ut exercitationem voluptatem. Nostrum ducimus non sunt ut. Harum beatae exercitationem voluptatem.</p><p>Aut quos harum eveniet voluptatum. Totam in sunt iure exercitationem ullam. Autem ut qui commodi dolorem. Ducimus repellat perferendis ut fugiat.</p><p>Adipisci magnam cumque ea. Nam ab et consequatur tempora. Inventore ipsa et odit consequatur sed consequuntur. Maiores molestiae ut et itaque accusamus itaque et.</p><p>Eum aperiam ipsum neque est tempora quia et. Aut est porro quisquam nulla dolore minus. Sunt esse fugit aut consectetur beatae vel est. Quaerat consequatur eos est laudantium repellat quae sed.</p><p>Illum amet voluptas ut dolore. Temporibus deleniti architecto error nulla voluptatem sed eum. Dolor qui voluptas hic molestias aut. Pariatur fugiat itaque error ratione magnam culpa. Ut corrupti distinctio commodi accusantium velit quaerat.</p><p>Unde ipsa ullam eum perferendis ab quam quas. Maiores eveniet voluptatem aut odio est. Vitae ab doloremque porro id.</p><p>Asperiores ut possimus est maiores maxime doloremque. Molestiae eius a sapiente porro culpa non et. Quisquam cum dolorem inventore saepe eos. Suscipit fugiat mollitia quam ipsam nulla quia.</p><p>Nisi inventore sed aut libero. Reiciendis sunt molestiae provident aliquam. Qui debitis quam nihil eligendi.</p>', NULL, '2023-03-23 01:16:28', '2023-03-23 01:16:28'),
(15, 3, 2, 'Nisi recusandae commodi sit fuga atque est et.', 'nam-iusto-laudantium-nulla-aut', 'Nemo praesentium iure possimus et. Ullam voluptatem magni pariatur id. Occaecati enim et nemo voluptatem. Vitae vel nihil ut tempora et. Eum ipsam aut porro.', '<p>Unde qui cumque commodi qui recusandae. Voluptatum eos et voluptas libero rerum dignissimos facilis. Soluta tenetur excepturi numquam consectetur labore. Tenetur molestiae sit assumenda iure a.</p><p>Ea labore magni sit ea ex asperiores quis. At rem laborum dolor minus ea. Tempore eveniet cumque ut perspiciatis quia quasi.</p><p>Vitae et iusto saepe beatae. Quam autem ratione praesentium hic voluptas. Molestiae quia id quo.</p><p>Sit voluptatem necessitatibus dolores blanditiis quia et id. Quidem qui sed dignissimos ut vel qui. Placeat totam consequatur dolorem voluptates laborum. Nam quibusdam provident similique nam.</p><p>Tempore omnis ratione alias cupiditate facilis. Consequatur sit voluptatum eius distinctio harum voluptatibus quaerat. Id magni debitis exercitationem dignissimos doloribus eaque itaque. Est aperiam dolores mollitia voluptas illo numquam quam rerum.</p><p>Aperiam error itaque id dignissimos. Voluptates minus aut nesciunt eos molestiae. Eaque dignissimos et deleniti ratione dignissimos quam.</p><p>Laboriosam qui dignissimos itaque sapiente quae. Nulla dolor repellendus ipsa ea perferendis fuga sunt.</p>', NULL, '2023-03-23 01:16:28', '2023-03-23 01:16:28'),
(16, 1, 4, 'Illum explicabo exercitationem accusantium.', 'vel-ratione-error-dolor-excepturi', 'Quasi qui quasi repellendus. Excepturi vel modi soluta sit dicta.', '<p>Qui consequuntur ut quis debitis. Assumenda corrupti harum excepturi fuga blanditiis rerum labore. Labore qui voluptatem vel eveniet.</p><p>Qui numquam id quo quia aperiam. Sit quia autem veritatis quas qui. Ex soluta aut non vel autem harum sit.</p><p>Eligendi quisquam qui aut et error distinctio. Non eius dicta exercitationem expedita soluta culpa. Corporis ut cumque quam architecto.</p><p>Atque aut qui id. Ipsum perspiciatis eius natus deserunt. Voluptatem provident fugit eius debitis omnis praesentium.</p><p>Maiores minima quia quo alias fugit sit tempora. Et commodi molestiae voluptatem facilis eius officia.</p>', NULL, '2023-03-23 01:16:29', '2023-03-23 01:16:29'),
(17, 4, 4, 'Excepturi consequatur perspiciatis aliquid suscipit.', 'enim-perspiciatis-eveniet-omnis-asperiores', 'Temporibus et deserunt cumque voluptatem enim et et et. At sunt exercitationem praesentium ducimus numquam soluta.', '<p>Incidunt iusto est earum hic deleniti. Aspernatur laboriosam labore asperiores repellat perspiciatis magni. Quia modi commodi corrupti reiciendis consequatur dolor.</p><p>Non qui dolorum eveniet incidunt et dolorem aut. A est et ut et placeat laborum. In explicabo et adipisci error neque.</p><p>Omnis explicabo iure consectetur quidem. Consectetur debitis repellat rem numquam. Reiciendis ea aliquam illo sint ipsa.</p><p>Temporibus rem aut alias rem. Ab voluptatibus id qui. Totam maxime rerum rem et aut tempora. Non tempora natus nihil saepe.</p><p>Labore itaque et quod cum. Natus sed qui blanditiis quasi.</p>', NULL, '2023-03-23 01:16:29', '2023-03-23 01:16:29'),
(18, 2, 1, 'Consectetur ut autem ratione.', 'tempora-distinctio-facilis-esse-dolorem-tempora-enim', 'Quae et impedit nihil praesentium quod nihil eaque et. Et ea velit minima dicta animi ad culpa. Dolorem quaerat itaque nesciunt.', '<p>Ad provident sunt quasi impedit. Recusandae voluptatem quis rerum delectus qui iste dolores. Ut et consequuntur inventore sunt. Iure accusantium quas est dolorem quasi.</p><p>Sit expedita quia repudiandae est molestiae est error. Iusto quisquam quam quas voluptatibus rerum. Quidem eveniet quidem explicabo tempora. Sit aspernatur molestiae vitae consequatur aut.</p><p>Qui voluptas provident sequi laudantium laboriosam culpa aperiam. Blanditiis et est quo quaerat ut libero. Voluptas occaecati perspiciatis et qui dolores a veritatis. Aliquam quidem ut sed eum ipsum eos quibusdam.</p><p>Quidem pariatur reiciendis eligendi. Sunt officiis quo aut laborum sint sit. Esse praesentium voluptates labore excepturi magnam minima ad.</p><p>Accusamus iste ipsam assumenda exercitationem. Ipsam quis aut beatae ullam in rerum. Est iure vel dolorum perferendis ea voluptas nam beatae.</p><p>Quisquam voluptatem autem voluptas. Assumenda eligendi suscipit optio et et nihil. Similique qui sit ipsa culpa.</p><p>Odio illum omnis ut sed. Laborum incidunt placeat odit. Quibusdam totam dolores illo dolorum ipsa reiciendis. Amet quaerat adipisci deleniti ut quia earum laborum.</p>', NULL, '2023-03-23 01:16:29', '2023-03-23 01:16:29'),
(19, 1, 4, 'Et fuga fuga saepe reiciendis laborum et molestiae.', 'rerum-dolorum-amet-laudantium-ipsa-rerum', 'Ipsam quod vel doloremque fugiat. Animi repellendus maxime rerum consectetur soluta. Nemo magni natus impedit harum sit molestiae voluptates.', '<p>At sunt a quidem omnis. Dignissimos facere est accusamus totam blanditiis eveniet iure laborum. Maxime inventore in ducimus deleniti est id doloribus.</p><p>Eos enim aliquid quasi nostrum atque. Ea dolor mollitia delectus exercitationem quasi aperiam. Fugit quibusdam veniam ipsam error. Beatae hic eius quas.</p><p>Vitae ut est laudantium esse odit. Beatae laborum soluta ipsum quibusdam quasi.</p><p>Fugiat laudantium omnis veritatis aliquam quo eum a. Officia esse voluptas aut quia iure omnis ex rerum. Animi vel aut similique veniam tempore quo. Non dolores quisquam nisi vero.</p><p>Architecto voluptatem aut in debitis et consequatur. Voluptatem accusantium et necessitatibus et iusto. Possimus id minus et. Sit repellat illum consequatur optio temporibus nihil. Rem ut ut a ipsa praesentium facere.</p><p>Et ratione praesentium aliquid ut iure vel. Et omnis sint ea animi vitae eaque a. Magnam minima molestiae possimus delectus possimus. Et eos id eveniet amet et.</p>', NULL, '2023-03-23 01:16:29', '2023-03-23 01:16:29'),
(20, 1, 1, 'Odio vel iure maxime et occaecati adipisci.', 'necessitatibus-eaque-ipsam-excepturi-aspernatur-dignissimos', 'Est cupiditate ut nam. Ullam ut cum praesentium odit officiis est. Incidunt aut voluptatem corporis odio.', '<p>Quia incidunt consectetur iure rerum eum quidem nihil. Magnam suscipit inventore et magni nobis. Nobis aliquid dolorem eligendi molestiae ex culpa distinctio. Accusamus culpa harum necessitatibus cupiditate quidem quae quis. Possimus quae aut quia ut voluptate vero vitae excepturi.</p><p>Cum qui error reprehenderit voluptatum aut iure. Totam dolore ullam perspiciatis. At facere temporibus et et tempora quos dicta. Sunt id aut molestias voluptas ipsa voluptas et corrupti.</p><p>Ut cum at repellendus nihil. Non ea perspiciatis nisi quibusdam. Dolor qui recusandae atque et libero ullam cum.</p><p>Cupiditate enim quis ipsa ullam sunt ex. Tenetur incidunt velit et quas ducimus tenetur consectetur deleniti. Libero ut non impedit aut eos iste eum. Sit quo ut exercitationem cum rem id sunt.</p><p>Iste cum aspernatur et veniam ea voluptates eligendi. Non aspernatur molestiae voluptas voluptas dolorem eaque rem. Maxime debitis quasi possimus deleniti officiis vitae. Quae beatae quis aperiam dolor.</p><p>Labore dolorem et libero debitis. Corrupti mollitia autem fuga. Asperiores facilis culpa consequatur nihil. Sunt cum fugiat commodi in non.</p><p>Repudiandae est nemo autem beatae et. Autem modi eius officia natus animi rerum. Inventore necessitatibus at sint quasi est eum architecto. Et corrupti cupiditate molestiae aut.</p><p>Error omnis reprehenderit amet debitis sit. Possimus labore voluptatem numquam amet tempora voluptatibus. Magnam deleniti provident possimus vero.</p><p>Adipisci in dolore amet est dolor est eum. Laborum quia ratione incidunt recusandae earum et. Eum quae est rerum eum et sit minima.</p><p>Recusandae iure sed dolore asperiores beatae fugiat vel. Ad vero ab quasi nam deserunt voluptates illo. Et repellat velit est sed debitis nostrum. Omnis consequatur quis nam culpa.</p>', NULL, '2023-03-23 01:16:29', '2023-03-23 01:16:29'),
(21, 2, 1, 'Quaerat modi.', 'sapiente-quam-necessitatibus-est-nihil-nobis-similique', 'Ut illo voluptas quos. Eos atque architecto omnis incidunt quaerat est. Non delectus consequatur ut velit et.', '<p>Deleniti vitae dolor et dolorem. Quaerat facere consequatur iusto minima cupiditate est sint. Expedita reiciendis nostrum culpa laboriosam ut excepturi.</p><p>Ut quibusdam qui facilis tempore ut est et. Accusamus mollitia magnam sint et. Neque voluptas et vel error temporibus repellendus.</p><p>Nam est soluta omnis aut animi sit molestias. Accusamus nemo cumque soluta sunt aperiam. Ipsa perspiciatis in velit nisi quis atque. Molestias voluptatem magnam necessitatibus aliquid nihil nam.</p><p>Maxime impedit dolore delectus rem nihil vitae temporibus. Nostrum ab in voluptas. Id et sed qui. Et quia sunt qui eum aut.</p><p>Omnis minima iusto aliquam voluptas aut ut vel. Maiores perferendis in et quibusdam. Accusamus sint ut sint vel rerum. Quia ad nihil dicta molestias corporis voluptate tempore.</p><p>Iusto fuga quasi beatae suscipit ut eum. Cum vitae soluta exercitationem veniam quo incidunt. Veritatis ut ut ut ratione reiciendis voluptatum.</p><p>Commodi sed occaecati natus laboriosam. Voluptas rerum cumque non dolorem. Qui tempora autem sed facilis ut in.</p><p>Impedit est nulla hic sunt. Excepturi eius dolor nemo debitis amet repellendus. Laboriosam a dolores natus. Explicabo a aut quo impedit est illo.</p>', NULL, '2023-03-23 01:16:29', '2023-03-23 01:16:29'),
(22, 3, 1, 'Numquam impedit numquam corporis alias laboriosam.', 'animi-aut-sunt-quam-ad-beatae-vitae-voluptas', 'Sed aperiam repudiandae rem non aut et. Voluptas quaerat omnis quo animi dolorum voluptate rem. Repellendus velit error maiores et et quas.', '<p>Tempora voluptatem omnis aliquid tempore itaque. Blanditiis sed consequuntur est a quo voluptatum omnis quo. Amet in eos asperiores accusantium nesciunt quos. Voluptatibus et omnis perspiciatis dolor.</p><p>Quibusdam veritatis qui voluptatem quia. Ducimus est iste in voluptatem placeat assumenda. Dolorem nesciunt quis vitae voluptas voluptatibus expedita autem.</p><p>Est voluptatem quia ut totam. Molestiae enim explicabo quasi. Distinctio quidem distinctio quae enim laudantium vero nostrum. Molestiae aut asperiores magnam perspiciatis.</p><p>Est earum temporibus ut dolorum ullam aut. Inventore quas quidem reiciendis magni. Minus at accusamus unde ut. Voluptas blanditiis neque omnis earum numquam est distinctio.</p><p>Quia et eum repellendus aperiam. Corrupti natus iure velit quasi dolores sed et ut.</p><p>Nam consequatur voluptatem illum aliquid labore. Repellat repellendus deserunt sit animi dolores amet. Dolorem animi dolorem qui.</p><p>Ad mollitia non enim quis itaque ipsam. Ratione ut doloremque sed ut voluptatem. Id et delectus temporibus omnis repudiandae et. Molestiae iste repellendus aperiam illum molestiae quis.</p><p>Qui ut qui aut repellendus natus aut voluptates libero. Consequatur animi accusamus natus incidunt distinctio commodi. Temporibus amet ut aut facere. Aut facilis eaque et ea voluptatem.</p>', NULL, '2023-03-23 01:16:29', '2023-03-23 01:16:29'),
(23, 4, 3, 'Qui et velit aut.', 'et-fugit-nesciunt-fugit-est', 'Voluptatem animi voluptatem consectetur quas laudantium assumenda facilis maxime. Non quia reprehenderit earum officia. Nisi quasi est dolorem iste aperiam est. Maiores quod nihil sit. Natus rem consequuntur qui sapiente iusto et voluptate.', '<p>Voluptatum sit qui consequatur aut placeat. Minus iure necessitatibus et voluptatem. Sequi quia beatae in autem quis repellendus.</p><p>Et quo mollitia reiciendis nam nisi veritatis ea. Tenetur sint omnis repellendus omnis ducimus eaque ut. Minus possimus alias voluptas nisi ipsum architecto eos.</p><p>Sed quos enim labore aut. Labore ratione et vel enim. Minima omnis qui eum repellendus dignissimos quia sit.</p><p>Quaerat molestiae dolore quibusdam eum et aliquam. Qui ea voluptatibus consequatur amet dolor. Et temporibus aspernatur itaque vero ab sint. Ipsam nobis eius vero.</p><p>Eligendi dolor quibusdam sed molestiae rem eius ea. Ipsa repudiandae est aperiam dolores molestiae. Quis est maxime voluptates alias laudantium. Quod in a voluptatem et accusamus assumenda dolorem optio.</p><p>Eum quaerat sapiente sit qui. Id velit maxime vitae earum autem a. Aspernatur repudiandae temporibus et omnis.</p>', NULL, '2023-03-23 01:16:29', '2023-03-23 01:16:29'),
(24, 2, 1, 'Omnis incidunt amet.', 'vel-porro-accusantium-est-harum-suscipit-id-perferendis-voluptatem', 'Distinctio repudiandae quibusdam est qui. Voluptate reprehenderit quia reprehenderit dolorem.', '<p>Minus dolorum iure aut consequatur id et. Et repellat voluptatem enim. Minus ut laudantium laboriosam rerum et. Aliquid enim aliquid ea et.</p><p>Voluptas adipisci ducimus non earum est quidem hic eum. Cum maxime minus quaerat ut repellendus. Sunt blanditiis qui distinctio eveniet adipisci.</p><p>Rem placeat voluptatum modi aspernatur ducimus accusantium. Dolor qui exercitationem sequi voluptates eligendi saepe sunt rerum. Nostrum voluptatem officia delectus iure. Sunt iusto aut quo asperiores.</p><p>Nulla rem non quae eaque quibusdam ipsa natus. Quia dicta sunt sed repellat. Et qui nisi dolor rerum. Vero voluptatum et nam sequi aut omnis minus consequatur.</p><p>Alias provident quo architecto consequuntur est consequatur. Quia tempora saepe eius porro reprehenderit recusandae. Deserunt fuga accusantium illo ipsam tenetur accusamus optio quaerat.</p><p>Deserunt est at atque consequatur iure. Nesciunt ad facere harum dolores et quo voluptatibus.</p><p>In sunt cupiditate omnis qui inventore est. Cum officia ut quasi est aspernatur ipsa eaque. Sequi quam facilis natus.</p><p>Corporis delectus saepe aliquam impedit veniam. Eveniet necessitatibus aut suscipit adipisci.</p><p>Aliquam aut culpa aut aut. Et aliquam labore non nemo. Dolor illo dolore corporis ut provident accusantium fugit quia. Dicta aperiam porro quas repellendus. Molestias et voluptas qui nemo.</p>', NULL, '2023-03-23 01:16:29', '2023-03-23 01:16:29'),
(25, 3, 3, 'Quia voluptatem molestias sit voluptas consequatur.', 'accusamus-explicabo-qui-iste-nulla', 'Tenetur nihil et minima voluptatibus eum. Nam modi iure doloribus vel vero ullam.', '<p>Et rem omnis inventore nostrum recusandae. Repellat dolorem aperiam unde. Dolore delectus recusandae facere deleniti debitis temporibus qui.</p><p>Cupiditate reiciendis beatae odit in quis. Asperiores et quo maxime ratione non. Officiis eum facilis nesciunt blanditiis laboriosam ut. Quae cumque modi facere occaecati.</p><p>Occaecati id soluta ratione et velit. Unde aut minima dicta nisi qui recusandae voluptatibus. Aut sapiente ut repudiandae aspernatur dicta aut. Officiis quis aut delectus itaque et.</p><p>Enim ab sint est molestiae sed eos. Aperiam sed omnis sint maxime officiis nihil. Illo suscipit nobis rerum qui minima tempore.</p><p>Iusto ut voluptatem quisquam cumque quia asperiores et. Consectetur est molestiae odit non repellat. Velit enim sed quasi a dolores eum voluptas.</p><p>Possimus rem sit fugit quos quos est enim minima. Sed sint facilis vel quibusdam voluptas molestiae molestias. Qui corrupti aliquam voluptatum dolorem magni. Est perspiciatis vel voluptatem et et vitae aspernatur omnis.</p>', NULL, '2023-03-23 01:16:29', '2023-03-23 01:16:29'),
(26, 2, 5, 'Veniam accusamus alias.', 'voluptatem-autem-amet-aliquid-deserunt-inventore-explicabo-qui', 'Alias aut quis quia veniam eius quia quia. Aut quis voluptas ducimus aut sit sunt. Provident illo voluptatem voluptatem dolores accusantium. Molestias voluptatibus alias ut.', '<p>Quas quos in cupiditate vitae reprehenderit quia. Nulla soluta quae qui doloribus et. Doloremque cupiditate rerum magnam optio ex autem et.</p><p>Ducimus quia et dolor ducimus in eaque voluptate. Et voluptatem suscipit quas aut. Voluptatem expedita cum sint non harum consectetur. Eaque ex earum unde sunt aut dolore.</p><p>Dignissimos vitae vero enim amet quia enim. Placeat placeat perferendis et ut. Vel ad debitis adipisci earum. Error sequi soluta voluptatibus officia.</p><p>Sequi minima voluptates tenetur et vel. Veniam laudantium mollitia ea dolor eum harum molestiae repudiandae.</p><p>Corrupti atque est beatae odio molestias illum voluptas. Est eum similique earum consectetur. Eaque eos at totam et quisquam. Hic illum iste harum commodi esse nihil.</p>', NULL, '2023-03-23 01:16:29', '2023-03-23 01:16:29'),
(27, 2, 3, 'Optio quia minima.', 'qui-repellendus-quia-voluptatem-et-eius-corporis-et', 'Itaque nam nisi deserunt ut quibusdam ipsum. Rerum tempora ea et iusto quis aut laborum. Numquam quis minima dolorem aliquid unde et voluptate.', '<p>Cupiditate et vel at rem. Iusto reiciendis qui sint qui voluptatem et. Dolorem omnis ut nihil eligendi ipsa.</p><p>Sed accusamus qui error animi et quia. Dignissimos esse illum error dolor consequatur. Ut et est odio sapiente aut eaque. Ratione qui consequuntur exercitationem asperiores voluptates sunt.</p><p>Nihil quos maiores perferendis placeat autem dolor commodi. Cumque reiciendis quidem optio quasi qui. Ea earum quia repellat voluptas perspiciatis explicabo.</p><p>Et quo placeat quas repellendus autem. Accusantium recusandae suscipit doloribus sint. Vitae modi placeat saepe quo rerum eum. Dolorum consequatur voluptate voluptatem atque aut consequatur praesentium. Quia sit velit rerum voluptates.</p><p>Nam cumque iste perspiciatis. Veritatis odit exercitationem molestiae doloremque consequatur ab. Sint sit autem autem voluptatum natus.</p><p>Aut facilis at quis rerum reprehenderit et. Consequatur saepe dolores incidunt et laboriosam quo. Laudantium similique est ut perspiciatis.</p><p>Enim quis aut quidem maxime laudantium ducimus incidunt. Cupiditate ut et saepe doloremque voluptatibus recusandae. Quia ut est et explicabo voluptates reprehenderit et. Nam ex dolor velit soluta necessitatibus. Voluptas et eveniet explicabo voluptatem laborum illum pariatur.</p>', NULL, '2023-03-23 01:16:29', '2023-03-23 01:16:29'),
(28, 1, 1, 'Accusamus impedit delectus.', 'est-veniam-consequuntur-magni-neque', 'Eaque ea quo similique vitae non voluptatem. Saepe nisi a facilis deserunt dolorem. Rerum voluptas architecto non.', '<p>Voluptas unde dignissimos harum ut officia aut tempore. Est odio ut similique quidem provident ex quia. Fuga sunt quasi amet temporibus.</p><p>Sed velit asperiores commodi eos rerum. Voluptates dolor voluptatem dignissimos rerum. Voluptate est totam in aut et laudantium fugit. Dolore distinctio a dicta earum deserunt.</p><p>Numquam voluptatum nostrum fuga ullam. Mollitia modi repellat incidunt optio voluptas. Dolorum libero velit reiciendis et perferendis quo reprehenderit.</p><p>Est commodi eum esse dolor cumque fugit assumenda rerum. Enim dolores qui enim exercitationem. Architecto id et temporibus ut est. Explicabo saepe saepe voluptas eos.</p><p>Ratione molestiae nostrum illum saepe in porro. Velit voluptatem ratione quaerat in nemo id minus.</p><p>Aperiam et et pariatur temporibus ab adipisci mollitia. Optio consequuntur officia et voluptas aut. Sint tempore sit sunt sunt in accusantium velit est. Repellat repellat at consequatur officia at maiores.</p><p>Odit aut et velit doloribus. Aut voluptates ut quos rem rerum.</p><p>Quod et perspiciatis beatae eum voluptates quia nobis. Qui sapiente laudantium sint est hic labore perspiciatis. Illum quod possimus et consequatur voluptate amet.</p>', NULL, '2023-03-23 01:16:29', '2023-03-23 01:16:29'),
(29, 4, 2, 'Id est eum.', 'adipisci-delectus-quos-tempore-facere-id', 'Est inventore quo eligendi beatae molestiae. Dolorem similique assumenda eos quos. Voluptatibus quisquam quae at. Rem odio suscipit ea voluptas esse.', '<p>Facilis occaecati sed iure dolores. Dolores repudiandae sint aut impedit.</p><p>Dolore praesentium voluptas tempora ut voluptatem odit laboriosam. Sit ex omnis numquam voluptatibus voluptas. Rem distinctio voluptas et eum distinctio consequatur architecto quibusdam.</p><p>Hic provident rerum aut est dolor eius consequatur. Quia unde et dolorum magni. Et inventore vel id qui libero incidunt eos neque. Recusandae ad cumque ullam odio dolor sit tenetur iure.</p><p>Aut et aut et eveniet. Assumenda cumque qui porro laudantium cum minus. Recusandae quam rerum sint ut autem. Ullam perspiciatis enim ea praesentium officiis quasi omnis.</p><p>Quia maxime et iure voluptas aut. Numquam possimus dolor velit ut velit veritatis ex dolorem. Dolor facilis qui totam error illo accusamus. Aut et nulla maiores aut rerum voluptas deleniti.</p><p>Officia nihil facilis eaque autem ipsam est qui autem. Est deserunt atque sapiente labore eius. Est deleniti molestiae expedita architecto odio nihil. Corrupti incidunt sed vel illo tempore dolorem. Aut voluptatibus autem eum labore et fuga doloribus.</p><p>Voluptatibus numquam dolorum cupiditate impedit corporis soluta fugit. Dolorem est et consequatur maxime. Deleniti expedita voluptatem quod enim suscipit ea.</p>', NULL, '2023-03-23 01:16:29', '2023-03-23 01:16:29'),
(30, 1, 1, 'Accusamus asperiores itaque.', 'voluptate-accusamus-velit-et-velit-fugiat-qui', 'Autem a saepe vel incidunt nihil eaque harum deserunt. Rem aut aut distinctio. Aut beatae consectetur aut fugit eos. Non officiis rerum quisquam neque beatae.', '<p>Aperiam earum molestiae voluptatem qui mollitia est. Error a ex omnis dolorem adipisci voluptate ut voluptatum. Et dignissimos et modi omnis illum totam ipsum. Exercitationem error sit aut saepe facere eum impedit. Necessitatibus consectetur porro ut sunt.</p><p>Ut officiis nobis voluptas porro natus aut maxime. Et ducimus eaque delectus repellat et molestias incidunt est. Nulla reiciendis quos excepturi doloribus fugiat ipsum minima.</p><p>Et neque non maxime aperiam nobis impedit. Omnis similique voluptas aliquid ut at vel. Soluta totam alias illo delectus doloribus sunt totam molestias. Labore aut esse eum tempora maxime quidem qui.</p><p>Et atque mollitia voluptas odio iure. Magni aut voluptates et eos odit voluptatem hic. Et velit est autem asperiores in. Ullam magnam sunt magni necessitatibus et enim.</p><p>In qui sequi aliquam hic fugiat atque. Sunt possimus ducimus quibusdam reprehenderit cumque. Optio dicta distinctio qui nihil voluptatem et enim. Inventore commodi illum doloremque natus asperiores.</p>', NULL, '2023-03-23 01:16:29', '2023-03-23 01:16:29'),
(32, 2, 3, 'Website Kesembilan', 'website-kesembilan', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.&nbsp;Ullam, deleniti provident tempore tempora veniam culpa aspernatur a ducimus dolor voluptate iure voluptatibus quaerat quidem earum praese...', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit.&nbsp;</div><div><br></div><div>Ullam, deleniti provident tempore tempora veniam culpa aspernatur a ducimus dolor voluptate iure voluptatibus quaerat quidem earum praesentium, dolorem non accusantium ipsum adipisci error. Atque accusamus nulla fugit temporibus ipsam neque eum dolorum minima fuga expedita voluptates, optio, sunt voluptatibus quasi placeat rem explicabo?&nbsp;</div><div><br></div><div>Accusantium molestias deleniti quaerat tempore maiores corrupti tempora voluptatem? Reiciendis delectus repudiandae eaque id. Quidem, odit quos eaque dignissimos illum esse deserunt quas recusandae, quisquam porro inventore omnis? Sapiente, illo natus deserunt unde minus ducimus possimus animi quam et saepe eos inventore debitis architecto.&nbsp;</div><div><br></div><div>Libero ab, pariatur ex facilis alias odio molestias et odit ad non dolor deleniti architecto, quia excepturi qui eos voluptatum quo sed adipisci? Deserunt dignissimos, quo aperiam sint iusto molestias commodi soluta mollitia. Aliquid minima sunt deleniti explicabo quos, officiis sint quam voluptates cupiditate voluptas molestiae iste, praesentium error? Error voluptas consequuntur magnam delectus, architecto tempora voluptatibus expedita nulla dignissimos libero aspernatur cumque incidunt ipsum quas pariatur neque nobis eligendi fuga earum beatae consequatur?&nbsp;</div><div><br></div><div>Earum enim quae, quisquam porro impedit ipsum fugit neque eos magnam commodi exercitationem ea error quasi, aspernatur sed dolorum qui officia. Nostrum earum ducimus consequuntur! Odio qui doloribus consequuntur hic.</div>', NULL, '2023-03-29 20:39:30', '2023-03-29 20:39:30');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sammy Deckow', 'blick.elisha', 'athena15@example.net', '2023-03-23 01:16:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nDq5nDHKVp', '2023-03-23 01:16:26', '2023-03-23 01:16:26'),
(2, 'Rozella Beer PhD', 'ernie33', 'gideon54@example.net', '2023-03-23 01:16:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XqCtVuLqYV', '2023-03-23 01:16:26', '2023-03-23 01:16:26'),
(3, 'Hollie Baumbach MD', 'jerome.hammes', 'drippin@gmail.com', '2023-03-23 01:16:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WYsuyplh0jXM3CsvXtB5TxuAgw4I6DIAZacMfXqgBOktTGj6tlm82rYAc5FB', '2023-03-23 01:16:27', '2023-03-23 01:16:27'),
(4, 'Mr. Zion Carter', 'nash.goldner', 'afton98@gmail.com', '2023-03-23 01:16:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'poawMb4oHT0ehv6DLpafnmDpFtX70ryaM6PiIGBCHMfxZ5Xlcw12eCynPcG5', '2023-03-23 01:16:27', '2023-03-23 01:16:27'),
(5, 'Amelia Rodriguez MD', 'marks.harley', 'paige.shanahan@example.net', '2023-03-23 01:16:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3vzt5wp3Pq', '2023-03-23 01:16:27', '2023-03-23 01:16:27'),
(9, 'siapa saja', 'siap', 'asep@gmail.com', NULL, '$2y$10$.v8QOoPss1vuaRzNleAsC.hFV3ipt3626K.8gbTx1s5RP5P4h2nXa', NULL, '2023-03-27 00:50:32', '2023-03-27 00:50:32');

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
