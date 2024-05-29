-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: brandmeup_db
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
INSERT INTO `failed_jobs` VALUES (1,'86f0795c-9c5a-4455-af64-c6c3cbf18c89','redis','default','{\"pushedAt\":\"1715551211.6678\",\"uuid\":\"86f0795c-9c5a-4455-af64-c6c3cbf18c89\",\"timeout\":null,\"tags\":[\"Inovector\\\\Mixpost\\\\Models\\\\Workspace:3\"],\"id\":\"86f0795c-9c5a-4455-af64-c6c3cbf18c89\",\"maxExceptions\":null,\"backoff\":null,\"displayName\":\"Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\",\"maxTries\":null,\"type\":\"job\",\"failOnTimeout\":false,\"silenced\":false,\"retryUntil\":null,\"data\":{\"command\":\"O:42:\\\"Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\\\":2:{s:53:\\\"\\u0000Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\\u0000workspace\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:34:\\\"Inovector\\\\Mixpost\\\\Models\\\\Workspace\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:51:\\\"\\u0000Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\\u0000command\\\";s:27:\\\"mixpost:run-scheduled-posts\\\";}\",\"commandName\":\"Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\"},\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"attempts\":1}','Illuminate\\Queue\\MaxAttemptsExceededException: Inovector\\Mixpost\\Jobs\\WorkspaceArtisanJob has been attempted too many times. in /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/MaxAttemptsExceededException.php:24\nStack trace:\n#0 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(785): Illuminate\\Queue\\MaxAttemptsExceededException::forJob()\n#1 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(519): Illuminate\\Queue\\Worker->maxAttemptsExceededException()\n#2 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(429): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts()\n#3 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#4 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#5 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(138): Illuminate\\Queue\\Worker->daemon()\n#6 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(121): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#7 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/horizon/src/Console/WorkCommand.php(51): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#8 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Laravel\\Horizon\\Console\\WorkCommand->handle()\n#9 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#10 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#11 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#12 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#13 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#14 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute()\n#15 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Console/Command.php(181): Symfony\\Component\\Console\\Command\\Command->run()\n#16 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run()\n#17 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand()\n#18 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun()\n#19 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run()\n#20 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#21 {main}','2024-05-12 22:01:42'),(2,'de4bcff5-8b08-4d9e-90c3-de39e29df6e9','redis','default','{\"pushedAt\":\"1715580011.1787\",\"uuid\":\"de4bcff5-8b08-4d9e-90c3-de39e29df6e9\",\"timeout\":null,\"tags\":[\"Inovector\\\\Mixpost\\\\Models\\\\Workspace:3\"],\"id\":\"de4bcff5-8b08-4d9e-90c3-de39e29df6e9\",\"maxExceptions\":null,\"backoff\":null,\"displayName\":\"Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\",\"maxTries\":null,\"type\":\"job\",\"failOnTimeout\":false,\"silenced\":false,\"retryUntil\":null,\"data\":{\"command\":\"O:42:\\\"Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\\\":2:{s:53:\\\"\\u0000Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\\u0000workspace\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:34:\\\"Inovector\\\\Mixpost\\\\Models\\\\Workspace\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:51:\\\"\\u0000Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\\u0000command\\\";s:31:\\\"mixpost:import-account-audience\\\";}\",\"commandName\":\"Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\"},\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"attempts\":1}','Illuminate\\Queue\\MaxAttemptsExceededException: Inovector\\Mixpost\\Jobs\\WorkspaceArtisanJob has been attempted too many times. in /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/MaxAttemptsExceededException.php:24\nStack trace:\n#0 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(785): Illuminate\\Queue\\MaxAttemptsExceededException::forJob()\n#1 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(519): Illuminate\\Queue\\Worker->maxAttemptsExceededException()\n#2 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(429): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts()\n#3 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#4 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#5 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(138): Illuminate\\Queue\\Worker->daemon()\n#6 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(121): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#7 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/horizon/src/Console/WorkCommand.php(51): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#8 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Laravel\\Horizon\\Console\\WorkCommand->handle()\n#9 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#10 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#11 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#12 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#13 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#14 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute()\n#15 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Console/Command.php(181): Symfony\\Component\\Console\\Command\\Command->run()\n#16 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run()\n#17 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand()\n#18 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun()\n#19 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run()\n#20 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#21 {main}','2024-05-13 06:01:42'),(3,'2ad5b5d6-4fb4-43a0-973e-d1b2d5b91078','redis','default','{\"pushedAt\":\"1715601611.9526\",\"uuid\":\"2ad5b5d6-4fb4-43a0-973e-d1b2d5b91078\",\"timeout\":null,\"tags\":[\"Inovector\\\\Mixpost\\\\Models\\\\Workspace:3\"],\"id\":\"2ad5b5d6-4fb4-43a0-973e-d1b2d5b91078\",\"maxExceptions\":null,\"backoff\":null,\"displayName\":\"Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\",\"maxTries\":null,\"type\":\"job\",\"failOnTimeout\":false,\"silenced\":false,\"retryUntil\":null,\"data\":{\"command\":\"O:42:\\\"Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\\\":2:{s:53:\\\"\\u0000Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\\u0000workspace\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:34:\\\"Inovector\\\\Mixpost\\\\Models\\\\Workspace\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:51:\\\"\\u0000Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\\u0000command\\\";s:27:\\\"mixpost:run-scheduled-posts\\\";}\",\"commandName\":\"Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\"},\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"attempts\":1}','Illuminate\\Queue\\MaxAttemptsExceededException: Inovector\\Mixpost\\Jobs\\WorkspaceArtisanJob has been attempted too many times. in /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/MaxAttemptsExceededException.php:24\nStack trace:\n#0 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(785): Illuminate\\Queue\\MaxAttemptsExceededException::forJob()\n#1 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(519): Illuminate\\Queue\\Worker->maxAttemptsExceededException()\n#2 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(429): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts()\n#3 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#4 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#5 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(138): Illuminate\\Queue\\Worker->daemon()\n#6 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(121): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#7 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/horizon/src/Console/WorkCommand.php(51): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#8 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Laravel\\Horizon\\Console\\WorkCommand->handle()\n#9 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#10 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#11 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#12 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#13 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#14 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute()\n#15 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Console/Command.php(181): Symfony\\Component\\Console\\Command\\Command->run()\n#16 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run()\n#17 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand()\n#18 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun()\n#19 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run()\n#20 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#21 {main}','2024-05-13 12:01:42'),(4,'0cc98651-dbc0-4e7d-a2f0-5315a407b144','redis','default','{\"pushedAt\":\"1715644811.4686\",\"uuid\":\"0cc98651-dbc0-4e7d-a2f0-5315a407b144\",\"timeout\":null,\"tags\":[\"Inovector\\\\Mixpost\\\\Models\\\\Workspace:1\"],\"id\":\"0cc98651-dbc0-4e7d-a2f0-5315a407b144\",\"maxExceptions\":null,\"backoff\":null,\"displayName\":\"Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\",\"maxTries\":null,\"type\":\"job\",\"failOnTimeout\":false,\"silenced\":false,\"retryUntil\":null,\"data\":{\"command\":\"O:42:\\\"Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\\\":2:{s:53:\\\"\\u0000Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\\u0000workspace\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:34:\\\"Inovector\\\\Mixpost\\\\Models\\\\Workspace\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:51:\\\"\\u0000Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\\u0000command\\\";s:39:\\\"mixpost:check-and-refresh-account-token\\\";}\",\"commandName\":\"Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\"},\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"attempts\":1}','Illuminate\\Queue\\MaxAttemptsExceededException: Inovector\\Mixpost\\Jobs\\WorkspaceArtisanJob has been attempted too many times. in /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/MaxAttemptsExceededException.php:24\nStack trace:\n#0 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(785): Illuminate\\Queue\\MaxAttemptsExceededException::forJob()\n#1 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(519): Illuminate\\Queue\\Worker->maxAttemptsExceededException()\n#2 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(429): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts()\n#3 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#4 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#5 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(138): Illuminate\\Queue\\Worker->daemon()\n#6 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(121): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#7 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/horizon/src/Console/WorkCommand.php(51): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#8 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Laravel\\Horizon\\Console\\WorkCommand->handle()\n#9 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#10 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#11 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#12 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#13 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#14 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute()\n#15 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Console/Command.php(181): Symfony\\Component\\Console\\Command\\Command->run()\n#16 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run()\n#17 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand()\n#18 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun()\n#19 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run()\n#20 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#21 {main}','2024-05-14 00:01:43'),(5,'6b026554-04a0-4395-bf71-b31533b468e8','redis','default','{\"pushedAt\":\"1715644811.4616\",\"uuid\":\"6b026554-04a0-4395-bf71-b31533b468e8\",\"timeout\":null,\"tags\":[\"Inovector\\\\Mixpost\\\\Models\\\\Workspace:1\"],\"id\":\"6b026554-04a0-4395-bf71-b31533b468e8\",\"maxExceptions\":null,\"backoff\":null,\"displayName\":\"Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\",\"maxTries\":null,\"type\":\"job\",\"failOnTimeout\":false,\"silenced\":false,\"retryUntil\":null,\"data\":{\"command\":\"O:42:\\\"Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\\\":2:{s:53:\\\"\\u0000Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\\u0000workspace\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:34:\\\"Inovector\\\\Mixpost\\\\Models\\\\Workspace\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:51:\\\"\\u0000Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\\u0000command\\\";s:31:\\\"mixpost:import-account-audience\\\";}\",\"commandName\":\"Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\"},\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"attempts\":1}','Illuminate\\Queue\\MaxAttemptsExceededException: Inovector\\Mixpost\\Jobs\\WorkspaceArtisanJob has been attempted too many times. in /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/MaxAttemptsExceededException.php:24\nStack trace:\n#0 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(785): Illuminate\\Queue\\MaxAttemptsExceededException::forJob()\n#1 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(519): Illuminate\\Queue\\Worker->maxAttemptsExceededException()\n#2 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(429): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts()\n#3 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#4 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#5 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(138): Illuminate\\Queue\\Worker->daemon()\n#6 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(121): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#7 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/horizon/src/Console/WorkCommand.php(51): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#8 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Laravel\\Horizon\\Console\\WorkCommand->handle()\n#9 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#10 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#11 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#12 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#13 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#14 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute()\n#15 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Console/Command.php(181): Symfony\\Component\\Console\\Command\\Command->run()\n#16 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run()\n#17 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand()\n#18 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun()\n#19 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run()\n#20 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#21 {main}','2024-05-14 00:01:43'),(6,'edef2c22-5fd4-455c-b232-cd3c54fa87e4','redis','default','{\"pushedAt\":\"1715644811.6303\",\"uuid\":\"edef2c22-5fd4-455c-b232-cd3c54fa87e4\",\"timeout\":null,\"tags\":[\"Inovector\\\\Mixpost\\\\Models\\\\Workspace:4\"],\"id\":\"edef2c22-5fd4-455c-b232-cd3c54fa87e4\",\"maxExceptions\":null,\"backoff\":null,\"displayName\":\"Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\",\"maxTries\":null,\"type\":\"job\",\"failOnTimeout\":false,\"silenced\":false,\"retryUntil\":null,\"data\":{\"command\":\"O:42:\\\"Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\\\":2:{s:53:\\\"\\u0000Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\\u0000workspace\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:34:\\\"Inovector\\\\Mixpost\\\\Models\\\\Workspace\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:51:\\\"\\u0000Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\\u0000command\\\";s:39:\\\"mixpost:check-and-refresh-account-token\\\";}\",\"commandName\":\"Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\"},\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"attempts\":1}','Illuminate\\Queue\\MaxAttemptsExceededException: Inovector\\Mixpost\\Jobs\\WorkspaceArtisanJob has been attempted too many times. in /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/MaxAttemptsExceededException.php:24\nStack trace:\n#0 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(785): Illuminate\\Queue\\MaxAttemptsExceededException::forJob()\n#1 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(519): Illuminate\\Queue\\Worker->maxAttemptsExceededException()\n#2 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(429): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts()\n#3 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#4 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#5 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(138): Illuminate\\Queue\\Worker->daemon()\n#6 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(121): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#7 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/horizon/src/Console/WorkCommand.php(51): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#8 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Laravel\\Horizon\\Console\\WorkCommand->handle()\n#9 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#10 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#11 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#12 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#13 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#14 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute()\n#15 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Console/Command.php(181): Symfony\\Component\\Console\\Command\\Command->run()\n#16 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run()\n#17 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand()\n#18 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun()\n#19 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run()\n#20 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#21 {main}','2024-05-14 00:01:43'),(7,'d8922462-534c-453f-aa55-21638fc7be54','redis','default','{\"pushedAt\":\"1715652010.8864\",\"uuid\":\"d8922462-534c-453f-aa55-21638fc7be54\",\"timeout\":null,\"tags\":[\"Inovector\\\\Mixpost\\\\Models\\\\Workspace:3\"],\"id\":\"d8922462-534c-453f-aa55-21638fc7be54\",\"maxExceptions\":null,\"backoff\":null,\"displayName\":\"Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\",\"maxTries\":null,\"type\":\"job\",\"failOnTimeout\":false,\"silenced\":false,\"retryUntil\":null,\"data\":{\"command\":\"O:42:\\\"Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\\\":2:{s:53:\\\"\\u0000Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\\u0000workspace\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:34:\\\"Inovector\\\\Mixpost\\\\Models\\\\Workspace\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:51:\\\"\\u0000Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\\u0000command\\\";s:27:\\\"mixpost:import-account-data\\\";}\",\"commandName\":\"Inovector\\\\Mixpost\\\\Jobs\\\\WorkspaceArtisanJob\"},\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"attempts\":1}','Illuminate\\Queue\\MaxAttemptsExceededException: Inovector\\Mixpost\\Jobs\\WorkspaceArtisanJob has been attempted too many times. in /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/MaxAttemptsExceededException.php:24\nStack trace:\n#0 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(785): Illuminate\\Queue\\MaxAttemptsExceededException::forJob()\n#1 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(519): Illuminate\\Queue\\Worker->maxAttemptsExceededException()\n#2 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(429): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts()\n#3 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#4 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#5 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(138): Illuminate\\Queue\\Worker->daemon()\n#6 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(121): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#7 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/horizon/src/Console/WorkCommand.php(51): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#8 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Laravel\\Horizon\\Console\\WorkCommand->handle()\n#9 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#10 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#11 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#12 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#13 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#14 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute()\n#15 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Console/Command.php(181): Symfony\\Component\\Console\\Command\\Command->run()\n#16 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run()\n#17 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand()\n#18 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun()\n#19 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run()\n#20 /home/bluebrid/brandmeup.bluebridgetechnology.co.za/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#21 {main}','2024-05-14 02:01:41'),(8,'8ec19294-3090-4421-973d-0dd67c594c5f','redis','default','{\"mixpost_workspace_id\":1,\"data\":{\"command\":\"O:58:\\\"Inovector\\\\Mixpost\\\\Jobs\\\\Webhook\\\\ProcessWorkspaceWebhooksJob\\\":1:{s:5:\\\"event\\\";O:45:\\\"Inovector\\\\Mixpost\\\\Events\\\\Account\\\\AccountAdded\\\":1:{s:7:\\\"account\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:32:\\\"Inovector\\\\Mixpost\\\\Models\\\\Account\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:1:{i:0;s:9:\\\"workspace\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}\",\"commandName\":\"Inovector\\\\Mixpost\\\\Jobs\\\\Webhook\\\\ProcessWorkspaceWebhooksJob\"},\"maxTries\":null,\"failOnTimeout\":false,\"attempts\":1,\"type\":\"job\",\"timeout\":null,\"tags\":{},\"id\":\"8ec19294-3090-4421-973d-0dd67c594c5f\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"pushedAt\":\"1716918977.2008\",\"uuid\":\"8ec19294-3090-4421-973d-0dd67c594c5f\",\"silenced\":false,\"retryUntil\":null,\"backoff\":null,\"displayName\":\"Inovector\\\\Mixpost\\\\Jobs\\\\Webhook\\\\ProcessWorkspaceWebhooksJob\",\"maxExceptions\":null}','Illuminate\\Queue\\MaxAttemptsExceededException: Inovector\\Mixpost\\Jobs\\Webhook\\ProcessWorkspaceWebhooksJob has been attempted too many times. in /var/www/app.brandmeup.pro/vendor/laravel/framework/src/Illuminate/Queue/MaxAttemptsExceededException.php:24\nStack trace:\n#0 /var/www/app.brandmeup.pro/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(785): Illuminate\\Queue\\MaxAttemptsExceededException::forJob()\n#1 /var/www/app.brandmeup.pro/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(519): Illuminate\\Queue\\Worker->maxAttemptsExceededException()\n#2 /var/www/app.brandmeup.pro/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(428): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts()\n#3 /var/www/app.brandmeup.pro/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#4 /var/www/app.brandmeup.pro/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(176): Illuminate\\Queue\\Worker->runJob()\n#5 /var/www/app.brandmeup.pro/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(137): Illuminate\\Queue\\Worker->daemon()\n#6 /var/www/app.brandmeup.pro/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#7 /var/www/app.brandmeup.pro/vendor/laravel/horizon/src/Console/WorkCommand.php(51): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#8 /var/www/app.brandmeup.pro/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Laravel\\Horizon\\Console\\WorkCommand->handle()\n#9 /var/www/app.brandmeup.pro/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#10 /var/www/app.brandmeup.pro/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#11 /var/www/app.brandmeup.pro/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#12 /var/www/app.brandmeup.pro/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#13 /var/www/app.brandmeup.pro/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#14 /var/www/app.brandmeup.pro/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute()\n#15 /var/www/app.brandmeup.pro/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run()\n#16 /var/www/app.brandmeup.pro/vendor/symfony/console/Application.php(1096): Illuminate\\Console\\Command->run()\n#17 /var/www/app.brandmeup.pro/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand()\n#18 /var/www/app.brandmeup.pro/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun()\n#19 /var/www/app.brandmeup.pro/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(201): Symfony\\Component\\Console\\Application->run()\n#20 /var/www/app.brandmeup.pro/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#21 {main}','2024-05-28 18:37:34');
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
INSERT INTO `job_batches` VALUES ('9c273461-7d23-48d4-a211-2cf653520521','',1,0,0,'[]','a:3:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:733:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"post\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:29:\"Inovector\\Mixpost\\Models\\Post\";s:2:\"id\";i:53;s:9:\"relations\";a:1:{i:0;s:8:\"accounts\";}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}}s:8:\"function\";s:282:\"function () use ($post) {\n                if ($post->hasErrors()) {\n                    $post->setFailed();\n                    return;\n                }\n\n                if ($post->isScheduleProcessing()) {\n                    $post->setPublished();\n                }\n            }\";s:5:\"scope\";s:42:\"Inovector\\Mixpost\\Actions\\Post\\PublishPost\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000004660000000000000000\";}\";s:4:\"hash\";s:44:\"40WpH+WexelXEHOEZYMcEl9yrhov2ET+7yKKuT36HJw=\";}}}s:5:\"queue\";s:12:\"publish-post\";}',NULL,1716921964,1716921968);
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2024_04_29_092217_create_job_batches_table',1),(5,'2024_04_29_092219_create_mixpost_tables',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_account_logs`
--

DROP TABLE IF EXISTS `mixpost_account_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_account_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` bigint unsigned NOT NULL,
  `type` tinyint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mixpost_account_logs_account_id_index` (`account_id`),
  CONSTRAINT `mixpost_account_logs_chk_1` CHECK (json_valid(`data`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_account_logs`
--

