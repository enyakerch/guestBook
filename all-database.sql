-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: book
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about`
--

LOCK TABLES `about` WRITE;
/*!40000 ALTER TABLE `about` DISABLE KEYS */;
INSERT INTO `about` VALUES (4,'Ukraine','Yalta','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(5,'Ukraine','Yalta','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(6,'Ukraine','Yalta','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(7,'Ukraine','Yalta','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(8,'Ukraine','Yalta','127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(9,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(10,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(11,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(12,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(13,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(14,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(15,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(16,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(17,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(18,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(19,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(20,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(21,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(22,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(23,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(24,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(25,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(26,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(27,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(28,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(29,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(30,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(31,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(32,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(33,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),(34,NULL,NULL,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0');
/*!40000 ALTER TABLE `about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8D93D649D087DB59` (`about_id`),
  CONSTRAINT `FK_8D93D649D087DB59` FOREIGN KEY (`about_id`) REFERENCES `about` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (4,4,'tolya','tolya@u.ua','Признаков концентраций к оставалось предположение, что они расположены. Концентрацию к галактическому экватору пылевой материи после вспышек новых. Источнику радиоизлучения являются объектами, входящими в радиоизлучений небу более многочисленная состоит.','2016-07-07 20:09:53'),(5,5,'foot','foot@loo.co','Труппы, как правило, наблюдались интенсивный источники радиоизлучения первой. Источника радиоизлучения не проявляли себя в. Об­наруживают галактической концентрации этих галактик с другой стороны, оптически наблюдать объекты.','2016-07-07 20:14:38'),(6,6,'shlyapa','big@hh.uk','Сила радиотелескопов неве­лика, все действующие точечные радиоисточники слились бы при сопоставлении галактик. Отдано много усилий себя в этом случае поглощение света очень.','2016-07-07 20:17:24'),(7,7,'bot1','bot1@cd.ua','Странное положение источника радиоизлучения состоит. Правило, в целой площадке, содержащей десятки квадратных минут объекты например. Галактик очень близкие звезды, расстояния которых намного меньше.','2016-07-07 20:19:07'),(8,8,'oqwe','oqwe20@ya.ru','Чаще помнят плохое, и довольны положением. Друг мадиба провёл двадцать семь лет в бедности, часто становятся неотъемлемой частью. Правилам я встречал многих талантливых.','2016-07-07 20:20:11'),(9,9,'koldun','klodya@ya.ru','Актёры, умершие в первую очередь, вы должны наладить связи. Ошибки и довольны положением дел отношению к конкурентам, но если. Руководствуйтесь благородными побуждениями них подходящее место перед.','2016-07-07 20:21:35'),(10,10,'nord','nord@sk.ru','Чемоданах с высоким жабо. Плотность населения австралии составляет квадратных. Время вспоминал мать сам. Сенатскую площадь я бросился спать и нижегородские.','2016-07-07 20:23:10'),(11,11,'toster','tost@gogo.ru','Нас в лодке быстро греб коромыслами народ не слышала от других. Огрел кукушонка хвостик, по поводу чего все вымерли. Шелковистые, белокурые локоны выбивались из сочинения: живописца поразила.','2016-07-07 20:24:16'),(12,12,'enotik','enot@home.co','Lorem ipsum dolor sit amet. Reprehenderit, qui in culpa, qui blanditiis praesentium. Quibusdam et quasi architecto beatae. Nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut enim. In ea voluptate velit esse, quam nihil impedit, quo voluptas sit amet.','2016-07-07 20:25:23'),(13,13,'lord','lord@as.com','Lorem ipsum dolor sit amet. Suscipit laboriosam, nisi ut aliquid ex ea voluptate velit. Possimus, omnis iste natus error. Exercitationem ullam corporis suscipit laboriosam. Ex ea voluptate velit esse, quam nihil molestiae. Doloremque laudantium, totam rem aperiam eaque ipsa.','2016-07-07 20:26:53'),(14,14,'king','yaga@drink.uk','Lorem ipsum dolor sit amet. Nisi ut perspiciatis, unde omnis dolor repellendus assumenda est. Provident, similique sunt in culpa, qui ratione. Accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae. Dolorum fuga culpa, qui blanditiis praesentium voluptatum deleniti.','2016-07-07 20:28:21'),(15,15,'queen','pain@foo.com','Lorem ipsum dolor sit amet. Inventore veritatis et molestiae non provident. Cupiditate non numquam eius modi tempora incidunt, ut et iusto odio. Commodi autem quibusdam et quasi architecto beatae vitae dicta sunt. Perferendis doloribus asperiores repellat. sint, obcaecati cupiditate.','2016-07-07 20:29:47'),(16,16,'rack','roll@ho.co','Lorem ipsum dolor sit amet. Id est et dolore magnam aliquam quaerat voluptatem. Doloribus asperiores repellat. et voluptates repudiandae. Ipsa, quae ab illo inventore veritatis et iusto odio dignissimos ducimus. Placeat, facere possimus, omnis voluptas nulla.','2016-07-07 20:30:40'),(17,17,'fast','fast@mail.ru','Lorem ipsum dolor sit amet. Blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et voluptates. Facere possimus, omnis voluptas sit, amet, consectetur adipisci. Praesentium voluptatum deleniti atque corrupti. Velit, sed ut labore et voluptates repudiandae sint et accusamus.','2016-07-07 20:31:49'),(18,18,'happy','happy@mail.com','Lorem ipsum dolor sit amet. Ipsa, quae ab illo inventore veritatis. Inventore veritatis et harum quidem rerum hic tenetur. Eos, qui delectus, ut perspiciatis, unde omnis iste natus error. Voluptatem accusantium doloremque laudantium, totam rem aperiam.','2016-07-07 20:32:37'),(19,19,'Olya','olya@ke.com','Алфавит, могут возникнуть небольшие проблемы: в качестве рыбы текст. Внешнего вида контента, просмотра шрифтов, абзацев, отступов и. Есть специальные генераторы, создающие собственные варианты текста на основе оригинального трактата благодаря. ','2016-07-08 12:33:52'),(20,20,'jhon','dsds@sdsd.om','Исключительно демонстрационная, то и по сей день на том языке который. Связанные с языками, использующими латинский алфавит, могут возникнуть небольшие проблемы: в различных. ','2016-07-08 12:38:19'),(21,21,'cry','dsds@sdsd.om','Неповторяющийся набор слов. языках. Латыни и по сей день используемый. Вида контента, просмотра шрифтов абзацев. Лучше использовать в xvi веке впервые. ','2016-07-08 13:09:00'),(22,22,'doom','dsds@sdsd.om','Конечно, возникают некоторые вопросы, связанные с языками, использующими латинский алфавит могут. Планируется использовать в различных языках. Он веб-дизайнерами для вставки на интернет-страницы. ','2016-07-08 13:09:17'),(23,23,'wicked','sdsd@ds.com','Проектах, ориентированных на основе оригинального трактата, благодаря чему появляется возможность. Абзацев, отступов и т.д лучше использовать в xvi веке основе оригинального трактата. ','2016-07-08 13:12:01'),(24,24,'petya','sdsd@ds.com','Текст-рыбу, широко используемый и демонстрации внешнего вида контента, просмотра шрифтов абзацев. В книгопечатании еще в xvi веке. Текст на интернет-страницы и зла средневековый книгопечатник вырвал. ','2016-07-08 14:00:57'),(25,25,'vasya','vasya@test.com','Демонстрационная, то и демонстрации внешнего. Оригинального трактата, благодаря чему появляется возможность получить более того, есть специальные. Вывод, что такое текст-рыба трактата о пределах добра и демонстрации. ','2016-07-08 14:05:35'),(26,26,'vasya','vasy12a@test.com','Слова, получив текст-рыбу, широко используемый и. Же лучше использовать в. Философу цицерону, ведь именно из его применили в различных. ','2016-07-08 14:06:08'),(27,27,'vasya','vasya121@test.com','Проблемы: в длине наиболее распространенных слов впервые его трактата. Интернет-страницы и на основе оригинального. О пределах добра и демонстрации внешнего вида контента, просмотра шрифтов абзацев. ','2016-07-08 14:08:41'),(28,28,'lenchik','dsds@sdsd.om','Нагрузку ему нести совсем необязательно том языке, который планируется использовать. Ipsum обязан древнеримскому философу цицерону, ведь именно. Вариантов lorem языке, который планируется использовать при оценке качества восприятия макета отсюда. ','2016-07-08 15:11:11'),(29,29,'trololo','sdsd@ds.com','Набор слов. кроме того нечитабельность. Набор слов. алфавит, могут возникнуть небольшие проблемы. Напрашивается вывод, что впервые его трактата о пределах добра и т.д. ','2016-07-08 15:30:51'),(30,30,'domoboom','sdsd@ds.com','Оригинального трактата, благодаря чему появляется возможность. Частотой, имеется разница в книгопечатании еще в длине наиболее распространенных. Древнеримскому философу цицерону, ведь именно. ','2016-07-08 15:41:33'),(31,31,'ghost','dsds@sdsd.om','Благодаря чему появляется возможность получить более длинный неповторяющийся набор. Наиболее распространенных слов возможность получить более длинный неповторяющийся набор. Демонстрации внешнего вида контента, просмотра шрифтов, абзацев отступов. ','2016-07-08 15:48:58'),(32,32,'golum','sdsd@ds.com','Текст на основе оригинального трактата, благодаря чему появляется возможность получить более. Проблемы: в различных языках те или иные буквы встречаются. ','2016-07-08 15:53:06'),(33,33,'enchik','sdsd@ds.com','Значительно различается добра и зла средневековый книгопечатник. Применили в различных языках те или иные. Фразы и т.д обязан древнеримскому. О пределах добра и. ','2016-07-08 15:53:39'),(34,34,'Enya','enya@ya.ru','Проблемы: в длине наиболее распространенных слов несмотря на кириллический контент. В качестве рыбы текст на руку при оценке качества восприятия макета. ','2016-07-08 16:56:04');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-10 23:05:32
