-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 10, 2019 at 09:49 AM
-- Server version: 5.6.41
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wd05-filmoteka-kaseeva`
--

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `genre` text NOT NULL,
  `year` int(11) NOT NULL,
  `description` text NOT NULL,
  `photo` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`id`, `title`, `genre`, `year`, `description`, `photo`) VALUES
(4, 'Большая игра', 'драма', 2017, 'Молли Блум называли Принцессой покера. Она построила самое дорогое подпольное казино в Голливуде. Каждую минуту здесь шли ва-банк кинозвезды, шейхи, миллиардеры. Большие деньги пахнут кровью. Как выжить, когда за тобой охотится мафия и ФБР?', '74750671.jpg'),
(5, 'Ты водишь', ' комедия', 2018, 'Каждый год в течение месяца пятеро друзей участвуют в беспощадно навороченной версии игры в кошки-мышки. Они играют в нее с первого класса, чтобы, рискуя собственной шеей, работой и отношениями, одолеть противника с победоносным криком: «Ты водишь!» \r\n\r\nВ этом году кошки-мышки приходятся на свадьбу единственного непобежденного игрока, что должно сделать из него легкую мишень. Но он знает, что они придут… и он готов.', '15921630.jpg'),
(6, 'Красный воробей', 'триллер', 2018, 'После вынужденного окончания карьеры из-за профессиональной травмы Доминика Егорова и ее мать сталкиваются с мрачным и неопределенным будущим. Героиня соглашается стать рекрутом в Школе Воробьев, секретной службе, которая обучает уникальных молодых людей использовать свое тело и ум в качестве опаснейшего оружия. После долгого садистского обучения девушка превращается в самого опасного Воробья за всю историю секретной службы. Теперь бывшая балерина должна примирить в себе человека, которым она была, и силу, которой она овладела, со своей собственной жизнью и жизнью всех, кто ей дорог. В том числе, американского агента ЦРУ, пытающегося убедить ее, что он единственный человек, которому она может доверять.', '24408569.jpg'),
(7, 'Опасный бизнес', 'комедия', 2018, '\r\nГлавный герой — менеджер небольшой фармацевтической компании Гарольд Сойинка. Президентом компании является его старый друг Ричард, который вместе со своим партнёром планирует продать компанию и оставить всех сотрудников без работы. Перед этим они вместе с Гарольдом летят в Мексику, чтобы уладить дела на своей фабрике. Там Гарольд узнаёт о планах своих боссов и решает инсценировать свое собственное похищение, чтобы компания заплатила его липовым похитителям пять миллионов долларов. Однако герой и представить себе не мог, насколько Ричард не ценит их дружбу.', '64753112.jpg'),
(8, 'Опасная игра Слоун', 'драма', 2016, 'Элизабет Слоун — самый востребованный и рисковый лоббист и самая сексуальная акула политического бизнеса США. Ловко ведя психологические игры и используя искусство манипуляции, она сражает оппонентов своей непредсказуемостью и никогда не проигрывает. Но когда она берется за самое сложное в своей карьере дело, она понимает, что цена победы может быть слишком высокой.', '42489318.jpg'),
(9, 'Короче', 'фантастика', 2017, '\r\nФантастическая история о неожиданном решении проблемы перенаселения планеты: норвежские ученые придумывают технологию по уменьшению людей, благодаря которой через 200 лет весь мир можно сделать миниатюрным. К тому же мини-жизнь предлагает массу финансовых выгод, так что простой парень Пол и его жена Одри, недолго думая, решают оставить свое унылое существование в Омахе и пройти процедуру уменьшения. Это их решение повлечет за собой самые удивительные последствия…', '91661376.jpg'),
(10, 'Дэдпул 2', 'фантастика', 2018, 'Единственный и неповторимый болтливый наемник — вернулся! Ещё более масштабный, ещё более разрушительный и даже ещё более голозадый, чем прежде! Когда в его жизнь врывается суперсолдат с убийственной миссией, Дэдпул вынужден задуматься о дружбе, семье и о том, что на самом деле значит быть героем, попутно надирая 50 оттенков задниц. Потому что иногда чтобы делать хорошие вещи, нужно использовать грязные приёмчики.', '29371643.jpg'),
(11, 'Афера доктора Нока', 'трагикомедия', 2017, '\r\n1950-е. Карманник и авантюрист Нок, скрываясь от «коллег» в небольшом французском городке Сен-Морис, притворяется лицензированным врачом. Он придумал хитрый, но простой план, как не остаться без средств к существованию: лечить здоровых людей от несуществующих у них болезней. Нок — мастер в искусстве манипуляции и соблазнения — почти достиг желанной цели, если бы не два небольших затруднения: он влюбился, а на пороге неожиданно появился друг из прошлого, который намерен рассказать всю правду о докторе.', '17583312.jpg'),
(12, 'Черная пантера', 'фантастика', 2018, 'С первого взгляда можно решить, что Ваканда — обычная территория дикой Африки, но это не так. Здесь, в недрах пустынных земель, скрываются залежи уникального металла, способного поглощать вибрацию. Многие пытались добраться до него, разоряя всё на своём пути и принося смерть аборигенам, но каждый раз таинственный дух саванны — Чёрная Пантера — вставал на защиту угнетённых.\r\n\r\nСпустя много лет беда снова приходит в Ваканду, и в этот раз враг заручился поддержкой современных технологий. Когда шансов почти не остаётся, Т`Чалла, молодой принц Ваканды, узнаёт, что именно ему предстоит возродить легенду и продолжить вечную борьбу, надев маску Чёрной Пантеры.', '54662170.jpg'),
(13, 'Рок-н-рольщик', 'боевик', 2009, '\r\nФильм окунет вас в опасный мир коррупции и жизни криминальных отбросов современного Лондона, где недвижимость потеснила такого внушительного лидера торгового рынка, как наркотики, а самыми активными предпринимателями стали преступные группировки. Но каждому, кто захочет проворачивать там свои дела, будь то мелкая сошка Раз-два или русский теневой миллиардер Юрий Омович, придется сначала договориться с одним и тем же человеком — Ленни Коулом.', '78384399.jpg'),
(14, 'Три билборда на границе Эббинга, Миссури', 'драма', 2017, '\r\nСпустя несколько месяцев после убийства дочери Милдред Хейс преступники так и не найдены. Отчаявшаяся женщина решается на смелый шаг, арендуя на въезде в город три билборда с посланием к авторитетному главе полиции Уильяму Уиллоуби. Когда в ситуацию оказывается втянут ещё и заместитель шерифа, инфантильный маменькин сынок со склонностью к насилию, офицер Диксон, борьба между Милдред и властями города только усугубляется.', '56387023.jpg'),
(35, 'Интерстеллар', 'фантастика', 2014, 'Когда засуха приводит человечество к продовольственному кризису, коллектив исследователей и учёных отправляется сквозь червоточину (которая предположительно соединяет области пространства-времени через большое расстояние) в путешествие, чтобы превзойти прежние ограничения для космических путешествий человека и переселить человечество на другую планету.', '56301879.jpg'),
(39, 'Аватар', 'фантастика', 2009, 'Джейк Салли — бывший морской пехотинец, прикованный к инвалидному креслу. Несмотря на немощное тело, Джейк в душе по-прежнему остается воином. Он получает задание совершить путешествие в несколько световых лет к базе землян на планете Пандора, где корпорации добывают редкий минерал, имеющий огромное значение для выхода Земли из энергетического кризиса.', '80301513.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `login` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`login`, `password`) VALUES
('admin', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
