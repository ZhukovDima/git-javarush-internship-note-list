USE test;

DROP TABLE IF EXISTS note;

CREATE TABLE IF NOT EXISTS note (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	text MEDIUMTEXT NOT NULL,
	executed TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
	date_entered TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (id)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

INSERT INTO note (text, executed, date_entered) VALUES ("Изучить устройство объекта Object: equals, hashCode, clone, wait, notify, toString()", 1, "2017-10-14 09:03:18");
INSERT INTO note (text, executed, date_entered) VALUES ("Рассмотреть внутренние классы, примеры: Map.Entry", 1, "2017-10-12 10:03:18");
INSERT INTO note (text, executed, date_entered) VALUES ("Изучить внутренние классы, примеры: Map.Entry", 1, "2017-10-12 10:03:18");
INSERT INTO note (text, executed, date_entered) VALUES ("Изучить внутренние классы, особенности реализации", 1, "2017-10-12 11:04:18");
INSERT INTO note (text, executed, date_entered) VALUES ("Создание и остановка нитей: start, interrupt, sleep, yield.", 1, "2017-10-12 12:05:19");
INSERT INTO note (text, executed, date_entered) VALUES ("Изучить URI, URL. REST сервисы. Создаем свое клиент-серверное приложение.", 0, "2017-10-13 07:35:48");
INSERT INTO note (text, executed, date_entered) VALUES ("Создать первое веб приложение. Работа с Tomcat и Idea", 1, "2017-10-13 13:31:12");
INSERT INTO note (text, executed, date_entered) VALUES ("Изучить методологии разработки. Аннотации в Java. Иерархия исключений", 0, "2017-10-13 21:38:17");
INSERT INTO note (text, executed, date_entered) VALUES ("Изучить паттерны проектирования. Утилитные классы Arrays. Collections", 1, "2017-10-13 23:55:10");
INSERT INTO note (text, executed, date_entered) VALUES ("Изучить основные паттерны для создания веб приложений. Углубленное изучение коллекций", 0, "2017-10-14 08:31:10");
INSERT INTO note (text, executed, date_entered) VALUES ("Рассмотреть системы контроля версий: Git и SVN. Generics", 1, "2017-10-14 11:11:10");
INSERT INTO note (text, executed, date_entered) VALUES ("Рекурсия. Сборка мусора и типы ссылок в Java. Логгирование", 1, "2017-10-14 12:45:51");
INSERT INTO note (text, executed, date_entered) VALUES ("Рассмотреть RMI и динамический прокси. Опыт работы с Swing", 0, "2017-10-14 17:01:04");
INSERT INTO note (text, executed, date_entered) VALUES ("Изучить работу с файлами и архивами", 1, "2017-09-15 06:19:47");
INSERT INTO note (text, executed, date_entered) VALUES ("Изучить Операторы: числовые, логические и бинарные. Опыт работы с Swing", 1, "2017-09-15 09:48:02");
INSERT INTO note (text, executed, date_entered) VALUES ("Рассмотреть Autoboxing, особенности реализации", 0, "2017-09-15 14:49:28");
INSERT INTO note (text, executed, date_entered) VALUES ("Написать программу используя ThreadGroup, ThreadLocal, Executor, ExecutorService, Callable. Получить опыт работы с Jsoup", 0, "2017-09-15 18:11:39");
INSERT INTO note (text, executed, date_entered) VALUES ("Написать программу и создать в ней DeadLock. Wait, notify, notifyAll", 1, "2017-09-15 19:41:56");
INSERT INTO note (text, executed, date_entered) VALUES ("Написать программу и создать в ней DeadLock. Wait, notify, notifyAll", 1, "2017-09-15 19:41:56");
INSERT INTO note (text, executed, date_entered) VALUES ("Знакомство с потоками: InputStream/OutputStream, FileInputStream, FileOutputStream", 1, "2017-09-15 21:07:12");
INSERT INTO note (text, executed, date_entered) VALUES ("Знакомство с нитями: Thread, Runnable, start, join, interrupt, sleep", 1, "2017-09-15 21:37:51");
INSERT INTO note (text, executed, date_entered) VALUES ("Вспомнить коллекции: LinkedList, HashSet, HashMap. Date - дата.", 1, "2017-09-15 21:37:51");
INSERT INTO note (text, executed, date_entered) VALUES ("Почитать о некоторых из важных особенностей и преимуществ Spring Framework", 0, "2017-10-15 07:12:32");
INSERT INTO note (text, executed, date_entered) VALUES ("Почитать о разнице между аннотациями @Component, @Repository и @Service в Spring?", 0, "2017-10-15 07:31:51");
INSERT INTO note (text, executed, date_entered) VALUES ("Что такое 'аспектно-ориентированное программирование' (Aspect Oriented Programming — AOP)?", 0, "2017-10-15 08:01:11");
INSERT INTO note (text, executed, date_entered) VALUES ("Ещё раз, а какие важные преимущества дает использование Spring + Hibernate Framework, по сравнению с реализацией JSP-Servlet + API JDBC???", 0, "2017-10-15 08:01:11");
INSERT INTO note (text, executed, date_entered) VALUES ("Посмотреть какой нибудь видео урок по Spring Framework", 0, "2017-10-15 08:49:13");
INSERT INTO note (text, executed, date_entered) VALUES ("Посмотреть какой нибудь видео урок по Hibernate Framework", 0, "2017-10-15 09:12:17");