LOCK TABLES `mixpost_account_logs` WRITE;
/*!40000 ALTER TABLE `mixpost_account_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mixpost_account_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_accounts`
--

DROP TABLE IF EXISTS `mixpost_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `authorized` tinyint(1) NOT NULL DEFAULT '0',
  `access_token` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_unq_id` (`workspace_id`,`provider`,`provider_id`),
  UNIQUE KEY `mixpost_accounts_uuid_unique` (`uuid`),
  KEY `mixpost_accounts_workspace_id_index` (`workspace_id`),
  CONSTRAINT `mixpost_accounts_chk_1` CHECK (json_valid(`media`)),
  CONSTRAINT `mixpost_accounts_chk_2` CHECK (json_valid(`data`))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_accounts`
--

LOCK TABLES `mixpost_accounts` WRITE;
/*!40000 ALTER TABLE `mixpost_accounts` DISABLE KEYS */;
INSERT INTO `mixpost_accounts` VALUES (2,'a29f030b-c576-4a2f-8ddc-564215e16381',1,'Just OLU','kollyshow','{\"disk\":\"public\",\"path\":\"6693c326-daf5-494e-a2e3-25676103945c\\/avatars\\/twitter\\/eKRruwuAO9k5fY7qjoJYQg0tyVNBoiU5DgWAyRAH.jpg\"}','twitter','51020696',NULL,1,'eyJpdiI6IlR6TXZYdHZIMk05bUdHYXpYbkg0Tnc9PSIsInZhbHVlIjoieGVZVTdaaGN5aVJQMHJyWWw3Qnc0TktPcmFQQWduRlM0UGM0MWhHTFN6UWtaeUl1b0hCUTVDQ01GK2NyYjhRRHFSYzBTMTdmcmlEYTdzOGFKUHZSNFViNkszZG9XZys1eHRFN3puZlVhM2VHSUdoUkwzV0EvUzRnTC96UWRSZGx0TWVRYmlwNWxwLzc3dmxjbG1Xa1FCbzR1QkY3ODRWN2VaSnQraDRJTkpneGJybGNDQ1ZyajVZQVM3djAzc2xhIiwibWFjIjoiMmQ5NjdlODNkMWU4MDM1MGQxYzJjOWNmYzQ0YTE3YTBmZDJlOWUzZGZiZjU5MjMxNTRhZDJkZTk3Zjg5MGI2MyIsInRhZyI6IiJ9','2024-05-12 08:09:05','2024-05-15 10:44:17'),(3,'ae2342be-828f-4eaf-8ae9-bedd760cfab4',3,'Just OLU','kollyshow','{\"disk\":\"public\",\"path\":\"261d35ca-d6bf-4180-9a0d-d6856ca1d68e\\/avatars\\/twitter\\/Fy4l0nu6jxiCPVt7g0SmQUP13FUeQ7oezHETnlyu.jpg\"}','twitter','51020696',NULL,1,'eyJpdiI6Im8wZytnV1ByTUoxVWx4VXhaRG1EL2c9PSIsInZhbHVlIjoibjE1UlpqVjRZM2dPeThYU01CbjJGZnJEcHdHcGJuaVdZMkFoR2ZqNUhtcGhhRUF4aWVUVTNHUzh6VHQrRlB4TkQ4cVg0ZzNEWW5id1NhdEI0MGM3T0RIcEZta0hzczI4eVIwYVlNc3V2M1RZRHNNZkhucHVCMkF1WnRCS3JmUnNqbFlzZjh3MkxiN3A3Unc4YVhXS2ZNMjE4c0twdUlsemd4Mnk5WTRIaFo3ZTdLdlR3N2JBTEMwS0pNRk9OV1loIiwibWFjIjoiYTMzNTE3NGU5ODg0NTllMWQ0NDRiOWVhNDk4NWI5YjA4MTc2NzhlM2RmZDYyNTE5Mzc3MjIxMDYwZmQwMjNkMiIsInRhZyI6IiJ9','2024-05-15 08:04:09','2024-05-15 08:04:09'),(4,'5662ac8b-f403-4988-8acc-f1eac5bdd0f9',1,'Blue Bridge Technology','bluebridgetechnology','{\"disk\":\"public\",\"path\":\"6693c326-daf5-494e-a2e3-25676103945c\\/avatars\\/facebook_page\\/tJiZNj1nBJjESngIu29wwNnGHmX7nbNhG1UHLxyh.png\"}','facebook_page','1481279498792910','{\"suffix\":{\"value\":\"Johannesburg\",\"edited\":false}}',1,'eyJpdiI6ImhuSkwvSStQUnhrRUd3RFNRdFcvY0E9PSIsInZhbHVlIjoiZGJ3ZHpJMitXYVZGRlA5ZFFQNjlpV1U4SStMQ3A1Q3NPOS9qc3hsb25vc2phM3hESkErWlQ4b0lLY3k3ZUhrSFZIZUI4YmdSYXM2ZDJ5VllqQXgreFpTUlR2V3J2akRYNyt3Wi9SQis4UUZUZlo5RVVpdGh1UEhVelgrdlUybTVyNlZlMm9kVE1qK3FhU0crZkNlZCtRbmZCRXQyVmZ6RUxJNktEK0hQYm9CZ0NKQmJZeXcrdG5hajNoSVdVK1JWOXh3enhJczlUSHFuTWhVVGxQMEE3M0lrUklNQ29mT3FveFltZm15SXVoRE1raGdaOEZnN3pHZnh2Uy94cUd2MTRsb2k2NWJZY214Sk55WXdzQmhCL2hRTTRsWXhLZ09hbVIwRmNhdmlQV2FBbzUzYTNudDBhK2RUV1RrcHY2bjFDUVVSTXNrdkdvWDFON0M5a1BFYytsU25rSjJVcjAyOUNTbWNOdWVqNXh0V2RkcEVCSGFZY0g3d3V0LzFuVTlTbkpWcUlHSHJOTmZsai9WUGtldFBFWjlZMUdHYkVKUmc5bjFnMHV0cnBDdUx2QUM0VDRIMXdsMThlUkRaRzJick5zdUZqTFJjMVVqQzMrQTlZNi8rWlBGUjhabWRhQWxJOUJpTk50MzJvTzVNWWVvemkwaTVROFRVUXBBWEp2TmlTeWlxZVQ0eDBzM0cxUFBQS25EdDEzeHFjTHV1Q3hKYndacURNS0xtOWRZNDJITXF0azA3REpja0NwR3pXNTd5UU1MeERDWFJreFdwQWF3LzFvdU1RcHJJSWhUQVl3RTZUVEFVVmJFTDd4aEU2anJ0L1JBWlBpSzIvVkZUNnN0d3BqMUdNSEpNSW0wc08yQWhzZFJDRlB1dmdSdzNVN25VUEdFdURuaytLanc9IiwibWFjIjoiMzQ3YzYyZjZhMmZjZWI1ODRiZDIzZTA4YjFiYzZhN2Y1Y2RiY2I3NDU3MWYzYjA3MjQ5NDU4YWM0MzBjMWYxZiIsInRhZyI6IiJ9','2024-05-15 13:06:26','2024-05-15 13:06:26'),(5,'26e3767c-d1ad-49d6-91f6-81106cd99e8a',1,'bluebridgetechnology','bluebridgetechnology','{\"disk\":\"public\",\"path\":\"6693c326-daf5-494e-a2e3-25676103945c\\/avatars\\/instagram\\/IJ3Q33RteDSZmZpPtZyknqIoqQQoQkcqBBXhM9Or.jpg\"}','instagram','17841406450244997','{\"suffix\":{\"value\":\"BBT\",\"edited\":true}}',1,'eyJpdiI6IkUyZmo4b1pVYjI2bUpQOWRDZkNTVFE9PSIsInZhbHVlIjoibkNqMFdTVEZKQnl2cTg5eEFpT0d3RW5DUXNhWUJjelFRT0lTSjkwUzM2Rk1GdjB5b0ZpWFdkZVRBMFhRNDBlQlc2UjAxc050M3FuZlNJakMxblZvbHNYL1g0NEVBY25BU1JnT3Zadis0L1dTWE1id29CakR2M0VNSGFlL29UeFRQTnJqVGR4YXFtTXpibG0wV0Vyby9kVm1jQjRWMGRzNVRQTXdMK1F6ckUxRWRuc20rT3lBMmJEUElBYjRPOExDRGR4SVdnMVRHWU4xUU0zRWtHd29qSFRuVGlCZjRtNnBGYWFId3pDa0xxZlBuM01hcHFHN0xiczVZaWRRNzFNNElROCswRnFUd2hGc3F3dmNxdXZVQVdpRFZ3VDRnbnNNVDlmV1doLzJ2ZmdIckZJUVBUTFpSZkQvZWZadndLTFpxV1Jqejl3RWJ5NzdsM2hkNk9JYmNnPT0iLCJtYWMiOiI5Y2MxZGMyZmFjODM2NGZkMzllNjY3NGZhYzdlY2YxMjkxN2U2YmViOTYzNmQ0NGJjOTg3MDUwYmJkY2M2OTY4IiwidGFnIjoiIn0=','2024-05-15 13:07:07','2024-05-15 13:45:50'),(6,'50a29fa3-5255-4581-a776-65627483d41b',1,'Alejandro SQRM','',NULL,'linkedin','D8uvmO00YI',NULL,1,'eyJpdiI6InljbVJGWmswNGlnNG5FM2xkWm10S3c9PSIsInZhbHVlIjoiSCtPRHJXSlRsUDJCTEZheitLN3N0UzRGS2lSbmFjWDhJcHp0dFVoTXp5WTR3WjdmSmVXTmJjdStQditua3I4eHpHYjNHR0NLQStZelBROFAvdUpLai9pdnorQ05QeXlpYm1sb0VnSHRYTnN2NzQ0MElsSlU4TlVIcGRnS0JmNExSZW9SaDI4d2paSWFOM3R2VXZRenVkM0lVYVlPOWQvZUJNUGVzLzNUZU9PMTBWS0F3MTFIOWtPbUNnNXN0UU9qRUJYaUI4RXVVdDhGWHJVZExITjcrbXJtaTRPUEFEZGVZdDhwZDNLRWgwYXZUN2JwN3RHd3gzR3Eyak5uZEZ2bTd5c0dxdC9DQjVnbkxac0ExbjZGaDdwU3psdkJPQmk2RkJDOTYxVU92YmpBUG1XZ3Y5OGNSaTJVVnFDVUN6MW15OVBZV1NiNnFiMGRpeVBSSndSTDkrYTFuNTNoUXhxU09lS01Ub3ZNYkFKUXFlbEdaSE5yOUd6ZXVxMEJ4aHlCREJOUUNhSmVBaWlXTlB6c0F2V2k4b2Y4TFR6ZitQVmNySzF0WGl2a1NHTmdaeVFOa3BybFVpVXRLRTNQaTdLYW5OQWVMWE13UWpSOVdtaklQNGZWQXd6QnVlVU1NVUtwS3dnYXk4Yzl4ZlNQb1Fqd1JHQ056RDVXYVF1Vk5OeWVrbkZ4K0MvN3hBZFNwRk1ZekROdDhuQ2YwOGFWNHl0WFNQM21HMmNyMWV3PSIsIm1hYyI6IjAyNjM4YzQ5MmMzNzgxMTJiNzE4M2M3MmNiNjQwZWViNzBmMDQ3YzA3MDliNDFkNjJiNDk0YzU0NjEwZWU5ODAiLCJ0YWciOiIifQ==','2024-05-28 17:56:17','2024-05-28 17:56:17');
/*!40000 ALTER TABLE `mixpost_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_admins`
--

DROP TABLE IF EXISTS `mixpost_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mixpost_admins_user_id_index` (`user_id`),
  CONSTRAINT `mixpost_admins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_admins`
--

LOCK TABLES `mixpost_admins` WRITE;
/*!40000 ALTER TABLE `mixpost_admins` DISABLE KEYS */;
INSERT INTO `mixpost_admins` VALUES (1,1,'2024-04-29 11:59:35','2024-04-29 11:59:35'),(2,11,'2024-05-28 14:29:22','2024-05-28 14:29:22'),(3,10,'2024-05-28 14:29:53','2024-05-28 14:29:53'),(4,14,'2024-05-28 14:33:24','2024-05-28 14:33:24'),(5,15,'2024-05-28 14:34:32','2024-05-28 14:34:32');
/*!40000 ALTER TABLE `mixpost_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_audience`
--

DROP TABLE IF EXISTS `mixpost_audience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_audience` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `workspace_id` bigint unsigned NOT NULL,
  `account_id` bigint unsigned NOT NULL,
  `total` int NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `audience_entry_index` (`workspace_id`,`account_id`,`date`),
  KEY `mixpost_audience_workspace_id_index` (`workspace_id`),
  KEY `mixpost_audience_account_id_index` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_audience`
--

LOCK TABLES `mixpost_audience` WRITE;
/*!40000 ALTER TABLE `mixpost_audience` DISABLE KEYS */;
INSERT INTO `mixpost_audience` VALUES (1,1,2,104,'2024-05-12'),(2,1,2,104,'2024-05-13'),(3,1,2,104,'2024-05-14'),(4,1,2,104,'2024-05-15'),(5,3,3,104,'2024-05-15'),(6,1,4,100,'2024-05-15'),(7,1,5,84,'2024-05-15'),(8,1,4,100,'2024-05-16'),(9,1,5,84,'2024-05-16'),(10,1,2,104,'2024-05-16'),(11,3,3,104,'2024-05-16'),(12,1,4,100,'2024-05-17'),(13,1,5,84,'2024-05-17'),(14,1,2,104,'2024-05-17'),(15,3,3,104,'2024-05-17'),(16,1,4,100,'2024-05-18'),(17,1,5,84,'2024-05-18'),(18,1,2,105,'2024-05-18'),(19,3,3,105,'2024-05-18'),(20,1,4,100,'2024-05-19'),(21,1,5,84,'2024-05-19'),(22,1,2,106,'2024-05-19'),(23,3,3,106,'2024-05-19'),(24,1,4,100,'2024-05-20'),(25,1,2,106,'2024-05-20'),(26,1,5,84,'2024-05-20'),(27,3,3,106,'2024-05-20'),(28,1,4,100,'2024-05-21'),(29,1,5,84,'2024-05-21'),(30,1,2,106,'2024-05-21'),(31,3,3,106,'2024-05-21'),(32,1,4,100,'2024-05-22'),(33,1,5,84,'2024-05-22'),(34,1,2,106,'2024-05-22'),(35,3,3,106,'2024-05-22'),(36,1,4,100,'2024-05-23'),(37,1,5,84,'2024-05-23'),(38,1,2,106,'2024-05-23'),(39,3,3,106,'2024-05-23'),(40,1,4,100,'2024-05-24'),(41,1,5,84,'2024-05-24'),(42,1,2,106,'2024-05-24'),(43,3,3,106,'2024-05-24'),(44,1,4,100,'2024-05-25'),(45,1,2,106,'2024-05-25'),(46,3,3,106,'2024-05-25'),(47,1,5,84,'2024-05-25'),(48,1,4,100,'2024-05-26'),(49,1,5,84,'2024-05-26'),(50,1,2,106,'2024-05-26'),(51,3,3,106,'2024-05-26'),(52,1,4,100,'2024-05-27'),(53,1,2,105,'2024-05-27'),(54,1,5,84,'2024-05-27'),(55,3,3,105,'2024-05-27'),(56,1,4,100,'2024-05-28'),(57,1,5,84,'2024-05-28'),(58,1,2,105,'2024-05-28'),(59,3,3,105,'2024-05-28'),(60,1,4,100,'2024-05-29'),(61,1,5,84,'2024-05-29'),(62,1,2,105,'2024-05-29'),(63,3,3,105,'2024-05-29');
/*!40000 ALTER TABLE `mixpost_audience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_blocks`
--

DROP TABLE IF EXISTS `mixpost_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_blocks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `mixpost_blocks_chk_1` CHECK (json_valid(`content`))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_blocks`
--

LOCK TABLES `mixpost_blocks` WRITE;
/*!40000 ALTER TABLE `mixpost_blocks` DISABLE KEYS */;
INSERT INTO `mixpost_blocks` VALUES (1,'Header','Editor','{\"body\":\"<p>\\n  <a target=\\\"_self\\\" rel=\\\"noopener noreferrer nofollow\\\" href=\\\"https:\\/\\/brandmeup.pro\\/pages\\\">\\n    <img src=\\\"\\/storage\\/uploads\\/05-2024\\/NSBsPV1EZ5HCNTNAqNAefVZKvnYBjoQtnVbbHeQT.png\\\" width=\\\"249\\\" data-display=\\\"inline\\\">\\n  <\\/a>\\n  <br>\\n  <br>\\n<\\/p>\\n<hr>\\n\"}',1,'2024-05-15 12:07:15','2024-05-15 12:07:15'),(2,'Footer','Editor','{\"body\":\"<hr>\\n<p>\\n  <br>\\n<\\/p>\\n<p style=\\\"text-align: center\\\">\\n  <a target=\\\"_self\\\" rel=\\\"noopener noreferrer nofollow\\\" href=\\\"https:\\/\\/brandmeup.pro\\/pages\\/privacy\\\">\\n    <strong>Privacy<\\/strong>\\n  <\\/a>\\n<\\/p>\\n<p style=\\\"text-align: center\\\">\\n  <a target=\\\"_self\\\" rel=\\\"noopener noreferrer nofollow\\\" href=\\\"https:\\/\\/brandmeup.pro\\/pages\\/terms\\\">\\n    <strong>Terms Of Use<\\/strong>\\n  <\\/a>\\n<\\/p>\\n<p style=\\\"text-align: center\\\">All rights reserved. BrandMe Up<\\/p>\\n\"}',1,'2024-05-15 12:07:15','2024-05-15 12:07:15'),(3,'About','Editor','{\"body\":\"<h1>\\ud83d\\udc4b Welcome to BrandMe Up<\\/h1>\\n<h2>Your Ultimate Social Media Management Solution<\\/h2>\\n<h3>Unlock the true potential of your social media presence with BrandMe Up, the all-in-one software designed to streamline and elevate your social media management game. Whether you\'re an individual influencer, a growing startup, or a well-established brand, we have the tools and features to help you succeed in the ever-evolving world of social media. <br>\\n<br>\\n<\\/h3>\\n<h2>\\ud83d\\udca1 Why BrandMe Up?<\\/h2>\\n<ul>\\n<li>\\n  <p>\\n    <strong>Seamless Scheduling<\\/strong>: Say goodbye to manual posting! Our intuitive scheduler allows you to plan, create, and schedule posts across all your social media platforms with just a few clicks. Save time and ensure consistent content delivery to your followers.\\n  <\\/p>\\n<\\/li>\\n<li>\\n  <p>\\n    <strong>Advanced Analytics<\\/strong>: Knowledge is power! Dive deep into your social media performance with our comprehensive analytics. Measure engagement, track audience growth, and gain valuable insights to optimize your strategy and achieve your goals.\\n  <\\/p>\\n<\\/li>\\n<li>\\n  <p>\\n    <strong>Engage and Respond<\\/strong>: Stay on top of your community! Monitor comments, messages, and mentions from one unified inbox. Engage with your audience in real time and build strong relationships that drive loyalty and advocacy.\\n  <\\/p>\\n<\\/li>\\n<li>\\n  <p>\\n    <strong>Team Collaboration<\\/strong>: Smooth teamwork, brilliant results. Collaborate with your team members, assign roles, and manage permissions to streamline your social media workflow efficiently.\\n  <\\/p>\\n<\\/li>\\n<\\/ul>\\n<p>\\n<br>\\n<\\/p>\\n<h2>\\ud83d\\ude80 Ready to get started?<\\/h2>\\n<p>Join thousands of successful users who have already revolutionized their social media presence with BrandMe Up. Start your free trial today and experience the difference firsthand. Unleash your social media potential and thrive in the digital landscape with BrandMe Up!<\\/p>\\n<p><\\/p>\\n<h3>\\n<a target=\\\"_self\\\" rel=\\\"noopener noreferrer nofollow\\\" href=\\\"brandmeup.pro\\\">\\n  <strong>-&gt; Create an account for free!<\\/strong>\\n<\\/a>\\n<\\/h3>\\n<p><\\/p>\\n\"}',1,'2024-05-15 12:07:15','2024-05-15 12:07:15'),(4,'Privacy Policy','Editor','{\"body\":\"<h1>Privacy Policy<\\/h1>\\n<p>Thank you for choosing BrandMe Up (\\\"us\\\", \\\"we\\\", or \\\"our\\\"). This Privacy Policy (\\\"Policy\\\") explains how we collect, use, disclose, and safeguard your personal information when you use our software and related services (collectively, the \\\"Service\\\"). By accessing or using the Service, you agree to the practices described in this Policy. If you do not agree with this Policy, please refrain from using the Service.<\\/p>\\n<p><\\/p>\\n<h2>1. Information We Collect<\\/h2>\\n<p style=\\\"text-align: start\\\">1.1. <strong>Personal Information<\\/strong>: When you register an account or use certain features of the Service, we may collect personal information, such as your name, email address, and other contact details. <\\/p>\\n<p style=\\\"text-align: start\\\">1.2. <strong>Usage Data<\\/strong>: We may automatically collect information about your interactions with the Service, such as your IP address, browser type, device information, pages visited, and the time and date of your visits. <\\/p>\\n<p style=\\\"text-align: start\\\">1.3. <strong>Cookies and Similar Technologies<\\/strong>: We may use cookies, beacons, and other tracking technologies to collect information about your preferences and usage patterns. You can control the use of cookies through your browser settings. <\\/p>\\n<p style=\\\"text-align: start\\\">1.4. <strong>If you register through social logins<\\/strong>: you can register using your account on the social network whose social login is active in BrandMe Up for this purpose. In that case, the corresponding social network will provide us with your email, your profile picture, and your name with a Unique Identifier associated with your Administrator profile in BrandMe Up.<\\/p>\\n<p style=\\\"text-align: start\\\">You must log into that social network and accept the permissions that you grant BrandMe Up through it.<\\/p>\\n<p style=\\\"text-align: start\\\">BrandMe Up therefore requests permission to access the APIs provided by social networks and other information providers such as YouTube API Services, Facebook API, Pinterest API, TikTok API and more. You can check here <a href=\\\"https:\\/\\/policies.google.com\\/privacy\\\">Google Privacy Policy<\\/a>. BrandMe Up will access the information required by the user through the authorized APIs. This information will be processed solely for the benefit of the administrator and will not be shared with third parties. The administrator will be able to revoke the permissions without accessing your BrandMe Up account directly from the social network or from the data provider. YouTube and other Google services can be revoked from the <a href=\\\"https:\\/\\/security.google.com\\/settings\\\">Google security service<\\/a>.<\\/p>\\n<p style=\\\"text-align: start\\\"><\\/p>\\n<h2>2. How We Use Your Information<\\/h2>\\n<p style=\\\"text-align: start\\\">2.1. <strong>Provide and Improve the Service<\\/strong>: We use your information to deliver, maintain, and enhance the Service, as well as to develop new features and functionalities. <\\/p>\\n<p style=\\\"text-align: start\\\">2.2. <strong>Personalization<\\/strong>: We may use your information to personalize your experience with the Service and to provide you with relevant content and recommendations. <\\/p>\\n<p style=\\\"text-align: start\\\">2.3. <strong>Communication<\\/strong>: We may use your contact information to send you updates, newsletters, and other promotional materials related to the Service. You can opt out of receiving such communications at any time. <\\/p>\\n<p style=\\\"text-align: start\\\">2.4. <strong>Analytics<\\/strong>: We use analytics tools to analyze user behavior and improve the Service\'s performance and user experience. <\\/p>\\n<p style=\\\"text-align: start\\\">2.5. <strong>Legal Compliance<\\/strong>: We may use your information to comply with legal obligations and respond to requests from law enforcement authorities or government agencies. <\\/p>\\n<p style=\\\"text-align: start\\\">2.6. <strong>If you register through social logins<\\/strong>: With the permissions that you grant BrandMe Up through social networks (YouTube, Facebook, TikTok...etc.), will allow the BrandMe Up application to access different features depending on the social network in question for the purpose. To provide the hired service to manage your accounts on social networks you carry out.<\\/p>\\n<p>Examples of such permissions are: managing your account, accessing your profile and the publications you make, managing comments, accessing statistics, creating and managing content.<\\/p>\\n<p>Permissions may vary depending on the social network with which you register through the corresponding social login.<\\/p>\\n<p style=\\\"text-align: start\\\"><\\/p>\\n<h2>3. How We Share Your Information<\\/h2>\\n<p style=\\\"text-align: start\\\">3.1. <strong>Service Providers<\\/strong>: We may share your information with third-party service providers that help us operate the Service and perform related functions. Information required by the user through the authorized APIs (YouTube, Facebook, TikTok, Pinterest...etc.) will be processed solely for the benefit of the user and will not be shared with third parties.<\\/p>\\n<p style=\\\"text-align: start\\\">3.2. <strong>Affiliates<\\/strong>: We may share your information with our affiliates for purposes consistent with this Policy. <\\/p>\\n<p style=\\\"text-align: start\\\">3.3. <strong>Business Transfers<\\/strong>: If BrandMe Up is involved in a merger, acquisition, or sale of assets, your information may be transferred as part of that transaction. <\\/p>\\n<p style=\\\"text-align: start\\\">3.4. <strong>Legal Requirements<\\/strong>: We may disclose your information if required by law or in response to a valid legal request. <\\/p>\\n<p><\\/p>\\n<h2>4. Data Security<\\/h2>\\n<p style=\\\"text-align: start\\\">We take reasonable measures to protect your information from unauthorized access, disclosure, alteration, or destruction. However, no method of transmission over the Internet or electronic storage is entirely secure, and we cannot guarantee absolute security.<\\/p>\\n<p style=\\\"text-align: start\\\"><\\/p>\\n<h2>5. Third-Party Links and Services<\\/h2>\\n<p style=\\\"text-align: start\\\">The Service may contain links to third-party websites and services that are not operated or controlled by BrandMe Up. This Policy does not apply to such third-party websites and services. We recommend reviewing the privacy policies of those third parties before providing any personal information.<\\/p>\\n<p style=\\\"text-align: start\\\"><\\/p>\\n<h2>6. Your Rights<\\/h2>\\n<p style=\\\"text-align: start\\\">You have the right to access, correct, update, and delete your personal information. If you wish to exercise any of these rights or have questions about your information, please contact us using the contact information provided below.<\\/p>\\n<p style=\\\"text-align: start\\\"><\\/p>\\n<h2>7. Changes to this Privacy Policy<\\/h2>\\n<p style=\\\"text-align: start\\\">BrandMe Up may update this Policy from time to time. We will notify you of any material changes by posting the updated Policy on our website or through other communication channels. Your continued use of the Service after the changes become effective constitutes your acceptance of the revised Policy.<\\/p>\\n<p style=\\\"text-align: start\\\"><\\/p>\\n<h2>8. Contact Us<\\/h2>\\n<p style=\\\"text-align: start\\\">If you have any questions, concerns, or requests regarding this Privacy Policy or the Service, please contact us at <a target=\\\"_self\\\" rel=\\\"noopener noreferrer nofollow\\\" href=\\\"mailto:info@brandmeup.pro\\\">info@brandmeup.pro<\\/a>. <\\/p>\\n<p style=\\\"text-align: start\\\">By using the Service, you acknowledge that you have read, understood, and agreed to this Privacy Policy.<\\/p>\\n<p style=\\\"text-align: start\\\">Thank you for trusting BrandMe Up with your personal information.<\\/p>\\n\"}',1,'2024-05-15 12:07:15','2024-05-15 12:07:15'),(5,'Terms of Use','Editor','{\"body\":\"<h1>Terms of Use<\\/h1>\\n<p>Welcome to BrandMe Up (\\\"us\\\", \\\"we\\\", or \\\"our\\\"). These Terms of Use (\\\"Terms\\\") govern your use of the BrandMe Up software and any related services (collectively, the \\\"Service\\\"). By accessing or using the Service, you agree to be bound by these Terms. If you do not agree to these Terms, please refrain from using the Service.<\\/p>\\n<p><\\/p>\\n<h1>1. Use of the Service<\\/h1>\\n<p style=\\\"text-align: start\\\">1.1. <strong>Eligibility<\\/strong>: You must be at least 18 years old or of legal age in your jurisdiction to use the Service. By accessing and using the Service, you represent and warrant that you have the right, authority, and capacity to enter into these Terms. <\\/p>\\n<p style=\\\"text-align: start\\\">1.2. <strong>License<\\/strong>: Subject to your compliance with these Terms, BrandMe Up grants you a limited, non-exclusive, non-transferable, and revocable license to use the Service for your personal or business use. This license does not permit you to resell, distribute, sublicense, or modify the Service. <\\/p>\\n<p style=\\\"text-align: start\\\">1.3. <strong>Account Registration<\\/strong>: To access certain features of the Service, you may need to create an account. You agree to provide accurate and complete information during the registration process and to keep your account credentials secure. You are solely responsible for any activity that occurs under your account. <\\/p>\\n<p style=\\\"text-align: start\\\">1.4. <strong>If you register through social logins<\\/strong>: You must log into that social network and accept the permissions that you grant BrandMe Up through it. When registering with social account, you agree to the terms and conditions of the social networks you connect with. You can access the YouTube Terms Of Service at this link: <a href=\\\"https:\\/\\/www.youtube.com\\/t\\/terms\\\">https:\\/\\/www.youtube.com\\/t\\/terms<\\/a>.<\\/p>\\n<p>We will provide information regarding the process of personal data, which will be carried out in accordance with the provisions of the <a href=\\\"https:\\/\\/brandmeup.pro\\/pages\\/privacy\\\">Privacy Policy<\\/a> and the present Terms and Conditions that you must read and, in case you agree, accept them by checking the box established for this purpose.<\\/p>\\n<p style=\\\"text-align: start\\\"><\\/p>\\n<h2>2. User Content<\\/h2>\\n<p style=\\\"text-align: start\\\">2.1. <strong>Posting Content:<\\/strong> You may have the opportunity to post, upload, or submit content to the Service. By doing so, you grant BrandMe Up a worldwide, non-exclusive, royalty-free, sublicensable, and transferable license to use, reproduce, distribute, prepare derivative works of, display, and perform the content in connection with the Service. <\\/p>\\n<p style=\\\"text-align: start\\\">2.2. <strong>Content Guidelines<\\/strong>: When posting content, you agree not to submit any material that is unlawful, harmful, offensive, defamatory, or infringes upon the rights of others. BrandMe Up reserves the right to remove any content that violates these Terms or is otherwise objectionable. <\\/p>\\n<p style=\\\"text-align: start\\\"><\\/p>\\n<h2>3. Prohibited Conduct<\\/h2>\\n<p style=\\\"text-align: start\\\">You agree not to:<\\/p>\\n<p style=\\\"text-align: start\\\">3.1. Use the Service for any illegal or unauthorized purpose;<\\/p>\\n<p style=\\\"text-align: start\\\">3.2. Interfere with or disrupt the integrity or performance of the Service or its servers;<\\/p>\\n<p style=\\\"text-align: start\\\">3.3. Attempt to gain unauthorized access to any part of the Service or other users\' accounts;<\\/p>\\n<p style=\\\"text-align: start\\\">3.4. Impersonate any person or entity or misrepresent your affiliation with any person or entity;<\\/p>\\n<p style=\\\"text-align: start\\\">3.5. Use any automated means to access the Service or collect information from it;<\\/p>\\n<p style=\\\"text-align: start\\\">3.6. Transmit viruses, worms, or any other destructive code through the Service;<\\/p>\\n<p style=\\\"text-align: start\\\">3.7. Engage in any conduct that restricts or inhibits others from using or enjoying the Service;<\\/p>\\n<p style=\\\"text-align: start\\\">3.8. Violate any applicable laws, regulations, or third-party rights.<\\/p>\\n<p style=\\\"text-align: start\\\"><\\/p>\\n<h2>4. Intellectual Property<\\/h2>\\n<p style=\\\"text-align: start\\\">4.1. <strong>Ownership<\\/strong>: BrandMe Up retains all rights, title, and interest in and to the Service, including all intellectual property rights. These Terms do not grant you any rights to use BrandMe Up\'s trademarks, logos, or other proprietary information. <\\/p>\\n<p style=\\\"text-align: start\\\">4.2. <strong>Feedback<\\/strong>: If you provide any feedback, suggestions, or ideas regarding the Service, you agree that BrandMe Up may use and incorporate such feedback without any obligation to compensate you. <\\/p>\\n<p style=\\\"text-align: start\\\"><\\/p>\\n<h2>5. Third-Party Content and Links<\\/h2>\\n<p style=\\\"text-align: start\\\">The Service may include content from third parties or links to third-party websites. BrandMe Up is not responsible for the accuracy, legality, or appropriateness of such content or websites. Your interactions with third parties, including advertisers, are solely between you and the third party.<\\/p>\\n<p style=\\\"text-align: start\\\"><\\/p>\\n<h2>6. Modifications to the Service and Terms<\\/h2>\\n<p style=\\\"text-align: start\\\">BrandMe Up may update, modify, or discontinue the Service, or these Terms, at any time without prior notice. It is your responsibility to review these Terms periodically for any changes. Your continued use of the Service after any modifications to these Terms constitutes your acceptance of such changes.<\\/p>\\n<p style=\\\"text-align: start\\\"><\\/p>\\n<h2>7. Disclaimer of Warranties<\\/h2>\\n<p style=\\\"text-align: start\\\">THE SERVICE IS PROVIDED ON AN \\\"AS-IS\\\" AND \\\"AS AVAILABLE\\\" BASIS. BrandMe Up MAKES NO REPRESENTATIONS OR WARRANTIES OF ANY KIND, EXPRESS OR IMPLIED, REGARDING THE SERVICE\'S MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, OR NON-INFRINGEMENT. YOUR USE OF THE SERVICE IS AT YOUR OWN RISK.<\\/p>\\n<p style=\\\"text-align: start\\\"><\\/p>\\n<h2>8. Limitation of Liability<\\/h2>\\n<p style=\\\"text-align: start\\\">TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, BrandMe Up SHALL NOT BE LIABLE FOR ANY INDIRECT, INCIDENTAL, SPECIAL, CONSEQUENTIAL, OR EXEMPLARY DAMAGES ARISING OUT OF OR IN CONNECTION WITH YOUR USE OF THE SERVICE.<\\/p>\\n<p style=\\\"text-align: start\\\"><\\/p>\\n<h2>9. Indemnification<\\/h2>\\n<p style=\\\"text-align: start\\\">You agree to indemnify and hold BrandMe Up, its affiliates, officers, directors, employees, and agents harmless from any claim, demand, loss, or damages, including reasonable attorneys\' fees, arising out of your use of the Service, your violation of these Terms, or your violation of any rights of a third party.<\\/p>\\n<p style=\\\"text-align: start\\\"><\\/p>\\n<h2>10. Governing Law and Dispute Resolution<\\/h2>\\n<p style=\\\"text-align: start\\\">These Terms shall be governed by and construed in accordance with the laws of [insert your jurisdiction]. Any dispute arising under or relating to these Terms or the Service shall be resolved exclusively in the state or federal courts located in [insert your jurisdiction], and you hereby consent to the personal jurisdiction of such courts.<\\/p>\\n<ol start=\\\"11\\\">\\n<li>\\n  <p>\\n    <strong>Entire Agreement<\\/strong>\\n  <\\/p>\\n<\\/li>\\n<\\/ol>\\n<p style=\\\"text-align: start\\\">These Terms constitute the entire agreement between you and BrandMe Up regarding the Service and supersede all prior and contemporaneous agreements, representations, and understandings.<\\/p>\\n<ol start=\\\"12\\\">\\n<li>\\n  <p>\\n    <strong>Contact Us<\\/strong>\\n  <\\/p>\\n<\\/li>\\n<\\/ol>\\n<p style=\\\"text-align: start\\\">If you have any questions or concerns about these Terms or the Service, please contact us at <a target=\\\"_self\\\" rel=\\\"noopener noreferrer nofollow\\\" href=\\\"mailto:info@brandmeup.pro\\\">info@brandmeup.pro<\\/a>. <\\/p>\\n<p style=\\\"text-align: start\\\">By using the Service, you acknowledge that you have read, understood, and agreed to these Terms.<\\/p>\\n<p style=\\\"text-align: start\\\">Thank you for choosing BrandMe Up!<\\/p>\\n\"}',1,'2024-05-15 12:07:15','2024-05-15 12:07:15');
/*!40000 ALTER TABLE `mixpost_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_configs`
--

DROP TABLE IF EXISTS `mixpost_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_configs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mixpost_configs_group_name_unique` (`group`,`name`),
  CONSTRAINT `mixpost_configs_chk_1` CHECK (json_valid(`payload`))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_configs`
--

LOCK TABLES `mixpost_configs` WRITE;
/*!40000 ALTER TABLE `mixpost_configs` DISABLE KEYS */;
INSERT INTO `mixpost_configs` VALUES (1,'theme','logo_url','\"\\/storage\\/uploads\\/05-2024\\/NSBsPV1EZ5HCNTNAqNAefVZKvnYBjoQtnVbbHeQT.png\"'),(2,'theme','favicon_url','\"\\/storage\\/uploads\\/05-2024\\/UDlVBjaALq0qm3SQMOB4Nz6wuHPsub7TQpbUGIKs.png\"'),(3,'theme','favicon_chrome_small_url','\"\\/storage\\/uploads\\/05-2024\\/JCt5dGywuUrWMfwUBSYSjumvyxSsdj3pIkJQlJKS.png\"'),(4,'theme','favicon_chrome_medium_url','\"\\/storage\\/uploads\\/05-2024\\/EmxLuTREEVlrSvs9uvl6OXxomMxjHx5pfE4wKAN1.png\"');
/*!40000 ALTER TABLE `mixpost_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_facebook_insights`
--

DROP TABLE IF EXISTS `mixpost_facebook_insights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_facebook_insights` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `workspace_id` bigint unsigned NOT NULL,
  `account_id` bigint unsigned NOT NULL,
  `type` int NOT NULL,
  `value` int NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fb_insights_unq_id` (`workspace_id`,`account_id`,`type`,`date`),
  KEY `mixpost_facebook_insights_workspace_id_index` (`workspace_id`),
  KEY `mixpost_facebook_insights_account_id_index` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28441 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_facebook_insights`
--

LOCK TABLES `mixpost_facebook_insights` WRITE;
/*!40000 ALTER TABLE `mixpost_facebook_insights` DISABLE KEYS */;
INSERT INTO `mixpost_facebook_insights` VALUES (1,1,4,2,0,'2024-02-16','2024-05-15 14:00:04','2024-05-15 22:00:05'),(2,1,4,2,0,'2024-02-17','2024-05-15 14:00:04','2024-05-16 22:00:04'),(3,1,4,2,0,'2024-02-18','2024-05-15 14:00:04','2024-05-17 22:00:05'),(4,1,4,2,0,'2024-02-19','2024-05-15 14:00:04','2024-05-18 22:00:04'),(5,1,4,2,0,'2024-02-20','2024-05-15 14:00:04','2024-05-19 22:00:03'),(6,1,4,2,0,'2024-02-21','2024-05-15 14:00:04','2024-05-20 22:00:05'),(7,1,4,2,0,'2024-02-22','2024-05-15 14:00:04','2024-05-21 22:00:07'),(8,1,4,2,0,'2024-02-23','2024-05-15 14:00:04','2024-05-22 22:00:03'),(9,1,4,2,0,'2024-02-24','2024-05-15 14:00:04','2024-05-23 22:00:06'),(10,1,4,2,0,'2024-02-25','2024-05-15 14:00:04','2024-05-24 22:00:05'),(11,1,4,2,0,'2024-02-26','2024-05-15 14:00:04','2024-05-25 22:00:06'),(12,1,4,2,0,'2024-02-27','2024-05-15 14:00:04','2024-05-26 22:00:03'),(13,1,4,2,0,'2024-02-28','2024-05-15 14:00:04','2024-05-27 16:00:04'),(14,1,4,2,0,'2024-02-29','2024-05-15 14:00:04','2024-05-28 22:00:05'),(15,1,4,2,0,'2024-03-01','2024-05-15 14:00:04','2024-05-29 18:00:05'),(16,1,4,2,0,'2024-03-02','2024-05-15 14:00:04','2024-05-29 18:00:05'),(17,1,4,2,0,'2024-03-03','2024-05-15 14:00:04','2024-05-29 18:00:05'),(18,1,4,2,0,'2024-03-04','2024-05-15 14:00:04','2024-05-29 18:00:05'),(19,1,4,2,0,'2024-03-05','2024-05-15 14:00:04','2024-05-29 18:00:05'),(20,1,4,2,0,'2024-03-06','2024-05-15 14:00:04','2024-05-29 18:00:05'),(21,1,4,2,0,'2024-03-07','2024-05-15 14:00:04','2024-05-29 18:00:05'),(22,1,4,2,0,'2024-03-08','2024-05-15 14:00:04','2024-05-29 18:00:05'),(23,1,4,2,0,'2024-03-09','2024-05-15 14:00:04','2024-05-29 18:00:05'),(24,1,4,2,0,'2024-03-10','2024-05-15 14:00:04','2024-05-29 18:00:05'),(25,1,4,2,0,'2024-03-11','2024-05-15 14:00:04','2024-05-29 18:00:05'),(26,1,4,2,0,'2024-03-12','2024-05-15 14:00:04','2024-05-29 18:00:05'),(27,1,4,2,0,'2024-03-13','2024-05-15 14:00:04','2024-05-29 18:00:05'),(28,1,4,2,0,'2024-03-14','2024-05-15 14:00:04','2024-05-29 18:00:05'),(29,1,4,2,0,'2024-03-15','2024-05-15 14:00:04','2024-05-29 18:00:05'),(30,1,4,2,0,'2024-03-16','2024-05-15 14:00:04','2024-05-29 18:00:05'),(31,1,4,2,0,'2024-03-17','2024-05-15 14:00:04','2024-05-29 18:00:05'),(32,1,4,2,0,'2024-03-18','2024-05-15 14:00:04','2024-05-29 18:00:05'),(33,1,4,2,0,'2024-03-19','2024-05-15 14:00:04','2024-05-29 18:00:05'),(34,1,4,2,0,'2024-03-20','2024-05-15 14:00:04','2024-05-29 18:00:05'),(35,1,4,2,0,'2024-03-21','2024-05-15 14:00:04','2024-05-29 18:00:05'),(36,1,4,2,0,'2024-03-22','2024-05-15 14:00:04','2024-05-29 18:00:05'),(37,1,4,2,0,'2024-03-23','2024-05-15 14:00:04','2024-05-29 18:00:05'),(38,1,4,2,0,'2024-03-24','2024-05-15 14:00:04','2024-05-29 18:00:05'),(39,1,4,2,0,'2024-03-25','2024-05-15 14:00:04','2024-05-29 18:00:05'),(40,1,4,2,0,'2024-03-26','2024-05-15 14:00:04','2024-05-29 18:00:05'),(41,1,4,2,0,'2024-03-27','2024-05-15 14:00:04','2024-05-29 18:00:05'),(42,1,4,2,0,'2024-03-28','2024-05-15 14:00:04','2024-05-29 18:00:05'),(43,1,4,2,0,'2024-03-29','2024-05-15 14:00:04','2024-05-29 18:00:05'),(44,1,4,2,0,'2024-03-30','2024-05-15 14:00:04','2024-05-29 18:00:05'),(45,1,4,2,0,'2024-03-31','2024-05-15 14:00:04','2024-05-29 18:00:05'),(46,1,4,2,0,'2024-04-01','2024-05-15 14:00:04','2024-05-29 18:00:05'),(47,1,4,2,0,'2024-04-02','2024-05-15 14:00:04','2024-05-29 18:00:05'),(48,1,4,2,0,'2024-04-03','2024-05-15 14:00:04','2024-05-29 18:00:05'),(49,1,4,2,0,'2024-04-04','2024-05-15 14:00:04','2024-05-29 18:00:05'),(50,1,4,2,0,'2024-04-05','2024-05-15 14:00:04','2024-05-29 18:00:05'),(51,1,4,2,0,'2024-04-06','2024-05-15 14:00:04','2024-05-29 18:00:05'),(52,1,4,2,0,'2024-04-07','2024-05-15 14:00:04','2024-05-29 18:00:05'),(53,1,4,2,0,'2024-04-08','2024-05-15 14:00:04','2024-05-29 18:00:05'),(54,1,4,2,0,'2024-04-09','2024-05-15 14:00:04','2024-05-29 18:00:05'),(55,1,4,2,0,'2024-04-10','2024-05-15 14:00:04','2024-05-29 18:00:05'),(56,1,4,2,0,'2024-04-11','2024-05-15 14:00:04','2024-05-29 18:00:05'),(57,1,4,2,0,'2024-04-12','2024-05-15 14:00:04','2024-05-29 18:00:05'),(58,1,4,2,0,'2024-04-13','2024-05-15 14:00:04','2024-05-29 18:00:05'),(59,1,4,2,0,'2024-04-14','2024-05-15 14:00:04','2024-05-29 18:00:05'),(60,1,4,2,0,'2024-04-15','2024-05-15 14:00:04','2024-05-29 18:00:05'),(61,1,4,2,0,'2024-04-16','2024-05-15 14:00:04','2024-05-29 18:00:05'),(62,1,4,2,0,'2024-04-17','2024-05-15 14:00:04','2024-05-29 18:00:05'),(63,1,4,2,0,'2024-04-18','2024-05-15 14:00:04','2024-05-29 18:00:05'),(64,1,4,2,0,'2024-04-19','2024-05-15 14:00:04','2024-05-29 18:00:05'),(65,1,4,2,0,'2024-04-20','2024-05-15 14:00:04','2024-05-29 18:00:05'),(66,1,4,2,0,'2024-04-21','2024-05-15 14:00:04','2024-05-29 18:00:05'),(67,1,4,2,0,'2024-04-22','2024-05-15 14:00:04','2024-05-29 18:00:05'),(68,1,4,2,0,'2024-04-23','2024-05-15 14:00:04','2024-05-29 18:00:05'),(69,1,4,2,0,'2024-04-24','2024-05-15 14:00:04','2024-05-29 18:00:05'),(70,1,4,2,0,'2024-04-25','2024-05-15 14:00:04','2024-05-29 18:00:05'),(71,1,4,2,0,'2024-04-26','2024-05-15 14:00:04','2024-05-29 18:00:05'),(72,1,4,2,0,'2024-04-27','2024-05-15 14:00:04','2024-05-29 18:00:05'),(73,1,4,2,0,'2024-04-28','2024-05-15 14:00:04','2024-05-29 18:00:05'),(74,1,4,2,0,'2024-04-29','2024-05-15 14:00:04','2024-05-29 18:00:05'),(75,1,4,2,0,'2024-04-30','2024-05-15 14:00:04','2024-05-29 18:00:05'),(76,1,4,2,0,'2024-05-01','2024-05-15 14:00:04','2024-05-29 18:00:05'),(77,1,4,2,0,'2024-05-02','2024-05-15 14:00:04','2024-05-29 18:00:05'),(78,1,4,2,0,'2024-05-03','2024-05-15 14:00:04','2024-05-29 18:00:05'),(79,1,4,2,0,'2024-05-04','2024-05-15 14:00:04','2024-05-29 18:00:05'),(80,1,4,2,0,'2024-05-05','2024-05-15 14:00:04','2024-05-29 18:00:05'),(81,1,4,2,0,'2024-05-06','2024-05-15 14:00:04','2024-05-29 18:00:05'),(82,1,4,2,0,'2024-05-07','2024-05-15 14:00:04','2024-05-29 18:00:05'),(83,1,4,2,0,'2024-05-08','2024-05-15 14:00:04','2024-05-29 18:00:05'),(84,1,4,2,0,'2024-05-09','2024-05-15 14:00:04','2024-05-29 18:00:05'),(85,1,4,2,0,'2024-05-10','2024-05-15 14:00:04','2024-05-29 18:00:05'),(86,1,4,2,0,'2024-05-11','2024-05-15 14:00:04','2024-05-29 18:00:05'),(87,1,4,2,0,'2024-05-12','2024-05-15 14:00:04','2024-05-29 18:00:05'),(88,1,4,2,0,'2024-05-13','2024-05-15 14:00:04','2024-05-29 18:00:05'),(89,1,4,2,0,'2024-05-14','2024-05-15 14:00:04','2024-05-29 18:00:05'),(90,1,4,2,0,'2024-05-15','2024-05-15 14:00:04','2024-05-29 18:00:05'),(91,1,4,3,0,'2024-02-16','2024-05-15 14:00:04','2024-05-15 22:00:05'),(92,1,4,3,0,'2024-02-17','2024-05-15 14:00:04','2024-05-16 22:00:04'),(93,1,4,3,0,'2024-02-18','2024-05-15 14:00:04','2024-05-17 22:00:05'),(94,1,4,3,0,'2024-02-19','2024-05-15 14:00:04','2024-05-18 22:00:04'),(95,1,4,3,0,'2024-02-20','2024-05-15 14:00:04','2024-05-19 22:00:03'),(96,1,4,3,6,'2024-02-21','2024-05-15 14:00:04','2024-05-20 22:00:05'),(97,1,4,3,0,'2024-02-22','2024-05-15 14:00:04','2024-05-21 22:00:07'),(98,1,4,3,0,'2024-02-23','2024-05-15 14:00:04','2024-05-22 22:00:03'),(99,1,4,3,0,'2024-02-24','2024-05-15 14:00:04','2024-05-23 22:00:06'),(100,1,4,3,0,'2024-02-25','2024-05-15 14:00:04','2024-05-24 22:00:05'),(101,1,4,3,0,'2024-02-26','2024-05-15 14:00:04','2024-05-25 22:00:06'),(102,1,4,3,0,'2024-02-27','2024-05-15 14:00:04','2024-05-26 22:00:03'),(103,1,4,3,0,'2024-02-28','2024-05-15 14:00:04','2024-05-27 16:00:04'),(104,1,4,3,0,'2024-02-29','2024-05-15 14:00:04','2024-05-28 22:00:05'),(105,1,4,3,0,'2024-03-01','2024-05-15 14:00:04','2024-05-29 18:00:05'),(106,1,4,3,0,'2024-03-02','2024-05-15 14:00:04','2024-05-29 18:00:05'),(107,1,4,3,0,'2024-03-03','2024-05-15 14:00:04','2024-05-29 18:00:05'),(108,1,4,3,0,'2024-03-04','2024-05-15 14:00:04','2024-05-29 18:00:05'),(109,1,4,3,0,'2024-03-05','2024-05-15 14:00:04','2024-05-29 18:00:05'),(110,1,4,3,0,'2024-03-06','2024-05-15 14:00:04','2024-05-29 18:00:05'),(111,1,4,3,0,'2024-03-07','2024-05-15 14:00:04','2024-05-29 18:00:05'),(112,1,4,3,0,'2024-03-08','2024-05-15 14:00:04','2024-05-29 18:00:05'),(113,1,4,3,0,'2024-03-09','2024-05-15 14:00:04','2024-05-29 18:00:05'),(114,1,4,3,0,'2024-03-10','2024-05-15 14:00:04','2024-05-29 18:00:05'),(115,1,4,3,0,'2024-03-11','2024-05-15 14:00:04','2024-05-29 18:00:05'),(116,1,4,3,0,'2024-03-12','2024-05-15 14:00:04','2024-05-29 18:00:05'),(117,1,4,3,0,'2024-03-13','2024-05-15 14:00:04','2024-05-29 18:00:05'),(118,1,4,3,2,'2024-03-14','2024-05-15 14:00:04','2024-05-29 18:00:05'),(119,1,4,3,0,'2024-03-15','2024-05-15 14:00:04','2024-05-29 18:00:05'),(120,1,4,3,0,'2024-03-16','2024-05-15 14:00:04','2024-05-29 18:00:05'),(121,1,4,3,0,'2024-03-17','2024-05-15 14:00:04','2024-05-29 18:00:05'),(122,1,4,3,0,'2024-03-18','2024-05-15 14:00:04','2024-05-29 18:00:05'),(123,1,4,3,0,'2024-03-19','2024-05-15 14:00:04','2024-05-29 18:00:05'),(124,1,4,3,0,'2024-03-20','2024-05-15 14:00:04','2024-05-29 18:00:05'),(125,1,4,3,0,'2024-03-21','2024-05-15 14:00:04','2024-05-29 18:00:05'),(126,1,4,3,0,'2024-03-22','2024-05-15 14:00:04','2024-05-29 18:00:05'),(127,1,4,3,0,'2024-03-23','2024-05-15 14:00:04','2024-05-29 18:00:05'),(128,1,4,3,0,'2024-03-24','2024-05-15 14:00:04','2024-05-29 18:00:05'),(129,1,4,3,0,'2024-03-25','2024-05-15 14:00:04','2024-05-29 18:00:05'),(130,1,4,3,0,'2024-03-26','2024-05-15 14:00:04','2024-05-29 18:00:05'),(131,1,4,3,0,'2024-03-27','2024-05-15 14:00:04','2024-05-29 18:00:05'),(132,1,4,3,0,'2024-03-28','2024-05-15 14:00:04','2024-05-29 18:00:05'),(133,1,4,3,0,'2024-03-29','2024-05-15 14:00:04','2024-05-29 18:00:05'),(134,1,4,3,0,'2024-03-30','2024-05-15 14:00:04','2024-05-29 18:00:05'),(135,1,4,3,0,'2024-03-31','2024-05-15 14:00:04','2024-05-29 18:00:05'),(136,1,4,3,0,'2024-04-01','2024-05-15 14:00:04','2024-05-29 18:00:05'),(137,1,4,3,0,'2024-04-02','2024-05-15 14:00:04','2024-05-29 18:00:05'),(138,1,4,3,0,'2024-04-03','2024-05-15 14:00:04','2024-05-29 18:00:05'),(139,1,4,3,0,'2024-04-04','2024-05-15 14:00:04','2024-05-29 18:00:05'),(140,1,4,3,0,'2024-04-05','2024-05-15 14:00:04','2024-05-29 18:00:05'),(141,1,4,3,0,'2024-04-06','2024-05-15 14:00:04','2024-05-29 18:00:05'),(142,1,4,3,0,'2024-04-07','2024-05-15 14:00:04','2024-05-29 18:00:05'),(143,1,4,3,0,'2024-04-08','2024-05-15 14:00:04','2024-05-29 18:00:05'),(144,1,4,3,0,'2024-04-09','2024-05-15 14:00:04','2024-05-29 18:00:05'),(145,1,4,3,0,'2024-04-10','2024-05-15 14:00:04','2024-05-29 18:00:05'),(146,1,4,3,0,'2024-04-11','2024-05-15 14:00:04','2024-05-29 18:00:05'),(147,1,4,3,0,'2024-04-12','2024-05-15 14:00:04','2024-05-29 18:00:05'),(148,1,4,3,0,'2024-04-13','2024-05-15 14:00:04','2024-05-29 18:00:05'),(149,1,4,3,0,'2024-04-14','2024-05-15 14:00:04','2024-05-29 18:00:05'),(150,1,4,3,0,'2024-04-15','2024-05-15 14:00:04','2024-05-29 18:00:05'),(151,1,4,3,0,'2024-04-16','2024-05-15 14:00:04','2024-05-29 18:00:05'),(152,1,4,3,0,'2024-04-17','2024-05-15 14:00:04','2024-05-29 18:00:05'),(153,1,4,3,0,'2024-04-18','2024-05-15 14:00:04','2024-05-29 18:00:05'),(154,1,4,3,0,'2024-04-19','2024-05-15 14:00:04','2024-05-29 18:00:05'),(155,1,4,3,0,'2024-04-20','2024-05-15 14:00:04','2024-05-29 18:00:05'),(156,1,4,3,0,'2024-04-21','2024-05-15 14:00:04','2024-05-29 18:00:05'),(157,1,4,3,0,'2024-04-22','2024-05-15 14:00:04','2024-05-29 18:00:05'),(158,1,4,3,0,'2024-04-23','2024-05-15 14:00:04','2024-05-29 18:00:05'),(159,1,4,3,0,'2024-04-24','2024-05-15 14:00:04','2024-05-29 18:00:05'),(160,1,4,3,0,'2024-04-25','2024-05-15 14:00:04','2024-05-29 18:00:05'),(161,1,4,3,0,'2024-04-26','2024-05-15 14:00:04','2024-05-29 18:00:05'),(162,1,4,3,0,'2024-04-27','2024-05-15 14:00:04','2024-05-29 18:00:05'),(163,1,4,3,0,'2024-04-28','2024-05-15 14:00:04','2024-05-29 18:00:05'),(164,1,4,3,0,'2024-04-29','2024-05-15 14:00:04','2024-05-29 18:00:05'),(165,1,4,3,0,'2024-04-30','2024-05-15 14:00:04','2024-05-29 18:00:05'),(166,1,4,3,0,'2024-05-01','2024-05-15 14:00:04','2024-05-29 18:00:05'),(167,1,4,3,0,'2024-05-02','2024-05-15 14:00:04','2024-05-29 18:00:05'),(168,1,4,3,0,'2024-05-03','2024-05-15 14:00:04','2024-05-29 18:00:05'),(169,1,4,3,0,'2024-05-04','2024-05-15 14:00:04','2024-05-29 18:00:05'),(170,1,4,3,0,'2024-05-05','2024-05-15 14:00:04','2024-05-29 18:00:05'),(171,1,4,3,0,'2024-05-06','2024-05-15 14:00:04','2024-05-29 18:00:05'),(172,1,4,3,0,'2024-05-07','2024-05-15 14:00:04','2024-05-29 18:00:05'),(173,1,4,3,0,'2024-05-08','2024-05-15 14:00:04','2024-05-29 18:00:05'),(174,1,4,3,0,'2024-05-09','2024-05-15 14:00:04','2024-05-29 18:00:05'),(175,1,4,3,0,'2024-05-10','2024-05-15 14:00:04','2024-05-29 18:00:05'),(176,1,4,3,0,'2024-05-11','2024-05-15 14:00:04','2024-05-29 18:00:05'),(177,1,4,3,0,'2024-05-12','2024-05-15 14:00:04','2024-05-29 18:00:05'),(178,1,4,3,0,'2024-05-13','2024-05-15 14:00:04','2024-05-29 18:00:05'),(179,1,4,3,0,'2024-05-14','2024-05-15 14:00:04','2024-05-29 18:00:05'),(180,1,4,3,0,'2024-05-15','2024-05-15 14:00:04','2024-05-29 18:00:05'),(901,1,4,2,0,'2024-05-16','2024-05-16 00:00:06','2024-05-29 18:00:05'),(991,1,4,3,0,'2024-05-16','2024-05-16 00:00:06','2024-05-29 18:00:05'),(3061,1,4,2,0,'2024-05-17','2024-05-17 00:00:05','2024-05-29 18:00:05'),(3151,1,4,3,0,'2024-05-17','2024-05-17 00:00:05','2024-05-29 18:00:05'),(5221,1,4,2,0,'2024-05-18','2024-05-18 00:00:07','2024-05-29 18:00:05'),(5311,1,4,3,0,'2024-05-18','2024-05-18 00:00:07','2024-05-29 18:00:05'),(7381,1,4,2,0,'2024-05-19','2024-05-19 00:00:05','2024-05-29 18:00:05'),(7471,1,4,3,0,'2024-05-19','2024-05-19 00:00:07','2024-05-29 18:00:05'),(9541,1,4,2,0,'2024-05-20','2024-05-20 00:00:07','2024-05-29 18:00:05'),(9631,1,4,3,0,'2024-05-20','2024-05-20 00:00:07','2024-05-29 18:00:05'),(11701,1,4,2,0,'2024-05-21','2024-05-21 00:00:06','2024-05-29 18:00:05'),(11791,1,4,3,0,'2024-05-21','2024-05-21 00:00:07','2024-05-29 18:00:05'),(13861,1,4,2,0,'2024-05-22','2024-05-22 00:00:08','2024-05-29 18:00:05'),(13951,1,4,3,0,'2024-05-22','2024-05-22 00:00:08','2024-05-29 18:00:05'),(16021,1,4,2,0,'2024-05-23','2024-05-23 00:00:06','2024-05-29 18:00:05'),(16111,1,4,3,0,'2024-05-23','2024-05-23 00:00:06','2024-05-29 18:00:05'),(18181,1,4,2,0,'2024-05-24','2024-05-24 00:00:05','2024-05-29 18:00:05'),(18271,1,4,3,0,'2024-05-24','2024-05-24 00:00:05','2024-05-29 18:00:05'),(20341,1,4,2,0,'2024-05-25','2024-05-25 00:00:07','2024-05-29 18:00:05'),(20431,1,4,3,0,'2024-05-25','2024-05-25 00:00:07','2024-05-29 18:00:05'),(22501,1,4,2,0,'2024-05-26','2024-05-26 00:00:08','2024-05-29 18:00:05'),(22591,1,4,3,0,'2024-05-26','2024-05-26 00:00:14','2024-05-29 18:00:05'),(24661,1,4,2,0,'2024-05-27','2024-05-27 00:00:08','2024-05-29 18:00:05'),(24751,1,4,3,0,'2024-05-27','2024-05-27 00:00:08','2024-05-29 18:00:05'),(26281,1,4,2,0,'2024-05-28','2024-05-28 20:00:03','2024-05-29 18:00:05'),(26371,1,4,3,0,'2024-05-28','2024-05-28 20:00:03','2024-05-29 18:00:05'),(26641,1,4,2,0,'2024-05-29','2024-05-29 00:00:06','2024-05-29 18:00:05'),(26731,1,4,3,0,'2024-05-29','2024-05-29 00:00:07','2024-05-29 18:00:05');
/*!40000 ALTER TABLE `mixpost_facebook_insights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_hashtaggroups`
--

DROP TABLE IF EXISTS `mixpost_hashtaggroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_hashtaggroups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mixpost_hashtaggroups_uuid_unique` (`uuid`),
  KEY `mixpost_hashtaggroups_workspace_id_index` (`workspace_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_hashtaggroups`
--

LOCK TABLES `mixpost_hashtaggroups` WRITE;
/*!40000 ALTER TABLE `mixpost_hashtaggroups` DISABLE KEYS */;
INSERT INTO `mixpost_hashtaggroups` VALUES (2,'43885439-0397-4767-9136-73e70db2bc1a',1,'BrandMeUp','#BrandMeUp #socialmediamanagement #branding #socialmedia #socialmediamarketing','2024-05-28 18:02:41','2024-05-28 18:02:41');
/*!40000 ALTER TABLE `mixpost_hashtaggroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_imported_posts`
--

DROP TABLE IF EXISTS `mixpost_imported_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_imported_posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `workspace_id` bigint unsigned NOT NULL,
  `account_id` bigint unsigned NOT NULL,
  `provider_post_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `metrics` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `imported_posts_unq_id` (`workspace_id`,`account_id`,`provider_post_id`),
  KEY `mixpost_imported_posts_workspace_id_index` (`workspace_id`),
  KEY `mixpost_imported_posts_account_id_index` (`account_id`),
  KEY `mixpost_imported_posts_provider_post_id_index` (`provider_post_id`),
  CONSTRAINT `mixpost_imported_posts_chk_1` CHECK (json_valid(`content`)),
  CONSTRAINT `mixpost_imported_posts_chk_2` CHECK (json_valid(`metrics`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_imported_posts`
--

LOCK TABLES `mixpost_imported_posts` WRITE;
/*!40000 ALTER TABLE `mixpost_imported_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mixpost_imported_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_instagram_insights`
--

DROP TABLE IF EXISTS `mixpost_instagram_insights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_instagram_insights` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `workspace_id` bigint unsigned NOT NULL,
  `account_id` bigint unsigned NOT NULL,
  `type` int NOT NULL,
  `value` int NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ig_insights_unq_id` (`workspace_id`,`account_id`,`type`,`date`),
  KEY `mixpost_instagram_insights_workspace_id_index` (`workspace_id`),
  KEY `mixpost_instagram_insights_account_id_index` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37921 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_instagram_insights`
--

LOCK TABLES `mixpost_instagram_insights` WRITE;
/*!40000 ALTER TABLE `mixpost_instagram_insights` DISABLE KEYS */;
INSERT INTO `mixpost_instagram_insights` VALUES (1,1,5,1,0,'2024-04-15','2024-05-15 14:00:04','2024-05-15 22:00:05'),(2,1,5,1,0,'2024-04-16','2024-05-15 14:00:04','2024-05-16 22:00:04'),(3,1,5,1,0,'2024-04-17','2024-05-15 14:00:04','2024-05-17 22:00:05'),(4,1,5,1,0,'2024-04-18','2024-05-15 14:00:04','2024-05-18 22:00:04'),(5,1,5,1,0,'2024-04-19','2024-05-15 14:00:04','2024-05-19 22:00:03'),(6,1,5,1,0,'2024-04-20','2024-05-15 14:00:04','2024-05-20 22:00:05'),(7,1,5,1,0,'2024-04-21','2024-05-15 14:00:04','2024-05-21 22:00:06'),(8,1,5,1,0,'2024-04-22','2024-05-15 14:00:04','2024-05-22 22:00:04'),(9,1,5,1,0,'2024-04-23','2024-05-15 14:00:04','2024-05-23 22:00:07'),(10,1,5,1,0,'2024-04-24','2024-05-15 14:00:04','2024-05-24 22:00:05'),(11,1,5,1,0,'2024-04-25','2024-05-15 14:00:04','2024-05-25 22:00:06'),(12,1,5,1,0,'2024-04-26','2024-05-15 14:00:04','2024-05-26 22:00:04'),(13,1,5,1,0,'2024-04-27','2024-05-15 14:00:04','2024-05-27 16:00:05'),(14,1,5,1,0,'2024-04-28','2024-05-15 14:00:04','2024-05-28 22:00:05'),(15,1,5,1,0,'2024-04-29','2024-05-15 14:00:04','2024-05-29 18:00:05'),(16,1,5,1,0,'2024-04-30','2024-05-15 14:00:04','2024-05-29 18:00:05'),(17,1,5,1,0,'2024-05-01','2024-05-15 14:00:04','2024-05-29 18:00:05'),(18,1,5,1,0,'2024-05-02','2024-05-15 14:00:04','2024-05-29 18:00:05'),(19,1,5,1,0,'2024-05-03','2024-05-15 14:00:04','2024-05-29 18:00:05'),(20,1,5,1,0,'2024-05-04','2024-05-15 14:00:04','2024-05-29 18:00:05'),(21,1,5,1,0,'2024-05-05','2024-05-15 14:00:04','2024-05-29 18:00:05'),(22,1,5,1,0,'2024-05-06','2024-05-15 14:00:04','2024-05-29 18:00:05'),(23,1,5,1,0,'2024-05-07','2024-05-15 14:00:04','2024-05-29 18:00:05'),(24,1,5,1,0,'2024-05-08','2024-05-15 14:00:04','2024-05-29 18:00:05'),(25,1,5,1,0,'2024-05-09','2024-05-15 14:00:04','2024-05-29 18:00:05'),(26,1,5,1,0,'2024-05-10','2024-05-15 14:00:04','2024-05-29 18:00:05'),(27,1,5,1,0,'2024-05-11','2024-05-15 14:00:04','2024-05-29 18:00:05'),(28,1,5,1,0,'2024-05-12','2024-05-15 14:00:04','2024-05-29 18:00:05'),(29,1,5,1,0,'2024-05-13','2024-05-15 14:00:04','2024-05-29 18:00:05'),(30,1,5,1,0,'2024-05-14','2024-05-15 14:00:04','2024-05-29 18:00:05'),(31,1,5,3,0,'2024-04-15','2024-05-15 14:00:04','2024-05-15 22:00:05'),(32,1,5,3,0,'2024-04-16','2024-05-15 14:00:04','2024-05-16 22:00:04'),(33,1,5,3,0,'2024-04-17','2024-05-15 14:00:04','2024-05-17 22:00:05'),(34,1,5,3,0,'2024-04-18','2024-05-15 14:00:04','2024-05-18 22:00:04'),(35,1,5,3,0,'2024-04-19','2024-05-15 14:00:04','2024-05-19 22:00:03'),(36,1,5,3,0,'2024-04-20','2024-05-15 14:00:04','2024-05-20 22:00:05'),(37,1,5,3,0,'2024-04-21','2024-05-15 14:00:04','2024-05-21 22:00:06'),(38,1,5,3,0,'2024-04-22','2024-05-15 14:00:04','2024-05-22 22:00:04'),(39,1,5,3,0,'2024-04-23','2024-05-15 14:00:04','2024-05-23 22:00:07'),(40,1,5,3,0,'2024-04-24','2024-05-15 14:00:04','2024-05-24 22:00:05'),(41,1,5,3,0,'2024-04-25','2024-05-15 14:00:04','2024-05-25 22:00:06'),(42,1,5,3,0,'2024-04-26','2024-05-15 14:00:04','2024-05-26 22:00:04'),(43,1,5,3,0,'2024-04-27','2024-05-15 14:00:04','2024-05-27 16:00:05'),(44,1,5,3,0,'2024-04-28','2024-05-15 14:00:04','2024-05-28 22:00:05'),(45,1,5,3,0,'2024-04-29','2024-05-15 14:00:04','2024-05-29 18:00:05'),(46,1,5,3,0,'2024-04-30','2024-05-15 14:00:04','2024-05-29 18:00:05'),(47,1,5,3,0,'2024-05-01','2024-05-15 14:00:04','2024-05-29 18:00:05'),(48,1,5,3,0,'2024-05-02','2024-05-15 14:00:04','2024-05-29 18:00:05'),(49,1,5,3,0,'2024-05-03','2024-05-15 14:00:04','2024-05-29 18:00:05'),(50,1,5,3,0,'2024-05-04','2024-05-15 14:00:04','2024-05-29 18:00:05'),(51,1,5,3,0,'2024-05-05','2024-05-15 14:00:04','2024-05-29 18:00:05'),(52,1,5,3,0,'2024-05-06','2024-05-15 14:00:04','2024-05-29 18:00:05'),(53,1,5,3,0,'2024-05-07','2024-05-15 14:00:04','2024-05-29 18:00:05'),(54,1,5,3,0,'2024-05-08','2024-05-15 14:00:04','2024-05-29 18:00:05'),(55,1,5,3,0,'2024-05-09','2024-05-15 14:00:04','2024-05-29 18:00:05'),(56,1,5,3,0,'2024-05-10','2024-05-15 14:00:04','2024-05-29 18:00:05'),(57,1,5,3,0,'2024-05-11','2024-05-15 14:00:04','2024-05-29 18:00:05'),(58,1,5,3,0,'2024-05-12','2024-05-15 14:00:04','2024-05-29 18:00:05'),(59,1,5,3,0,'2024-05-13','2024-05-15 14:00:04','2024-05-29 18:00:05'),(60,1,5,3,0,'2024-05-14','2024-05-15 14:00:04','2024-05-29 18:00:05'),(61,1,5,4,0,'2024-04-15','2024-05-15 14:00:04','2024-05-15 22:00:05'),(62,1,5,4,0,'2024-04-16','2024-05-15 14:00:04','2024-05-16 22:00:04'),(63,1,5,4,0,'2024-04-17','2024-05-15 14:00:04','2024-05-17 22:00:05'),(64,1,5,4,0,'2024-04-18','2024-05-15 14:00:04','2024-05-18 22:00:04'),(65,1,5,4,0,'2024-04-19','2024-05-15 14:00:04','2024-05-19 22:00:03'),(66,1,5,4,0,'2024-04-20','2024-05-15 14:00:04','2024-05-20 22:00:05'),(67,1,5,4,0,'2024-04-21','2024-05-15 14:00:04','2024-05-21 22:00:06'),(68,1,5,4,0,'2024-04-22','2024-05-15 14:00:04','2024-05-22 22:00:04'),(69,1,5,4,0,'2024-04-23','2024-05-15 14:00:04','2024-05-23 22:00:07'),(70,1,5,4,0,'2024-04-24','2024-05-15 14:00:04','2024-05-24 22:00:05'),(71,1,5,4,0,'2024-04-25','2024-05-15 14:00:04','2024-05-25 22:00:06'),(72,1,5,4,0,'2024-04-26','2024-05-15 14:00:04','2024-05-26 22:00:04'),(73,1,5,4,0,'2024-04-27','2024-05-15 14:00:04','2024-05-27 16:00:05'),(74,1,5,4,0,'2024-04-28','2024-05-15 14:00:04','2024-05-28 22:00:05'),(75,1,5,4,0,'2024-04-29','2024-05-15 14:00:04','2024-05-29 18:00:05'),(76,1,5,4,0,'2024-04-30','2024-05-15 14:00:04','2024-05-29 18:00:05'),(77,1,5,4,0,'2024-05-01','2024-05-15 14:00:04','2024-05-29 18:00:05'),(78,1,5,4,14,'2024-05-02','2024-05-15 14:00:04','2024-05-29 18:00:05'),(79,1,5,4,0,'2024-05-03','2024-05-15 14:00:04','2024-05-29 18:00:05'),(80,1,5,4,0,'2024-05-04','2024-05-15 14:00:04','2024-05-29 18:00:05'),(81,1,5,4,0,'2024-05-05','2024-05-15 14:00:04','2024-05-29 18:00:05'),(82,1,5,4,0,'2024-05-06','2024-05-15 14:00:04','2024-05-29 18:00:05'),(83,1,5,4,0,'2024-05-07','2024-05-15 14:00:04','2024-05-29 18:00:05'),(84,1,5,4,0,'2024-05-08','2024-05-15 14:00:04','2024-05-29 18:00:05'),(85,1,5,4,0,'2024-05-09','2024-05-15 14:00:04','2024-05-29 18:00:05'),(86,1,5,4,0,'2024-05-10','2024-05-15 14:00:04','2024-05-29 18:00:05'),(87,1,5,4,0,'2024-05-11','2024-05-15 14:00:04','2024-05-29 18:00:05'),(88,1,5,4,0,'2024-05-12','2024-05-15 14:00:04','2024-05-29 18:00:05'),(89,1,5,4,0,'2024-05-13','2024-05-15 14:00:04','2024-05-29 18:00:05'),(90,1,5,4,0,'2024-05-14','2024-05-15 14:00:04','2024-05-29 18:00:05'),(91,1,5,5,0,'2024-04-15','2024-05-15 14:00:04','2024-05-15 22:00:05'),(92,1,5,5,0,'2024-04-16','2024-05-15 14:00:04','2024-05-16 22:00:04'),(93,1,5,5,0,'2024-04-17','2024-05-15 14:00:04','2024-05-17 22:00:05'),(94,1,5,5,0,'2024-04-18','2024-05-15 14:00:04','2024-05-18 22:00:04'),(95,1,5,5,0,'2024-04-19','2024-05-15 14:00:04','2024-05-19 22:00:03'),(96,1,5,5,0,'2024-04-20','2024-05-15 14:00:04','2024-05-20 22:00:05'),(97,1,5,5,0,'2024-04-21','2024-05-15 14:00:04','2024-05-21 22:00:06'),(98,1,5,5,0,'2024-04-22','2024-05-15 14:00:04','2024-05-22 22:00:04'),(99,1,5,5,0,'2024-04-23','2024-05-15 14:00:04','2024-05-23 22:00:07'),(100,1,5,5,0,'2024-04-24','2024-05-15 14:00:04','2024-05-24 22:00:05'),(101,1,5,5,0,'2024-04-25','2024-05-15 14:00:04','2024-05-25 22:00:06'),(102,1,5,5,0,'2024-04-26','2024-05-15 14:00:04','2024-05-26 22:00:04'),(103,1,5,5,0,'2024-04-27','2024-05-15 14:00:04','2024-05-27 16:00:05'),(104,1,5,5,0,'2024-04-28','2024-05-15 14:00:04','2024-05-28 22:00:05'),(105,1,5,5,0,'2024-04-29','2024-05-15 14:00:04','2024-05-29 18:00:05'),(106,1,5,5,0,'2024-04-30','2024-05-15 14:00:04','2024-05-29 18:00:05'),(107,1,5,5,0,'2024-05-01','2024-05-15 14:00:04','2024-05-29 18:00:05'),(108,1,5,5,0,'2024-05-02','2024-05-15 14:00:04','2024-05-29 18:00:05'),(109,1,5,5,0,'2024-05-03','2024-05-15 14:00:04','2024-05-29 18:00:05'),(110,1,5,5,0,'2024-05-04','2024-05-15 14:00:04','2024-05-29 18:00:05'),(111,1,5,5,0,'2024-05-05','2024-05-15 14:00:04','2024-05-29 18:00:05'),(112,1,5,5,0,'2024-05-06','2024-05-15 14:00:04','2024-05-29 18:00:05'),(113,1,5,5,0,'2024-05-07','2024-05-15 14:00:04','2024-05-29 18:00:05'),(114,1,5,5,0,'2024-05-08','2024-05-15 14:00:04','2024-05-29 18:00:05'),(115,1,5,5,0,'2024-05-09','2024-05-15 14:00:04','2024-05-29 18:00:05'),(116,1,5,5,0,'2024-05-10','2024-05-15 14:00:04','2024-05-29 18:00:05'),(117,1,5,5,0,'2024-05-11','2024-05-15 14:00:04','2024-05-29 18:00:05'),(118,1,5,5,0,'2024-05-12','2024-05-15 14:00:04','2024-05-29 18:00:05'),(119,1,5,5,0,'2024-05-13','2024-05-15 14:00:04','2024-05-29 18:00:05'),(120,1,5,5,0,'2024-05-14','2024-05-15 14:00:04','2024-05-29 18:00:05'),(121,1,5,6,0,'2024-04-15','2024-05-15 14:00:04','2024-05-15 22:00:05'),(122,1,5,6,0,'2024-04-16','2024-05-15 14:00:04','2024-05-16 22:00:04'),(123,1,5,6,0,'2024-04-17','2024-05-15 14:00:04','2024-05-17 22:00:05'),(124,1,5,6,0,'2024-04-18','2024-05-15 14:00:04','2024-05-18 22:00:04'),(125,1,5,6,0,'2024-04-19','2024-05-15 14:00:04','2024-05-19 22:00:03'),(126,1,5,6,0,'2024-04-20','2024-05-15 14:00:04','2024-05-20 22:00:05'),(127,1,5,6,0,'2024-04-21','2024-05-15 14:00:04','2024-05-21 22:00:06'),(128,1,5,6,0,'2024-04-22','2024-05-15 14:00:04','2024-05-22 22:00:04'),(129,1,5,6,0,'2024-04-23','2024-05-15 14:00:04','2024-05-23 22:00:07'),(130,1,5,6,0,'2024-04-24','2024-05-15 14:00:04','2024-05-24 22:00:05'),(131,1,5,6,0,'2024-04-25','2024-05-15 14:00:04','2024-05-25 22:00:06'),(132,1,5,6,0,'2024-04-26','2024-05-15 14:00:04','2024-05-26 22:00:04'),(133,1,5,6,0,'2024-04-27','2024-05-15 14:00:04','2024-05-27 16:00:05'),(134,1,5,6,0,'2024-04-28','2024-05-15 14:00:04','2024-05-28 22:00:05'),(135,1,5,6,0,'2024-04-29','2024-05-15 14:00:04','2024-05-29 18:00:05'),(136,1,5,6,0,'2024-04-30','2024-05-15 14:00:04','2024-05-29 18:00:05'),(137,1,5,6,0,'2024-05-01','2024-05-15 14:00:04','2024-05-29 18:00:05'),(138,1,5,6,1,'2024-05-02','2024-05-15 14:00:04','2024-05-29 18:00:05'),(139,1,5,6,0,'2024-05-03','2024-05-15 14:00:04','2024-05-29 18:00:05'),(140,1,5,6,0,'2024-05-04','2024-05-15 14:00:04','2024-05-29 18:00:05'),(141,1,5,6,0,'2024-05-05','2024-05-15 14:00:04','2024-05-29 18:00:05'),(142,1,5,6,0,'2024-05-06','2024-05-15 14:00:04','2024-05-29 18:00:05'),(143,1,5,6,0,'2024-05-07','2024-05-15 14:00:04','2024-05-29 18:00:05'),(144,1,5,6,0,'2024-05-08','2024-05-15 14:00:04','2024-05-29 18:00:05'),(145,1,5,6,0,'2024-05-09','2024-05-15 14:00:04','2024-05-29 18:00:05'),(146,1,5,6,0,'2024-05-10','2024-05-15 14:00:04','2024-05-29 18:00:05'),(147,1,5,6,0,'2024-05-11','2024-05-15 14:00:04','2024-05-29 18:00:05'),(148,1,5,6,0,'2024-05-12','2024-05-15 14:00:04','2024-05-29 18:00:05'),(149,1,5,6,0,'2024-05-13','2024-05-15 14:00:04','2024-05-29 18:00:05'),(150,1,5,6,0,'2024-05-14','2024-05-15 14:00:04','2024-05-29 18:00:05'),(151,1,5,7,0,'2024-04-15','2024-05-15 14:00:04','2024-05-15 22:00:05'),(152,1,5,7,0,'2024-04-16','2024-05-15 14:00:04','2024-05-16 22:00:04'),(153,1,5,7,0,'2024-04-17','2024-05-15 14:00:04','2024-05-17 22:00:05'),(154,1,5,7,0,'2024-04-18','2024-05-15 14:00:04','2024-05-18 22:00:04'),(155,1,5,7,0,'2024-04-19','2024-05-15 14:00:04','2024-05-19 22:00:03'),(156,1,5,7,0,'2024-04-20','2024-05-15 14:00:04','2024-05-20 22:00:05'),(157,1,5,7,0,'2024-04-21','2024-05-15 14:00:04','2024-05-21 22:00:06'),(158,1,5,7,0,'2024-04-22','2024-05-15 14:00:04','2024-05-22 22:00:04'),(159,1,5,7,0,'2024-04-23','2024-05-15 14:00:04','2024-05-23 22:00:07'),(160,1,5,7,0,'2024-04-24','2024-05-15 14:00:04','2024-05-24 22:00:05'),(161,1,5,7,0,'2024-04-25','2024-05-15 14:00:04','2024-05-25 22:00:06'),(162,1,5,7,0,'2024-04-26','2024-05-15 14:00:04','2024-05-26 22:00:04'),(163,1,5,7,0,'2024-04-27','2024-05-15 14:00:04','2024-05-27 16:00:05'),(164,1,5,7,0,'2024-04-28','2024-05-15 14:00:04','2024-05-28 22:00:05'),(165,1,5,7,0,'2024-04-29','2024-05-15 14:00:04','2024-05-29 18:00:05'),(166,1,5,7,0,'2024-04-30','2024-05-15 14:00:04','2024-05-29 18:00:05'),(167,1,5,7,0,'2024-05-01','2024-05-15 14:00:04','2024-05-29 18:00:05'),(168,1,5,7,1,'2024-05-02','2024-05-15 14:00:04','2024-05-29 18:00:05'),(169,1,5,7,0,'2024-05-03','2024-05-15 14:00:04','2024-05-29 18:00:05'),(170,1,5,7,0,'2024-05-04','2024-05-15 14:00:04','2024-05-29 18:00:05'),(171,1,5,7,0,'2024-05-05','2024-05-15 14:00:04','2024-05-29 18:00:05'),(172,1,5,7,0,'2024-05-06','2024-05-15 14:00:04','2024-05-29 18:00:05'),(173,1,5,7,0,'2024-05-07','2024-05-15 14:00:04','2024-05-29 18:00:05'),(174,1,5,7,0,'2024-05-08','2024-05-15 14:00:04','2024-05-29 18:00:05'),(175,1,5,7,0,'2024-05-09','2024-05-15 14:00:04','2024-05-29 18:00:05'),(176,1,5,7,0,'2024-05-10','2024-05-15 14:00:04','2024-05-29 18:00:05'),(177,1,5,7,0,'2024-05-11','2024-05-15 14:00:04','2024-05-29 18:00:05'),(178,1,5,7,0,'2024-05-12','2024-05-15 14:00:04','2024-05-29 18:00:05'),(179,1,5,7,0,'2024-05-13','2024-05-15 14:00:04','2024-05-29 18:00:05'),(180,1,5,7,0,'2024-05-14','2024-05-15 14:00:04','2024-05-29 18:00:05'),(181,1,5,8,0,'2024-04-15','2024-05-15 14:00:04','2024-05-15 22:00:05'),(182,1,5,8,0,'2024-04-16','2024-05-15 14:00:04','2024-05-16 22:00:04'),(183,1,5,8,0,'2024-04-17','2024-05-15 14:00:04','2024-05-17 22:00:05'),(184,1,5,8,0,'2024-04-18','2024-05-15 14:00:04','2024-05-18 22:00:04'),(185,1,5,8,0,'2024-04-19','2024-05-15 14:00:04','2024-05-19 22:00:03'),(186,1,5,8,0,'2024-04-20','2024-05-15 14:00:04','2024-05-20 22:00:05'),(187,1,5,8,0,'2024-04-21','2024-05-15 14:00:04','2024-05-21 22:00:06'),(188,1,5,8,0,'2024-04-22','2024-05-15 14:00:04','2024-05-22 22:00:04'),(189,1,5,8,0,'2024-04-23','2024-05-15 14:00:04','2024-05-23 22:00:07'),(190,1,5,8,0,'2024-04-24','2024-05-15 14:00:04','2024-05-24 22:00:05'),(191,1,5,8,0,'2024-04-25','2024-05-15 14:00:04','2024-05-25 22:00:06'),(192,1,5,8,0,'2024-04-26','2024-05-15 14:00:04','2024-05-26 22:00:04'),(193,1,5,8,0,'2024-04-27','2024-05-15 14:00:04','2024-05-27 16:00:05'),(194,1,5,8,0,'2024-04-28','2024-05-15 14:00:04','2024-05-28 22:00:05'),(195,1,5,8,0,'2024-04-29','2024-05-15 14:00:04','2024-05-29 18:00:05'),(196,1,5,8,0,'2024-04-30','2024-05-15 14:00:04','2024-05-29 18:00:05'),(197,1,5,8,0,'2024-05-01','2024-05-15 14:00:04','2024-05-29 18:00:05'),(198,1,5,8,0,'2024-05-02','2024-05-15 14:00:04','2024-05-29 18:00:05'),(199,1,5,8,0,'2024-05-03','2024-05-15 14:00:04','2024-05-29 18:00:05'),(200,1,5,8,0,'2024-05-04','2024-05-15 14:00:04','2024-05-29 18:00:05'),(201,1,5,8,0,'2024-05-05','2024-05-15 14:00:04','2024-05-29 18:00:05'),(202,1,5,8,0,'2024-05-06','2024-05-15 14:00:04','2024-05-29 18:00:05'),(203,1,5,8,0,'2024-05-07','2024-05-15 14:00:04','2024-05-29 18:00:05'),(204,1,5,8,0,'2024-05-08','2024-05-15 14:00:04','2024-05-29 18:00:05'),(205,1,5,8,0,'2024-05-09','2024-05-15 14:00:04','2024-05-29 18:00:05'),(206,1,5,8,0,'2024-05-10','2024-05-15 14:00:04','2024-05-29 18:00:05'),(207,1,5,8,0,'2024-05-11','2024-05-15 14:00:04','2024-05-29 18:00:05'),(208,1,5,8,0,'2024-05-12','2024-05-15 14:00:04','2024-05-29 18:00:05'),(209,1,5,8,0,'2024-05-13','2024-05-15 14:00:04','2024-05-29 18:00:05'),(210,1,5,8,0,'2024-05-14','2024-05-15 14:00:04','2024-05-29 18:00:05'),(211,1,5,9,0,'2024-04-15','2024-05-15 14:00:04','2024-05-15 22:00:05'),(212,1,5,9,0,'2024-04-16','2024-05-15 14:00:04','2024-05-16 22:00:04'),(213,1,5,9,0,'2024-04-17','2024-05-15 14:00:04','2024-05-17 22:00:05'),(214,1,5,9,0,'2024-04-18','2024-05-15 14:00:04','2024-05-18 22:00:04'),(215,1,5,9,0,'2024-04-19','2024-05-15 14:00:04','2024-05-19 22:00:03'),(216,1,5,9,0,'2024-04-20','2024-05-15 14:00:04','2024-05-20 22:00:05'),(217,1,5,9,0,'2024-04-21','2024-05-15 14:00:04','2024-05-21 22:00:06'),(218,1,5,9,0,'2024-04-22','2024-05-15 14:00:04','2024-05-22 22:00:04'),(219,1,5,9,0,'2024-04-23','2024-05-15 14:00:04','2024-05-23 22:00:07'),(220,1,5,9,0,'2024-04-24','2024-05-15 14:00:04','2024-05-24 22:00:05'),(221,1,5,9,0,'2024-04-25','2024-05-15 14:00:04','2024-05-25 22:00:06'),(222,1,5,9,0,'2024-04-26','2024-05-15 14:00:04','2024-05-26 22:00:04'),(223,1,5,9,0,'2024-04-27','2024-05-15 14:00:04','2024-05-27 16:00:05'),(224,1,5,9,0,'2024-04-28','2024-05-15 14:00:04','2024-05-28 22:00:05'),(225,1,5,9,0,'2024-04-29','2024-05-15 14:00:04','2024-05-29 18:00:05'),(226,1,5,9,0,'2024-04-30','2024-05-15 14:00:04','2024-05-29 18:00:05'),(227,1,5,9,0,'2024-05-01','2024-05-15 14:00:04','2024-05-29 18:00:05'),(228,1,5,9,0,'2024-05-02','2024-05-15 14:00:04','2024-05-29 18:00:05'),(229,1,5,9,0,'2024-05-03','2024-05-15 14:00:04','2024-05-29 18:00:05'),(230,1,5,9,0,'2024-05-04','2024-05-15 14:00:04','2024-05-29 18:00:05'),(231,1,5,9,0,'2024-05-05','2024-05-15 14:00:04','2024-05-29 18:00:05'),(232,1,5,9,0,'2024-05-06','2024-05-15 14:00:04','2024-05-29 18:00:05'),(233,1,5,9,0,'2024-05-07','2024-05-15 14:00:04','2024-05-29 18:00:05'),(234,1,5,9,0,'2024-05-08','2024-05-15 14:00:04','2024-05-29 18:00:05'),(235,1,5,9,0,'2024-05-09','2024-05-15 14:00:04','2024-05-29 18:00:05'),(236,1,5,9,0,'2024-05-10','2024-05-15 14:00:04','2024-05-29 18:00:05'),(237,1,5,9,0,'2024-05-11','2024-05-15 14:00:04','2024-05-29 18:00:05'),(238,1,5,9,0,'2024-05-12','2024-05-15 14:00:04','2024-05-29 18:00:05'),(239,1,5,9,0,'2024-05-13','2024-05-15 14:00:04','2024-05-29 18:00:05'),(240,1,5,9,0,'2024-05-14','2024-05-15 14:00:04','2024-05-29 18:00:05'),(1201,1,5,1,0,'2024-05-15','2024-05-16 00:00:06','2024-05-29 18:00:05'),(1231,1,5,3,0,'2024-05-15','2024-05-16 00:00:06','2024-05-29 18:00:05'),(1261,1,5,4,0,'2024-05-15','2024-05-16 00:00:06','2024-05-29 18:00:05'),(1291,1,5,5,0,'2024-05-15','2024-05-16 00:00:06','2024-05-29 18:00:05'),(1321,1,5,6,0,'2024-05-15','2024-05-16 00:00:06','2024-05-29 18:00:05'),(1351,1,5,7,0,'2024-05-15','2024-05-16 00:00:06','2024-05-29 18:00:05'),(1381,1,5,8,0,'2024-05-15','2024-05-16 00:00:06','2024-05-29 18:00:05'),(1411,1,5,9,0,'2024-05-15','2024-05-16 00:00:06','2024-05-29 18:00:05'),(4081,1,5,1,0,'2024-05-16','2024-05-17 00:00:05','2024-05-29 18:00:05'),(4111,1,5,3,0,'2024-05-16','2024-05-17 00:00:05','2024-05-29 18:00:05'),(4141,1,5,4,0,'2024-05-16','2024-05-17 00:00:05','2024-05-29 18:00:05'),(4171,1,5,5,0,'2024-05-16','2024-05-17 00:00:05','2024-05-29 18:00:05'),(4201,1,5,6,0,'2024-05-16','2024-05-17 00:00:05','2024-05-29 18:00:05'),(4231,1,5,7,0,'2024-05-16','2024-05-17 00:00:05','2024-05-29 18:00:05'),(4261,1,5,8,0,'2024-05-16','2024-05-17 00:00:05','2024-05-29 18:00:05'),(4291,1,5,9,0,'2024-05-16','2024-05-17 00:00:05','2024-05-29 18:00:05'),(6961,1,5,1,0,'2024-05-17','2024-05-18 00:00:08','2024-05-29 18:00:05'),(6991,1,5,3,0,'2024-05-17','2024-05-18 00:00:08','2024-05-29 18:00:05'),(7021,1,5,4,0,'2024-05-17','2024-05-18 00:00:08','2024-05-29 18:00:05'),(7051,1,5,5,0,'2024-05-17','2024-05-18 00:00:08','2024-05-29 18:00:05'),(7081,1,5,6,0,'2024-05-17','2024-05-18 00:00:08','2024-05-29 18:00:05'),(7111,1,5,7,0,'2024-05-17','2024-05-18 00:00:08','2024-05-29 18:00:05'),(7141,1,5,8,0,'2024-05-17','2024-05-18 00:00:08','2024-05-29 18:00:05'),(7171,1,5,9,0,'2024-05-17','2024-05-18 00:00:08','2024-05-29 18:00:05'),(9841,1,5,1,0,'2024-05-18','2024-05-19 00:00:05','2024-05-29 18:00:05'),(9871,1,5,3,0,'2024-05-18','2024-05-19 00:00:08','2024-05-29 18:00:05'),(9901,1,5,4,0,'2024-05-18','2024-05-19 00:00:11','2024-05-29 18:00:05'),(9931,1,5,5,0,'2024-05-18','2024-05-19 00:00:17','2024-05-29 18:00:05'),(9961,1,5,6,0,'2024-05-18','2024-05-19 00:00:19','2024-05-29 18:00:05'),(9991,1,5,7,0,'2024-05-18','2024-05-19 00:00:21','2024-05-29 18:00:05'),(10021,1,5,8,0,'2024-05-18','2024-05-19 00:00:22','2024-05-29 18:00:05'),(10051,1,5,9,0,'2024-05-18','2024-05-19 00:00:23','2024-05-29 18:00:05'),(12721,1,5,1,0,'2024-05-19','2024-05-20 00:00:07','2024-05-29 18:00:05'),(12751,1,5,3,0,'2024-05-19','2024-05-20 00:00:07','2024-05-29 18:00:05'),(12781,1,5,4,0,'2024-05-19','2024-05-20 00:00:08','2024-05-29 18:00:05'),(12811,1,5,5,0,'2024-05-19','2024-05-20 00:00:08','2024-05-29 18:00:05'),(12841,1,5,6,0,'2024-05-19','2024-05-20 00:00:09','2024-05-29 18:00:05'),(12871,1,5,7,0,'2024-05-19','2024-05-20 00:00:09','2024-05-29 18:00:05'),(12901,1,5,8,0,'2024-05-19','2024-05-20 00:00:09','2024-05-29 18:00:05'),(12931,1,5,9,0,'2024-05-19','2024-05-20 00:00:09','2024-05-29 18:00:05'),(15601,1,5,1,0,'2024-05-20','2024-05-21 00:00:07','2024-05-29 18:00:05'),(15631,1,5,3,0,'2024-05-20','2024-05-21 00:00:07','2024-05-29 18:00:05'),(15661,1,5,4,0,'2024-05-20','2024-05-21 00:00:07','2024-05-29 18:00:05'),(15691,1,5,5,0,'2024-05-20','2024-05-21 00:00:07','2024-05-29 18:00:05'),(15721,1,5,6,0,'2024-05-20','2024-05-21 00:00:07','2024-05-29 18:00:05'),(15751,1,5,7,0,'2024-05-20','2024-05-21 00:00:07','2024-05-29 18:00:05'),(15781,1,5,8,0,'2024-05-20','2024-05-21 00:00:07','2024-05-29 18:00:05'),(15811,1,5,9,0,'2024-05-20','2024-05-21 00:00:07','2024-05-29 18:00:05'),(18481,1,5,1,0,'2024-05-21','2024-05-22 00:00:07','2024-05-29 18:00:05'),(18511,1,5,3,0,'2024-05-21','2024-05-22 00:00:07','2024-05-29 18:00:05'),(18541,1,5,4,0,'2024-05-21','2024-05-22 00:00:07','2024-05-29 18:00:05'),(18571,1,5,5,0,'2024-05-21','2024-05-22 00:00:07','2024-05-29 18:00:05'),(18601,1,5,6,0,'2024-05-21','2024-05-22 00:00:07','2024-05-29 18:00:05'),(18631,1,5,7,0,'2024-05-21','2024-05-22 00:00:07','2024-05-29 18:00:05'),(18661,1,5,8,0,'2024-05-21','2024-05-22 00:00:07','2024-05-29 18:00:05'),(18691,1,5,9,0,'2024-05-21','2024-05-22 00:00:07','2024-05-29 18:00:05'),(21361,1,5,1,0,'2024-05-22','2024-05-23 00:00:06','2024-05-29 18:00:05'),(21391,1,5,3,0,'2024-05-22','2024-05-23 00:00:08','2024-05-29 18:00:05'),(21421,1,5,4,0,'2024-05-22','2024-05-23 00:00:08','2024-05-29 18:00:05'),(21451,1,5,5,0,'2024-05-22','2024-05-23 00:00:08','2024-05-29 18:00:05'),(21481,1,5,6,0,'2024-05-22','2024-05-23 00:00:09','2024-05-29 18:00:05'),(21511,1,5,7,0,'2024-05-22','2024-05-23 00:00:09','2024-05-29 18:00:05'),(21541,1,5,8,0,'2024-05-22','2024-05-23 00:00:09','2024-05-29 18:00:05'),(21571,1,5,9,0,'2024-05-22','2024-05-23 00:00:09','2024-05-29 18:00:05'),(24241,1,5,1,0,'2024-05-23','2024-05-24 00:00:06','2024-05-29 18:00:05'),(24271,1,5,3,0,'2024-05-23','2024-05-24 00:00:06','2024-05-29 18:00:05'),(24301,1,5,4,0,'2024-05-23','2024-05-24 00:00:06','2024-05-29 18:00:05'),(24331,1,5,5,0,'2024-05-23','2024-05-24 00:00:06','2024-05-29 18:00:05'),(24361,1,5,6,0,'2024-05-23','2024-05-24 00:00:06','2024-05-29 18:00:05'),(24391,1,5,7,0,'2024-05-23','2024-05-24 00:00:06','2024-05-29 18:00:05'),(24421,1,5,8,0,'2024-05-23','2024-05-24 00:00:06','2024-05-29 18:00:05'),(24451,1,5,9,0,'2024-05-23','2024-05-24 00:00:06','2024-05-29 18:00:05'),(27121,1,5,1,0,'2024-05-24','2024-05-25 00:00:07','2024-05-29 18:00:05'),(27151,1,5,3,0,'2024-05-24','2024-05-25 00:00:07','2024-05-29 18:00:05'),(27181,1,5,4,0,'2024-05-24','2024-05-25 00:00:07','2024-05-29 18:00:05'),(27211,1,5,5,0,'2024-05-24','2024-05-25 00:00:07','2024-05-29 18:00:05'),(27241,1,5,6,0,'2024-05-24','2024-05-25 00:00:07','2024-05-29 18:00:05'),(27271,1,5,7,0,'2024-05-24','2024-05-25 00:00:07','2024-05-29 18:00:05'),(27301,1,5,8,0,'2024-05-24','2024-05-25 00:00:07','2024-05-29 18:00:05'),(27331,1,5,9,0,'2024-05-24','2024-05-25 00:00:07','2024-05-29 18:00:05'),(30001,1,5,1,0,'2024-05-25','2024-05-26 00:00:09','2024-05-29 18:00:05'),(30031,1,5,3,0,'2024-05-25','2024-05-26 00:00:23','2024-05-29 18:00:05'),(30061,1,5,4,0,'2024-05-25','2024-05-26 00:00:26','2024-05-29 18:00:05'),(30091,1,5,5,0,'2024-05-25','2024-05-26 00:00:28','2024-05-29 18:00:05'),(30121,1,5,6,0,'2024-05-25','2024-05-26 00:00:28','2024-05-29 18:00:05'),(30151,1,5,7,0,'2024-05-25','2024-05-26 00:00:29','2024-05-29 18:00:05'),(30181,1,5,8,0,'2024-05-25','2024-05-26 00:00:29','2024-05-29 18:00:05'),(30211,1,5,9,0,'2024-05-25','2024-05-26 00:00:30','2024-05-29 18:00:05'),(32881,1,5,1,0,'2024-05-26','2024-05-27 00:00:08','2024-05-29 18:00:05'),(32911,1,5,3,0,'2024-05-26','2024-05-27 00:00:08','2024-05-29 18:00:05'),(32941,1,5,4,0,'2024-05-26','2024-05-27 00:00:09','2024-05-29 18:00:05'),(32971,1,5,5,0,'2024-05-26','2024-05-27 00:00:09','2024-05-29 18:00:05'),(33001,1,5,6,0,'2024-05-26','2024-05-27 00:00:10','2024-05-29 18:00:05'),(33031,1,5,7,0,'2024-05-26','2024-05-27 00:00:10','2024-05-29 18:00:05'),(33061,1,5,8,0,'2024-05-26','2024-05-27 00:00:10','2024-05-29 18:00:05'),(33091,1,5,9,0,'2024-05-26','2024-05-27 00:00:10','2024-05-29 18:00:05'),(35041,1,5,1,0,'2024-05-27','2024-05-28 20:00:03','2024-05-29 18:00:05'),(35071,1,5,3,0,'2024-05-27','2024-05-28 20:00:03','2024-05-29 18:00:05'),(35101,1,5,4,0,'2024-05-27','2024-05-28 20:00:03','2024-05-29 18:00:05'),(35131,1,5,5,0,'2024-05-27','2024-05-28 20:00:03','2024-05-29 18:00:05'),(35161,1,5,6,0,'2024-05-27','2024-05-28 20:00:03','2024-05-29 18:00:05'),(35191,1,5,7,0,'2024-05-27','2024-05-28 20:00:03','2024-05-29 18:00:05'),(35221,1,5,8,0,'2024-05-27','2024-05-28 20:00:03','2024-05-29 18:00:05'),(35251,1,5,9,0,'2024-05-27','2024-05-28 20:00:03','2024-05-29 18:00:05'),(35521,1,5,1,0,'2024-05-28','2024-05-29 00:00:06','2024-05-29 18:00:05'),(35551,1,5,3,0,'2024-05-28','2024-05-29 00:00:07','2024-05-29 18:00:05'),(35581,1,5,4,0,'2024-05-28','2024-05-29 00:00:07','2024-05-29 18:00:05'),(35611,1,5,5,0,'2024-05-28','2024-05-29 00:00:07','2024-05-29 18:00:05'),(35641,1,5,6,0,'2024-05-28','2024-05-29 00:00:07','2024-05-29 18:00:05'),(35671,1,5,7,0,'2024-05-28','2024-05-29 00:00:07','2024-05-29 18:00:05'),(35701,1,5,8,0,'2024-05-28','2024-05-29 00:00:08','2024-05-29 18:00:05'),(35731,1,5,9,0,'2024-05-28','2024-05-29 00:00:08','2024-05-29 18:00:05');
/*!40000 ALTER TABLE `mixpost_instagram_insights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_media`
--

DROP TABLE IF EXISTS `mixpost_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `size` bigint unsigned NOT NULL,
  `size_total` bigint unsigned NOT NULL,
  `conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mixpost_media_uuid_unique` (`uuid`),
  KEY `mixpost_media_workspace_id_index` (`workspace_id`),
  CONSTRAINT `mixpost_media_chk_1` CHECK (json_valid(`data`)),
  CONSTRAINT `mixpost_media_chk_2` CHECK (json_valid(`conversions`))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_media`
--

LOCK TABLES `mixpost_media` WRITE;
/*!40000 ALTER TABLE `mixpost_media` DISABLE KEYS */;
INSERT INTO `mixpost_media` VALUES (3,'83ce1840-778e-4d5d-b892-433b24a445b2',1,'Ai skincare model.jpg','image/jpeg','public','6693c326-daf5-494e-a2e3-25676103945c/uploads/05-2024/yUQVGf6Rz0rh6d3ymVtBBOwqNOJjA9twmhRzzleC.jpg',NULL,159139,190693,'[{\"engine\":\"ImageResize\",\"path\":\"6693c326-daf5-494e-a2e3-25676103945c\\/uploads\\/05-2024\\/yUQVGf6Rz0rh6d3ymVtBBOwqNOJjA9twmhRzzleC-thumb.jpg\",\"disk\":\"public\",\"size\":31554,\"name\":\"thumb\"}]','2024-05-12 18:52:58','2024-05-12 18:52:58'),(4,'d0e2bb9d-9038-47da-a479-a3837f5ab050',3,'business.png','image/png','public','261d35ca-d6bf-4180-9a0d-d6856ca1d68e/uploads/05-2024/MEA9nxQjvzGEeBVAymRkrWgq9nKIgRNrUW0U6Wky.png',NULL,183277,324680,'[{\"engine\":\"ImageResize\",\"path\":\"261d35ca-d6bf-4180-9a0d-d6856ca1d68e\\/uploads\\/05-2024\\/MEA9nxQjvzGEeBVAymRkrWgq9nKIgRNrUW0U6Wky-thumb.png\",\"disk\":\"public\",\"size\":141403,\"name\":\"thumb\"}]','2024-05-15 08:06:29','2024-05-15 08:06:29'),(5,'58bb79cf-3ce6-4411-ad26-d1bdf3eb6570',1,'SOS Alert.jpg','image/jpeg','public','6693c326-daf5-494e-a2e3-25676103945c/uploads/05-2024/8i9R0QGIJu9eo15pjLcerUz2u5ZFAow6cF4E6iNL.jpg',NULL,38354,65015,'[{\"engine\":\"ImageResize\",\"path\":\"6693c326-daf5-494e-a2e3-25676103945c\\/uploads\\/05-2024\\/8i9R0QGIJu9eo15pjLcerUz2u5ZFAow6cF4E6iNL-thumb.jpg\",\"disk\":\"public\",\"size\":26661,\"name\":\"thumb\"}]','2024-05-15 10:43:12','2024-05-15 10:43:12'),(11,'3d412d70-ea64-42f4-90db-a13c97d55540',1,'shoes.jpg','image/jpeg','public','6693c326-daf5-494e-a2e3-25676103945c/uploads/05-2024/vANxbY0kzaOH9x1lgPvVzt3hwTN8opW1ZLB9wwe1.jpg',NULL,29279,77139,'[{\"engine\":\"ImageResize\",\"path\":\"6693c326-daf5-494e-a2e3-25676103945c\\/uploads\\/05-2024\\/vANxbY0kzaOH9x1lgPvVzt3hwTN8opW1ZLB9wwe1-thumb.jpg\",\"disk\":\"public\",\"size\":47860,\"name\":\"thumb\"}]','2024-05-28 18:41:07','2024-05-28 18:41:07'),(12,'7cb93dc2-439b-4240-99c0-401e06c936a9',1,'screely-1716840214905.png','image/png','public','6693c326-daf5-494e-a2e3-25676103945c/uploads/05-2024/iJGaTjkpCUQ5sui0efFtngfcKkCtGcNWf8U00v3F.png',NULL,107198,131538,'[{\"engine\":\"ImageResize\",\"path\":\"6693c326-daf5-494e-a2e3-25676103945c\\/uploads\\/05-2024\\/iJGaTjkpCUQ5sui0efFtngfcKkCtGcNWf8U00v3F-thumb.png\",\"disk\":\"public\",\"size\":24340,\"name\":\"thumb\"}]','2024-05-28 18:43:46','2024-05-28 18:43:46');
/*!40000 ALTER TABLE `mixpost_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_metrics`
--

DROP TABLE IF EXISTS `mixpost_metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_metrics` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `workspace_id` bigint unsigned NOT NULL,
  `account_id` bigint unsigned NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `metrics_unq_id` (`workspace_id`,`account_id`,`date`),
  KEY `mixpost_metrics_workspace_id_index` (`workspace_id`),
  KEY `mixpost_metrics_account_id_index` (`account_id`),
  CONSTRAINT `mixpost_metrics_chk_1` CHECK (json_valid(`data`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_metrics`
--

LOCK TABLES `mixpost_metrics` WRITE;
/*!40000 ALTER TABLE `mixpost_metrics` DISABLE KEYS */;
/*!40000 ALTER TABLE `mixpost_metrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_page_block`
--

DROP TABLE IF EXISTS `mixpost_page_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_page_block` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_id` bigint unsigned NOT NULL,
  `block_id` bigint unsigned NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `sort_order` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mixpost_page_block_page_id_foreign` (`page_id`),
  KEY `mixpost_page_block_block_id_foreign` (`block_id`),
  CONSTRAINT `mixpost_page_block_block_id_foreign` FOREIGN KEY (`block_id`) REFERENCES `mixpost_blocks` (`id`) ON DELETE CASCADE,
  CONSTRAINT `mixpost_page_block_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `mixpost_pages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `mixpost_page_block_chk_1` CHECK (json_valid(`options`))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_page_block`
--

LOCK TABLES `mixpost_page_block` WRITE;
/*!40000 ALTER TABLE `mixpost_page_block` DISABLE KEYS */;
INSERT INTO `mixpost_page_block` VALUES (1,1,1,NULL,0),(2,1,3,NULL,1),(3,1,2,NULL,2),(4,2,1,NULL,0),(5,2,5,NULL,1),(6,2,2,NULL,2),(7,3,1,NULL,0),(8,3,4,NULL,1),(9,3,2,NULL,2);
/*!40000 ALTER TABLE `mixpost_page_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_pages`
--

DROP TABLE IF EXISTS `mixpost_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `layout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mixpost_pages_uuid_unique` (`uuid`),
  UNIQUE KEY `mixpost_pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_pages`
--

LOCK TABLES `mixpost_pages` WRITE;
/*!40000 ALTER TABLE `mixpost_pages` DISABLE KEYS */;
INSERT INTO `mixpost_pages` VALUES (1,'c443f545-fbca-4ab2-929d-e507406299f5','Home','home',NULL,NULL,'medium',1,'2024-05-15 12:07:15','2024-05-15 12:07:15'),(2,'d3465d01-db7c-4bfe-8c4e-8cb67fcb7c1a','Terms Of Use','terms',NULL,NULL,'medium',1,'2024-05-15 12:07:15','2024-05-15 12:07:15'),(3,'cab2cce7-a006-4627-9b5d-106fd8eaee57','Privacy Policy','privacy',NULL,NULL,'medium',1,'2024-05-15 12:07:15','2024-05-15 12:07:15');
/*!40000 ALTER TABLE `mixpost_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_pinterest_analytics`
--

DROP TABLE IF EXISTS `mixpost_pinterest_analytics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_pinterest_analytics` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `workspace_id` bigint unsigned NOT NULL,
  `account_id` bigint unsigned NOT NULL,
  `provider_post_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `metrics` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pin_analytics_unq_id` (`workspace_id`,`account_id`,`provider_post_id`,`date`),
  KEY `pin_analytics_index` (`workspace_id`,`account_id`),
  KEY `mixpost_pinterest_analytics_workspace_id_index` (`workspace_id`),
  KEY `mixpost_pinterest_analytics_account_id_index` (`account_id`),
  KEY `mixpost_pinterest_analytics_provider_post_id_index` (`provider_post_id`),
  CONSTRAINT `mixpost_pinterest_analytics_chk_1` CHECK (json_valid(`metrics`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_pinterest_analytics`
--

LOCK TABLES `mixpost_pinterest_analytics` WRITE;
/*!40000 ALTER TABLE `mixpost_pinterest_analytics` DISABLE KEYS */;
/*!40000 ALTER TABLE `mixpost_pinterest_analytics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_post_accounts`
--

DROP TABLE IF EXISTS `mixpost_post_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_post_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL,
  `account_id` bigint unsigned NOT NULL,
  `provider_post_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `errors` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`id`),
  KEY `mixpost_post_accounts_post_id_foreign` (`post_id`),
  KEY `mixpost_post_accounts_account_id_foreign` (`account_id`),
  CONSTRAINT `mixpost_post_accounts_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `mixpost_accounts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `mixpost_post_accounts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `mixpost_posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `mixpost_post_accounts_chk_1` CHECK (json_valid(`data`)),
  CONSTRAINT `mixpost_post_accounts_chk_2` CHECK (json_valid(`errors`))
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_post_accounts`
--

LOCK TABLES `mixpost_post_accounts` WRITE;
/*!40000 ALTER TABLE `mixpost_post_accounts` DISABLE KEYS */;
INSERT INTO `mixpost_post_accounts` VALUES (31,46,2,NULL,NULL,NULL),(32,47,4,NULL,NULL,NULL),(33,47,5,NULL,NULL,NULL),(34,47,2,NULL,NULL,NULL),(35,48,4,NULL,NULL,NULL),(36,48,5,NULL,NULL,NULL),(37,48,2,NULL,NULL,NULL),(38,50,6,NULL,NULL,NULL),(39,52,6,NULL,NULL,NULL),(40,53,6,'urn:li:share:7201292680750882816',NULL,NULL);
/*!40000 ALTER TABLE `mixpost_post_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_post_versions`
--

DROP TABLE IF EXISTS `mixpost_post_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_post_versions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL,
  `account_id` bigint NOT NULL,
  `is_original` tinyint NOT NULL DEFAULT '0',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`id`),
  KEY `mixpost_post_versions_post_id_foreign` (`post_id`),
  CONSTRAINT `mixpost_post_versions_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `mixpost_posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `mixpost_post_versions_chk_1` CHECK (json_valid(`content`)),
  CONSTRAINT `mixpost_post_versions_chk_2` CHECK (json_valid(`options`))
) ENGINE=InnoDB AUTO_INCREMENT=389 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_post_versions`
--

LOCK TABLES `mixpost_post_versions` WRITE;
/*!40000 ALTER TABLE `mixpost_post_versions` DISABLE KEYS */;
INSERT INTO `mixpost_post_versions` VALUES (319,46,0,1,'[{\"body\":\"<div>Member post from brand me up<\\/div>\",\"media\":[],\"url\":null}]','{\"mastodon\":{\"sensitive\":false},\"facebook_page\":{\"type\":\"post\"},\"instagram\":{\"type\":\"post\"},\"youtube\":{\"title\":null,\"status\":\"public\"},\"pinterest\":{\"title\":null,\"link\":null,\"boards\":{\"account-0\":null}},\"linkedin\":{\"visibility\":\"PUBLIC\"},\"tiktok\":{\"privacy_level\":{\"account-0\":null},\"allow_comments\":{\"account-0\":false},\"allow_duet\":{\"account-0\":false},\"allow_stitch\":{\"account-0\":false},\"content_disclosure\":{\"account-0\":false},\"brand_organic_toggle\":{\"account-0\":false},\"brand_content_toggle\":{\"account-0\":false}}}'),(323,47,0,1,'[{\"body\":\"<div>jiojiojo9kopkopikpo[klopkop<\\/div>\",\"media\":[],\"url\":null}]','{\"mastodon\":{\"sensitive\":false},\"facebook_page\":{\"type\":\"post\"},\"instagram\":{\"type\":\"post\"},\"youtube\":{\"title\":null,\"status\":\"public\"},\"pinterest\":{\"title\":null,\"link\":null,\"boards\":{\"account-0\":null}},\"linkedin\":{\"visibility\":\"PUBLIC\"},\"tiktok\":{\"privacy_level\":{\"account-0\":null},\"allow_comments\":{\"account-0\":false},\"allow_duet\":{\"account-0\":false},\"allow_stitch\":{\"account-0\":false},\"content_disclosure\":{\"account-0\":false},\"brand_organic_toggle\":{\"account-0\":false},\"brand_content_toggle\":{\"account-0\":false}}}'),(331,48,0,1,'[{\"body\":\"<div>ugugugugugugu<\\/div>\",\"media\":[],\"url\":null}]','{\"mastodon\":{\"sensitive\":false},\"facebook_page\":{\"type\":\"post\"},\"instagram\":{\"type\":\"post\"},\"youtube\":{\"title\":null,\"status\":\"public\"},\"pinterest\":{\"title\":null,\"link\":null,\"boards\":{\"account-0\":null}},\"linkedin\":{\"visibility\":\"PUBLIC\"},\"tiktok\":{\"privacy_level\":{\"account-0\":null},\"allow_comments\":{\"account-0\":false},\"allow_duet\":{\"account-0\":false},\"allow_stitch\":{\"account-0\":false},\"content_disclosure\":{\"account-0\":false},\"brand_organic_toggle\":{\"account-0\":false},\"brand_content_toggle\":{\"account-0\":false}}}'),(334,49,0,1,'[{\"body\":\"<div><\\/div>\",\"media\":[],\"url\":null}]','{\"mastodon\":{\"sensitive\":false},\"facebook_page\":{\"type\":\"post\"},\"instagram\":{\"type\":\"post\"},\"youtube\":{\"title\":null,\"status\":\"public\"},\"pinterest\":{\"title\":null,\"link\":null,\"boards\":{\"account-0\":null}},\"linkedin\":{\"visibility\":\"PUBLIC\"},\"tiktok\":{\"privacy_level\":{\"account-0\":null},\"allow_comments\":{\"account-0\":false},\"allow_duet\":{\"account-0\":false},\"allow_stitch\":{\"account-0\":false},\"content_disclosure\":{\"account-0\":false},\"brand_organic_toggle\":{\"account-0\":false},\"brand_content_toggle\":{\"account-0\":false}}}'),(373,50,0,1,'[{\"body\":\"<div>BrandMe Up\\u2122 Planner is a powerful Software-as-a-Service platform designed to empower companies and thought leaders in managing and enhancing their social media strategies. Our system seamlessly integrates with major social networks, including Facebook, X, LinkedIn, and Instagram, offering a robust toolset tailored for high performance and efficiency.<\\/div><div><\\/div><div>Watch this space for further updates!<\\/div><div><\\/div><div><\\/div>\",\"media\":[\"6\"],\"url\":null}]','{\"mastodon\":{\"sensitive\":false},\"facebook_page\":{\"type\":\"post\"},\"instagram\":{\"type\":\"post\"},\"youtube\":{\"title\":null,\"status\":\"public\"},\"pinterest\":{\"title\":null,\"link\":null,\"boards\":{\"account-0\":null}},\"linkedin\":{\"visibility\":\"PUBLIC\"},\"tiktok\":{\"privacy_level\":{\"account-0\":null},\"allow_comments\":{\"account-0\":false},\"allow_duet\":{\"account-0\":false},\"allow_stitch\":{\"account-0\":false},\"content_disclosure\":{\"account-0\":false},\"brand_organic_toggle\":{\"account-0\":false},\"brand_content_toggle\":{\"account-0\":false}}}'),(374,51,0,1,'[{\"body\":\"<div>BrandMe Up\\u2122 Planner is a powerful Software-as-a-Service platform designed to empower companies and thought leaders in managing and enhancing their social media strategies. Our system seamlessly integrates with major social networks, including Facebook, X, LinkedIn, and Instagram, offering a robust toolset tailored for high performance and efficiency.<\\/div><div><\\/div><div>Watch this space for further updates!<\\/div>\",\"media\":[],\"url\":null}]','{\"mastodon\":{\"sensitive\":false},\"facebook_page\":{\"type\":\"post\"},\"instagram\":{\"type\":\"post\"},\"youtube\":{\"title\":null,\"status\":\"public\"},\"pinterest\":{\"title\":null,\"link\":null,\"boards\":{\"account-0\":null}},\"linkedin\":{\"visibility\":\"PUBLIC\"},\"tiktok\":{\"privacy_level\":{\"account-0\":null},\"allow_comments\":{\"account-0\":false},\"allow_duet\":{\"account-0\":false},\"allow_stitch\":{\"account-0\":false},\"content_disclosure\":{\"account-0\":false},\"brand_organic_toggle\":{\"account-0\":false},\"brand_content_toggle\":{\"account-0\":false}}}'),(382,52,0,1,'[{\"body\":\"<div>BrandMe Up\\u2122 Planner is a powerful Software-as-a-Service platform designed to empower companies and thought leaders in managing and enhancing their social media strategies. Our system seamlessly integrates with major social networks, including Facebook, X, LinkedIn, and Instagram, offering a robust toolset tailored for high performance and efficiency.<\\/div><div><\\/div><div>Watch this space for further updates!<\\/div><div><\\/div><div>#BrandMeUp #socialmediamanagement #branding #socialmedia #socialmediamarketing<\\/div>\",\"media\":[\"7\"],\"url\":null}]','{\"mastodon\":{\"sensitive\":false},\"facebook_page\":{\"type\":\"post\"},\"instagram\":{\"type\":\"post\"},\"youtube\":{\"title\":null,\"status\":\"public\"},\"pinterest\":{\"title\":null,\"link\":null,\"boards\":{\"account-0\":null}},\"linkedin\":{\"visibility\":\"PUBLIC\"},\"tiktok\":{\"privacy_level\":{\"account-0\":null},\"allow_comments\":{\"account-0\":false},\"allow_duet\":{\"account-0\":false},\"allow_stitch\":{\"account-0\":false},\"content_disclosure\":{\"account-0\":false},\"brand_organic_toggle\":{\"account-0\":false},\"brand_content_toggle\":{\"account-0\":false}}}'),(388,53,0,1,'[{\"body\":\"<div>BrandMe Up\\u2122 Planner is a powerful Software-as-a-Service platform designed to empower companies and thought leaders in managing and enhancing their social media strategies. Our system seamlessly integrates with major social networks, including Facebook, X, LinkedIn, and Instagram, offering a robust toolset tailored for high performance and efficiency.<\\/div><div><\\/div><div>#BrandMeUp #socialmediamanagement #branding #socialmedia #socialmediamarketing<\\/div>\",\"media\":[\"12\"],\"url\":null}]','{\"mastodon\":{\"sensitive\":false},\"facebook_page\":{\"type\":\"post\"},\"instagram\":{\"type\":\"post\"},\"youtube\":{\"title\":null,\"status\":\"public\"},\"pinterest\":{\"title\":null,\"link\":null,\"boards\":{\"account-0\":null}},\"linkedin\":{\"visibility\":\"PUBLIC\"},\"tiktok\":{\"privacy_level\":{\"account-0\":null},\"allow_comments\":{\"account-0\":false},\"allow_duet\":{\"account-0\":false},\"allow_stitch\":{\"account-0\":false},\"content_disclosure\":{\"account-0\":false},\"brand_organic_toggle\":{\"account-0\":false},\"brand_content_toggle\":{\"account-0\":false}}}');
/*!40000 ALTER TABLE `mixpost_post_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_posting_schedule`
--

DROP TABLE IF EXISTS `mixpost_posting_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_posting_schedule` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `workspace_id` bigint unsigned NOT NULL,
  `times` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mixpost_posting_schedule_workspace_id_index` (`workspace_id`),
  CONSTRAINT `mixpost_posting_schedule_chk_1` CHECK (json_valid(`times`))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_posting_schedule`
--

LOCK TABLES `mixpost_posting_schedule` WRITE;
/*!40000 ALTER TABLE `mixpost_posting_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `mixpost_posting_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_posts`
--

DROP TABLE IF EXISTS `mixpost_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `schedule_status` tinyint NOT NULL DEFAULT '0',
  `approval_status` tinyint(1) NOT NULL DEFAULT '0',
  `scheduled_at` datetime DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mixpost_posts_uuid_unique` (`uuid`),
  KEY `mixpost_posts_workspace_id_index` (`workspace_id`),
  KEY `mixpost_posts_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_posts`
--

LOCK TABLES `mixpost_posts` WRITE;
/*!40000 ALTER TABLE `mixpost_posts` DISABLE KEYS */;
INSERT INTO `mixpost_posts` VALUES (46,'75e88502-daa0-4748-b328-b10dbe0634ba',1,5,'post_now',0,0,0,'2024-05-19 19:29:05',NULL,'2024-05-28 18:08:48','2024-05-19 19:27:49','2024-05-28 18:08:48'),(47,'551157ba-d312-4e5f-aead-4a4e5b0e8bae',1,1,NULL,0,0,0,'2024-05-25 14:28:00',NULL,'2024-05-28 18:08:48','2024-05-25 14:28:55','2024-05-28 18:08:48'),(48,'060ae267-0f99-4f23-97d7-1515686339cf',1,1,NULL,0,0,0,'2024-05-25 14:41:00',NULL,'2024-05-28 18:08:48','2024-05-25 14:42:06','2024-05-28 18:08:48'),(49,'6a7ff7f8-1bf9-416c-aa33-dc9d9ce9c4a5',1,1,NULL,0,0,0,NULL,NULL,'2024-05-28 18:08:48','2024-05-25 14:46:00','2024-05-28 18:08:48'),(50,'f55d5f40-d493-4d95-8d1f-203c9507d8f3',1,1,NULL,0,0,0,NULL,NULL,'2024-05-28 18:08:48','2024-05-28 17:56:50','2024-05-28 18:08:48'),(51,'9d42c1d9-895d-4b47-926d-580b749cff3a',1,1,NULL,0,0,0,NULL,NULL,'2024-05-28 18:45:31','2024-05-28 18:09:06','2024-05-28 18:45:31'),(52,'6552970e-52e5-4339-a7e0-28d26180ae92',1,1,NULL,0,0,0,NULL,NULL,'2024-05-28 18:45:31','2024-05-28 18:09:06','2024-05-28 18:45:31'),(53,'20a9aa8d-5bf8-43ce-a21a-56f3db3f6911',1,1,NULL,2,2,1,'2024-05-28 18:45:20','2024-05-28 18:46:08',NULL,'2024-05-28 18:43:26','2024-05-28 18:46:08');
/*!40000 ALTER TABLE `mixpost_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_services`
--

DROP TABLE IF EXISTS `mixpost_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_services`
--

LOCK TABLES `mixpost_services` WRITE;
/*!40000 ALTER TABLE `mixpost_services` DISABLE KEYS */;
INSERT INTO `mixpost_services` VALUES (1,'twitter','eyJpdiI6IlZHYU5iTjNoVmkydHRqTktJZStCeHc9PSIsInZhbHVlIjoieWJqNURnN1l5cTA4UXVtZFJwTlZ6Y0w2UXhPdXAzQUZBdTFFUElGblFtd1pyQTdjQkY1bXY3NlcwV1E3OFZTMXFvaEhoRWhRWEpwU2pLSzBaZS95NXVCL2xZajRGbkVUMFhBejR1N29GdDdvbzd4Zms3d1Q3R3J2ZWlHeEhOMHQ2bHdFb2M4d1k0L1VTRUwwd3ltYnlhTzBNYTdXbksxZVJDcVBmT2dWNTM4PSIsIm1hYyI6IjkwYjEyZWI1MTAxMjA0ODE2NjE4MDUxMjAzZDQ0NzFhNThlNGYxZWQ4ZDQ3Zjc4OTI2ODU1ODBkYWVlYjE3M2IiLCJ0YWciOiIifQ==',1),(2,'google','eyJpdiI6IjFDM21xVjhBcGhQWUdrb0lUT2R5R3c9PSIsInZhbHVlIjoiYy9lSmlOSGNvZW9nOERhKzI0QXluQ24yMExQMDJhT0d3VnV6VHNDS2JnekFuem1WSUo0RXh4YjZoYmtudkE5dGhpMysvdVlUZmx1MHc3MmJ4dmhqRzBMMTJzSGVUcnVhNE9yTHMvRzVIOUtxOUZralZ2d2F6Z3FYTlNOd0lrUTBkd2ZRQzMwK0paN0pFdXMzM2tpZkdQTUxwVm9oOCt5Y3F5MzdSMXlHaTZpbWc3dU9rOHNybHVER1QvaDBoWnM0IiwibWFjIjoiYjc2NGI0Njk4NjJkNWM4Njg4M2ZkMjIwMjFiNTFmNGZlNmJjODBlMzMwMjg5ZDJjMGUzYjQxZmM0ZDhkNjU4MCIsInRhZyI6IiJ9',0),(3,'facebook','eyJpdiI6Inl2Wk5wMjJuQWJmUW9QVmRmeWdrNWc9PSIsInZhbHVlIjoiSWRoSUE4UStkYXNvZFdCSFpoSVhsSXJOMkxXZ0ovd3pkbGRLR1dtYm1wa2hocTRLcW45M3VWSHY3a3JSWUVMMkRMOFUrSzUxK0tUeXJrWHgvQ2EvSkpHbzF2N2s5OXU2VitpcTEyUjc1LzZwVzgvNEdBSFlEczJFWHVKOFRJaG1EQ2M2M09VYVpKVnpZOVpmT0NrM3NnPT0iLCJtYWMiOiI0ODU1ZWZjYTQ2YmExNzgxNzg1YmJhODJmN2Q2MWRhMWNiNGM4YTliMmE5NTVlNTMzZmQzMTMwYjk2NWIzYzI4IiwidGFnIjoiIn0=',1),(4,'linkedin','eyJpdiI6Ii8xY2VIM2J5ekRKeThoNm95SmRla1E9PSIsInZhbHVlIjoiQTJpWjFGemNrZ3JPbDJsckpJci9hNGljc0lqZ1RjWS9uRlEwVWR6VUU3aWdnRzlCOFVYNUdld2NITmJZOHZXMVRIY3Ixd3cxK1BUSHZsSmNiWnEzOVNDRlJBWitwOTRlcWRPb3JsYzM1cmpmQlNJZFdYdzVvNllzamlqL3E1RU5qU0dRZ201MnVDald5ME4zeWpmS1NFZE5RRHptMXZPZ21zTTg0cnN6bkJzPSIsIm1hYyI6IjkzZmY3YTgxODdkNGEyNWE3YmEyZjRmMDg4YTAwYTBiOGVjMmNhNWU5Mjc5YjJkNDM0NjIzZWYyNDcxNTM3OWMiLCJ0YWciOiIifQ==',1);
/*!40000 ALTER TABLE `mixpost_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_settings`
--

DROP TABLE IF EXISTS `mixpost_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mixpost_settings_user_id_name_unique` (`user_id`,`name`),
  KEY `mixpost_settings_user_id_index` (`user_id`),
  CONSTRAINT `mixpost_settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `mixpost_settings_chk_1` CHECK (json_valid(`payload`))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_settings`
--

LOCK TABLES `mixpost_settings` WRITE;
/*!40000 ALTER TABLE `mixpost_settings` DISABLE KEYS */;
INSERT INTO `mixpost_settings` VALUES (1,1,'timezone','\"Africa\\/Johannesburg\"'),(2,1,'active_workspace','1'),(3,3,'active_workspace','1'),(5,5,'active_workspace','1'),(9,11,'active_workspace','6');
/*!40000 ALTER TABLE `mixpost_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_tag_post`
--

DROP TABLE IF EXISTS `mixpost_tag_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_tag_post` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mixpost_tag_post_tag_id_foreign` (`tag_id`),
  KEY `mixpost_tag_post_post_id_foreign` (`post_id`),
  CONSTRAINT `mixpost_tag_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `mixpost_posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `mixpost_tag_post_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `mixpost_tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_tag_post`
--

LOCK TABLES `mixpost_tag_post` WRITE;
/*!40000 ALTER TABLE `mixpost_tag_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `mixpost_tag_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_tags`
--

DROP TABLE IF EXISTS `mixpost_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hex_color` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mixpost_tags_uuid_unique` (`uuid`),
  KEY `mixpost_tags_workspace_id_index` (`workspace_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_tags`
--

LOCK TABLES `mixpost_tags` WRITE;
/*!40000 ALTER TABLE `mixpost_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `mixpost_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_templates`
--

DROP TABLE IF EXISTS `mixpost_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mixpost_templates_uuid_unique` (`uuid`),
  KEY `mixpost_templates_workspace_id_index` (`workspace_id`),
  CONSTRAINT `mixpost_templates_chk_1` CHECK (json_valid(`content`)),
  CONSTRAINT `mixpost_templates_chk_2` CHECK (json_valid(`data`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_templates`
--

LOCK TABLES `mixpost_templates` WRITE;
/*!40000 ALTER TABLE `mixpost_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `mixpost_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_user_tokens`
--

DROP TABLE IF EXISTS `mixpost_user_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_user_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mixpost_user_tokens_token_unique` (`token`),
  KEY `mixpost_user_tokens_user_id_index` (`user_id`),
  CONSTRAINT `mixpost_user_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_user_tokens`
--

LOCK TABLES `mixpost_user_tokens` WRITE;
/*!40000 ALTER TABLE `mixpost_user_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `mixpost_user_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_user_two_factor_auth`
--

DROP TABLE IF EXISTS `mixpost_user_two_factor_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_user_two_factor_auth` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `secret_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `recovery_codes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mixpost_user_two_factor_auth_user_id_index` (`user_id`),
  CONSTRAINT `mixpost_user_two_factor_auth_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_user_two_factor_auth`
--

LOCK TABLES `mixpost_user_two_factor_auth` WRITE;
/*!40000 ALTER TABLE `mixpost_user_two_factor_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `mixpost_user_two_factor_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_variables`
--

DROP TABLE IF EXISTS `mixpost_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_variables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mixpost_variables_uuid_unique` (`uuid`),
  KEY `mixpost_variables_workspace_id_index` (`workspace_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_variables`
--

LOCK TABLES `mixpost_variables` WRITE;
/*!40000 ALTER TABLE `mixpost_variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `mixpost_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_webhook_deliveries`
--

DROP TABLE IF EXISTS `mixpost_webhook_deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_webhook_deliveries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `webhook_id` bigint unsigned NOT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL,
  `http_status` int DEFAULT NULL,
  `resend_at` timestamp NULL DEFAULT NULL,
  `resent_manually` tinyint(1) NOT NULL DEFAULT '0',
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `response` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mixpost_webhook_deliveries_uuid_unique` (`uuid`),
  KEY `mixpost_webhook_deliveries_webhook_id_index` (`webhook_id`),
  CONSTRAINT `mixpost_webhook_deliveries_webhook_id_foreign` FOREIGN KEY (`webhook_id`) REFERENCES `mixpost_webhooks` (`id`) ON DELETE CASCADE,
  CONSTRAINT `mixpost_webhook_deliveries_chk_1` CHECK (json_valid(`payload`)),
  CONSTRAINT `mixpost_webhook_deliveries_chk_2` CHECK (json_valid(`response`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_webhook_deliveries`
--

LOCK TABLES `mixpost_webhook_deliveries` WRITE;
/*!40000 ALTER TABLE `mixpost_webhook_deliveries` DISABLE KEYS */;
/*!40000 ALTER TABLE `mixpost_webhook_deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_webhooks`
--

DROP TABLE IF EXISTS `mixpost_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_webhooks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_id` bigint DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `callback_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `content_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_attempts` tinyint NOT NULL DEFAULT '1',
  `last_delivery_status` tinyint DEFAULT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mixpost_webhooks_uuid_unique` (`uuid`),
  KEY `mixpost_webhooks_workspace_id_active_index` (`workspace_id`,`active`),
  KEY `mixpost_webhooks_workspace_id_index` (`workspace_id`),
  CONSTRAINT `mixpost_webhooks_chk_1` CHECK (json_valid(`events`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_webhooks`
--

LOCK TABLES `mixpost_webhooks` WRITE;
/*!40000 ALTER TABLE `mixpost_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `mixpost_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_workspace_user`
--

DROP TABLE IF EXISTS `mixpost_workspace_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_workspace_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `workspace_id` bigint unsigned NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `joined` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `workspace_user_unq_id` (`workspace_id`,`user_id`),
  KEY `mixpost_workspace_user_user_id_index` (`user_id`),
  KEY `mixpost_workspace_user_workspace_id_index` (`workspace_id`),
  CONSTRAINT `mixpost_workspace_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `mixpost_workspace_user_workspace_id_foreign` FOREIGN KEY (`workspace_id`) REFERENCES `mixpost_workspaces` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_workspace_user`
--

LOCK TABLES `mixpost_workspace_user` WRITE;
/*!40000 ALTER TABLE `mixpost_workspace_user` DISABLE KEYS */;
INSERT INTO `mixpost_workspace_user` VALUES (1,1,1,'admin','2024-04-29 18:14:16'),(3,3,1,'admin','2024-05-10 11:46:43'),(5,1,3,'admin','2024-05-10 12:52:22'),(15,10,1,'admin','2024-05-15 10:45:45'),(16,11,1,'admin','2024-05-15 14:32:27'),(17,1,6,'admin','2024-05-15 13:25:32'),(18,11,6,'admin','2024-05-15 13:26:48'),(19,5,1,'member','2024-05-19 19:26:11'),(20,12,1,'member','2024-05-20 12:16:30'),(22,1,7,'admin','2024-05-25 14:51:37'),(23,1,8,'admin','2024-05-28 14:19:13');
/*!40000 ALTER TABLE `mixpost_workspace_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixpost_workspaces`
--

DROP TABLE IF EXISTS `mixpost_workspaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mixpost_workspaces` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hex_color` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mixpost_workspaces_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixpost_workspaces`
--

LOCK TABLES `mixpost_workspaces` WRITE;
/*!40000 ALTER TABLE `mixpost_workspaces` DISABLE KEYS */;
INSERT INTO `mixpost_workspaces` VALUES (1,'6693c326-daf5-494e-a2e3-25676103945c','SquareRoot Marketing Inc','818cf8','2024-04-29 18:14:16','2024-05-10 12:46:58'),(3,'261d35ca-d6bf-4180-9a0d-d6856ca1d68e','test workspace','94a3b8','2024-05-10 12:52:22','2024-05-10 12:52:22'),(6,'21f02883-ca3c-431d-9e62-baa22478da19','Erika Restaurant','0891b2','2024-05-15 13:25:32','2024-05-15 13:25:32'),(7,'c05be4c8-cd5f-46ee-809b-70de120079dd','Sohan Tech','111827','2024-05-25 14:51:37','2024-05-25 14:51:37'),(8,'8d3dd5c0-0ba6-4091-85c8-e998d466d143','Alejandro Consulting','fbbf24','2024-05-28 14:19:13','2024-05-28 14:19:13');
/*!40000 ALTER TABLE `mixpost_workspaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
INSERT INTO `password_reset_tokens` VALUES ('chepkemoiperis00@gmail.com','$2y$10$HIHHELJ.MjdEafZInln6DOeZOMOOuiCnvRsGkTPdV0P6nKjVtbJIq','2024-05-15 09:26:41');
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_changed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','kolawole365@gmail.com',NULL,'$2y$10$v3FaZnOFieePWX/GshU.1Otn8PirtMSBCwJWF6dvQrlH/hthDIQLG','cDNYwfH7xChwMn4STxEDbowT43tNeq77056Fj9WViXpmLjGD5eIHMAc5mExx',NULL,0,'2024-04-29 11:59:35','2024-05-27 20:04:42'),(3,'peris chepkemoi','chepkemoiperis00@gmail.com',NULL,'$2y$10$0.KZ1dUpIgx8Ir7HGLBPdOZcfxll/9LVuK8nbzi94lfSbjva4YWjS','bVNaTbxFgjIqdTyNQYO1ayPH43u1IUneCD8bwJbZkioaDkPQ1MHmsQQb9oLh','workspace',0,'2024-05-10 11:46:43','2024-05-10 11:46:43'),(5,'peris test','pmemoi2015@gmail.com',NULL,'$2y$10$JYfwTGfG95/ljR8.G2mM8uaN5dsjVjYvVHq4I18IbZ0DMo99GD8KS','SLB6CIpIQxl4FKGaoUkwm7JjqYEVgg7vUTVUKUq1w8tHnFJ6z0X8fET83mLN','workspace',0,'2024-05-10 14:33:56','2024-05-10 14:33:56'),(10,'Andrea Padilla','andrea.padilla@squarerootmarketing.com',NULL,'$2y$10$VWOfPB7L9rlJfwCc2E5E3uVfAQ.W/ocIScsPylLXOrwsa0gg4XxCS','C5QqjTCKJzlNyv9xnMFjSABz9iNu4VS31bkbCbhMWzy54aOSjigZyfI44Ocg','workspace',0,'2024-05-15 10:45:45','2024-05-15 10:45:45'),(11,'Erika Cruz','erika.cruz@squarerootmarketing.com',NULL,'$2y$10$Y6olInGRNuzRMW.DDnXmF.QXmtJ7FicLor9NLu2/dNRE4SJ7uJoXi','ex62vdPTq9APajLgK8gmL9vyCtbePOpabapV7zHYU1FcG3M1D5L5F0MgstEC','workspace',0,'2024-05-15 10:46:12','2024-05-15 10:46:12'),(12,'Olu','oluwaseun.kolawole@outlook.com',NULL,'$2y$10$jDMCfwpXIGZfw6G3qZ6JI.d3AZqjGK8jWc05UegyfyhrZdbVAJBxu',NULL,'workspace',0,'2024-05-20 12:16:30','2024-05-20 12:16:30'),(14,'Elena Amigorena','elena.amigorena@squarerootmarketing.com',NULL,'$2y$10$NNWcJvFyPhYowczCNswTqeey1vyHQ1.rTD56NoDqAHpXkpnppDQAK',NULL,NULL,0,'2024-05-28 14:33:24','2024-05-28 14:33:24'),(15,'Alejandro Marval','alejandro.marval@squarerootmarketing.com',NULL,'$2y$10$IDD9yGF2noP8zjPyo1HG/upjleB6WvQQq.KIuto90TVADMbkh9xQG','i5ebo5dJxAhQslgE8Uiwy9dbVLNq6UHYxce4edVwg7Es6wg0hg4w1s6WeNUX',NULL,0,'2024-05-28 14:34:32','2024-05-28 14:34:32');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-29 19:04:48
