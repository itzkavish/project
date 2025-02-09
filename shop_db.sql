-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2022 at 06:57 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(129, 14, 16, 'lavendor rose', 13, 1, 'lavendor rose.jpg'),
(130, 14, 18, 'red tulipa', 11, 1, 'red tulipa.jpg'),
(131, 14, 15, 'cottage rose', 15, 1, 'cottage rose.jpg'),
(132, 15, 13, 'pink rose', 10, 1, 'pink roses.jpg'),
(133, 15, 15, 'cottage rose', 15, 1, 'cottage rose.jpg'),
(134, 15, 16, 'lavendor rose', 13, 3, 'lavendor rose.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(13, 14, 'kavish', 'kavish@gmail.com', '0987654321', 'hi, how are you?');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(17, 14, 'kavish', '0987654321', 'kavish@gmail.com', 'credit card', 'flat no. 321, jogeshwari, mumbai, india - 654321', ', cottage rose (3) , pink bouquet (1) , yellow queen rose (1) ', 80, '11-Mar-2022', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`) VALUES
(13, 'pink rose', 'These beautiful and freshly plucked pretty pink roses are a perfect gift for that beautiful someone special in your life. ', 299, 'pink roses.jpg'),
(15, 'cottage rose', 'Flowers warm pink. Moderate fragrance. 70 to 95 petals. Average diameter 2.5". Medium, very full (41+ petals), in small clusters, cupped, old-fashioned bloom', 499, 'cottage rose.jpg'),
(16, 'lavendor rose', 'Lavender roses represent enchantment, splendor, wonder, and mystery, making this rose color meaning especially inspiring. The whimsical lavender hue is also associated with love or enchantment at first sight!', 299, 'lavendor rose.jpg'),
(17, 'yellow tulipa', 'Yellow tulips now represent happiness, cheerfulness, and hope. Victorians even believed yellow tulips literally meant “Theres sunshine in your smile. Its for this reason that yellow tulips have become popular “just because” gifts, as they are sure to bring a smile to anyones face.', 299, 'yellow tulipa.jpg'),
(18, 'red tulipa', 'Their deep red hues evoke feelings of passion, love, and lust — making them an especially popular choice for new, younger couples. They can also mean “believe me” or “my feelings are true.” So, the next time youre trying to woo the person you admire, send them an alluring bouquet of red tulips.', 399, 'red tulipa.jpg'),
(19, 'pink bouquet', 'Handpicked baby pink carnations to let the special someone know how much you miss them. Show your emotions with carnations, beautifully arranged in bouquet style and sprinkled with White Gypsophila Fillers. These beautiful flowers will make the receiver feel happy and special.', 399, 'pink bouquet.jpg'),
(20, 'Vibrant Moments', 'Arrangement of Orange, White and Yellow Asiatic Lilies in a glass vase, to celebrate those vibrant moments in life.', 699, 'VibrantMoments.jpg'),
(21, 'Magnificent Yellow', 'Send this basket arrangement of Yellow Lilies and Yellow Roses, decorated with green fillers and a pretty yellow ribbon, to spread some warmth, joy, and cheer in your loved ones lives.', 899, 'MagnificentYellow.jpg'),
(22, 'Purple Smile', 'This is a very special gift, for a very special person. The beauty and passion of these breathtaking purple orchids, arranged beautifully in a very stylish glass vase is unmatched and will surely make your valentine feel on top of the world.', 699, 'PurpleSmile.jpg'),
(23, 'Fly High', 'Anthuriums symbolize hospitality and abundance and are long-lasting and very beautiful. This bouquet of ravishing bright Red Anthuriums and Birds of Paradise is a perfect gift for any elegant occasion', 899, 'Fly High.jpg'),
(24, '50 Pink Roses', 'Like the multi-layered fountain of love, this bouquet is gushing with love. This romantic, full-of-passion, multi-layered arrangement of the most gorgeous and beautiful Dutch pink roses, elegantly hand-tied and decorated with areca palm leaves and green fillers in a pretty cane basket is the perfect love-you gesture.', 1299, '50 Pink Roses.jpg'),
(25, 'Exotic Mix', 'Unique and special, this stunning bunch of Anthuriums, Birds of Paradise flowers, and Yellow Asiatic Lilies, arranged elegantly in a glass vase is a perfect gift for special occasions, for anyone, friends or family', 999, 'Exotic Mix.jpg'),
(26, '50 Multicolor Roses Bunch', 'You just cannot contain your love, or happiness? Say it with this abundant, gorgeous bunch of multi-colored roses hand-tied with a lovely string. The love, joy, and cheer spilling out of this huge bunch of roses will spread happiness wherever it goes. Send this bouquet to your loved ones to make them feel extra special and loved.', 1299, '50 Multicolor Roses Bunch.jpg'),
(27, 'Yellow and Orange Asiatic Lillies Bunch', 'Heres a charming something for the charming someone in your life. This exuberant bunch of Yellow and Orange Asiatic Lilies, decorated with lots of little gypsy flowers and wrapped with a stylish 2-layere paper and tied with lovely matching strings to charm your beloved. This is a suitable bouquet for any you wish to send love and happiness to', 1399, 'Yellow and Orange Asiatic Lillies Bunch.jpg'),
(28, 'Lovely Orchids', 'Purple orchids are one of the most highly desired ornamental flowers, known for their beauty and symbolizing love and abundance. This elegant bunch of beautiful Purple orchids wrapped in an exquisite pink paper and tied with a pretty pink ribbon is a perfect gift for all occasions.', 399, 'LovelyOrchids.jpg'),
(29, 'Heart Shaped 60 Red Roses', 'Nothing says love, more than the deep, velvet red of a beautiful red rose. This beautiful arrangement of most gorgeous 100 Red Roses, specially picked for their bloom does just that. It conveys your love to that special someone in a very special way.', 1399, 'Heart Shaped 60 Red Roses.jpg'),
(30, '25 Red Roses Bunch', 'This Dazzling Red bouquet will work magic on that special someone. We will pick the best and freshest roses and arrange them in this perfect bouquet with matching paper and ribbon for your loved one to show them just how you feel. This is a perfect gift for those you love.', 1599, '25 Red Roses Bunch.jpg'),
(31, '20 Multi Color Gerberas', 'Nothing says cheerful more than these colorful and vibrant Gerbera flowers. A perfect and charming gift for anyone for any occasion. This lively bouquet of multicolor Gerberas wrapped in white paper is a perfect gift for your loved ones to make just any day special.', 1499, '20 Multi Color Gerberas.jpg'),
(32, '6 Pink Oriental Lilies', 'Send something special to your loved ones. This regal looking bunch of lovely pink oriental lilies arranged in a glass vase are just what they need on their special day. Send them this gift and see them swell with pride and love for you.', 2199, '6 Pink Oriental Lilies in a Glass Vase.jpg'),
(33, '25 Pink Roses 12 Red Carnations', 'This Dazzling Red bouquet will work magic on that special someone. We will pick the best and freshest roses', 2199, '25 Pink Roses 12 Red Carnations.jpg'),
(34, '20 Pink Roses Bunch', 'This refreshingly beautiful bouquet looks like its dropped right out of a beautiful painting. the loveliest pink roses, wrapped beautifully in a lavender sheet and tied with a pretty pink ribbon will take your loved ones breath away and will show them exactly what they mean to you.', 1599, '20 Pink Roses Bunch.jpg'),
(35, 'Serene Beauty', 'These angelic and divine white roses are a perfect gesture of love and support for your loved ones; friends or family. ', 1499, 'Serene Beauty.jpg'),
(36, '10 Yellow Roses12 Red Roses', 'Elegant and beautiful, this basket bouquet is suitable for any occasion. Convey the message of congratulations, thank you, or wish happiness on the occasion of a birthday, anniversary, an achievement, or even a festival. ', 1299, '10 Yellow Roses12 Red Roses.jpg'),
(37, 'pink queen rose', 'Pink roses symbolize love, appreciation, joy, and admiration. They can be used to express a variety of feelings, including gratitude, respect, and affection. ', 499, 'pink queen rose.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(10, 'admin A', 'admin01@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(60, 14, 19, 'pink bouquet', 15, 'pink bouquet.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
