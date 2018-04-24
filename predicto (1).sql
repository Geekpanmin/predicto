-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2017 at 05:04 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `predicto`
--

-- --------------------------------------------------------

--
-- Table structure for table `daily_exercise`
--

CREATE TABLE `daily_exercise` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `run` varchar(255) NOT NULL,
  `walk` varchar(255) NOT NULL,
  `cycle` varchar(255) NOT NULL,
  `working` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_exercise`
--

INSERT INTO `daily_exercise` (`id`, `user_id`, `run`, `walk`, `cycle`, `working`, `date`) VALUES
(1, 3, '22', '35.40548', '5.664877', '', '2017-03-07 19:05:56'),
(2, 3, '1', '1', '1', '1', '2017-03-07 19:14:26'),
(3, 3, '1', '1.60934', '2.574944', '10', '2017-03-07 19:15:14');

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exercise_lookup`
--

CREATE TABLE `exercise_lookup` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `time_or_distance` float NOT NULL,
  `calories_burnt` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exercise_lookup`
--

INSERT INTO `exercise_lookup` (`id`, `name`, `time_or_distance`, `calories_burnt`) VALUES
(1, 'cycling', 7.775, 552),
(2, 'running', 10.0584, 906),
(3, 'walking', 6.43738, 452),
(4, 'workout', 30, 550);

-- --------------------------------------------------------

--
-- Table structure for table `food_category`
--

CREATE TABLE `food_category` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_category`
--

INSERT INTO `food_category` (`id`, `name`) VALUES
(1, 'Beverages'),
(2, 'Snacks'),
(3, 'Dairy Products'),
(4, 'Cereals'),
(5, 'Pulses'),
(6, 'Vegetables');

-- --------------------------------------------------------

--
-- Table structure for table `food_chart`
--

CREATE TABLE `food_chart` (
  `id` int(11) DEFAULT NULL,
  `category` varchar(19) CHARACTER SET utf8 DEFAULT NULL,
  `item` varchar(39) CHARACTER SET utf8 DEFAULT NULL,
  `quantity` decimal(4,1) DEFAULT NULL,
  `unit` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `calories` int(11) DEFAULT NULL,
  `carbs` decimal(3,1) DEFAULT NULL,
  `protiens` decimal(3,1) DEFAULT NULL,
  `fats` decimal(3,1) DEFAULT NULL,
  `fiber` decimal(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_chart`
--

INSERT INTO `food_chart` (`id`, `category`, `item`, `quantity`, `unit`, `calories`, `carbs`, `protiens`, `fats`, `fiber`) VALUES
(1, 'Juice', 'Apple juice', '1.0', 'cup', 120, '29.0', '0.0', '0.0', NULL),
(2, 'Juice', 'Orange juice', '1.0', 'cup', 120, NULL, NULL, NULL, NULL),
(3, 'Juice', 'Nescafe coffee without sugar', '1.0', 'Teaspoon', 5, NULL, NULL, NULL, NULL),
(4, 'Juice', 'Tea without sugar', '1.0', 'cup', 5, NULL, NULL, NULL, NULL),
(5, 'Juice', 'Pepsi-Cola', '240.0', 'ml', 100, NULL, NULL, NULL, NULL),
(6, 'Juice', 'Sprite', '240.0', 'ml', 96, NULL, NULL, NULL, NULL),
(7, 'Juice', 'Beer regular', '12.0', 'fl oz', 150, NULL, NULL, NULL, NULL),
(8, 'Juice', 'Beer light', '12.0', 'fl oz', 95, NULL, NULL, NULL, NULL),
(9, 'fruits', 'Apple', '140.0', 'g', 81, NULL, NULL, NULL, NULL),
(10, 'fruits', 'Apricot', '30.0', 'g', 17, NULL, NULL, NULL, NULL),
(11, 'fruits', 'Banana', '100.0', 'g', 105, NULL, NULL, NULL, NULL),
(12, 'fruits', 'Fig', '40.0', 'g', 37, NULL, NULL, NULL, NULL),
(13, 'fruits', 'Guava', '85.0', 'g', 45, NULL, NULL, NULL, NULL),
(14, 'fruits', 'Kiwi', '76.0', 'g', 46, NULL, NULL, NULL, NULL),
(15, 'fruits', 'Orange', '110.0', 'g', 62, NULL, NULL, NULL, NULL),
(16, 'fruits', 'Peach', '85.0', 'g', 37, NULL, NULL, NULL, NULL),
(17, 'fruits', 'Pear', '170.0', 'g', 98, NULL, NULL, NULL, NULL),
(18, 'fruits', 'Pineapple', '82.0', 'g', 42, NULL, NULL, NULL, NULL),
(19, 'fruits', 'Plum', '60.0', 'g', 36, NULL, NULL, NULL, NULL),
(20, 'fruits', 'Nectarine', '142.0', 'g', 67, NULL, NULL, NULL, NULL),
(21, 'fruits', 'Watermelon', '100.0', 'g', 26, NULL, NULL, NULL, NULL),
(22, 'fruits', 'Tangerine', '85.0', 'g', 37, NULL, NULL, NULL, NULL),
(23, 'fruits', 'Canned apricots', '1.0', 'cup', 222, NULL, NULL, NULL, NULL),
(24, 'fruits', 'Canned cherry', '1.0', 'cup', 214, NULL, NULL, NULL, NULL),
(25, 'fruits', 'Canned peaches ', '1.0', 'cup', 190, NULL, NULL, NULL, NULL),
(26, 'fruits', 'Canned pear', '1.0', 'cup', 188, NULL, NULL, NULL, NULL),
(27, 'fruits', 'Canned pineapple ', '1.0', 'cup', 200, NULL, NULL, NULL, NULL),
(28, 'fruits', 'Dried figs', '100.0', 'g', 288, NULL, NULL, NULL, NULL),
(29, 'fruits', 'Raisins', '1.0', 'cup', 218, NULL, NULL, NULL, NULL),
(30, 'fruits', 'Dried plum', '1.0', 'cup', 226, NULL, NULL, NULL, NULL),
(31, 'fruits', 'Dried Apricots', '1.0', 'cup', 338, NULL, NULL, NULL, NULL),
(32, 'eggs', 'Egg white', '1.0', 'piece', 17, NULL, NULL, NULL, NULL),
(33, 'eggs', 'Egg yolk', '1.0', 'piece', 59, NULL, NULL, NULL, NULL),
(34, 'eggs', 'Hard boiled egg', '1.0', 'piece', 79, '1.0', '6.0', '5.0', NULL),
(35, 'eggs', 'Duck eggs', '1.0', 'piece', 130, NULL, NULL, NULL, NULL),
(36, 'eggs', 'Goose eggs', '1.0', 'piece', 267, NULL, NULL, NULL, NULL),
(37, 'eggs', 'Turkey eggs', '1.0', 'piece', 135, NULL, NULL, NULL, NULL),
(38, 'eggs', 'Quail eggs', '1.0', 'piece', 14, NULL, NULL, NULL, NULL),
(39, 'Food supplements', 'Centrum Multivitamin Multimineral', '1.0', 'tablet', 5, NULL, NULL, NULL, NULL),
(40, 'Food supplements', 'Nugo Chocolate Protein Bar', '1.0', 'bar', 170, NULL, NULL, NULL, NULL),
(41, 'Food supplements', 'Calcium 600 + D Supplement Chewables', '1.0', 'tablet', 10, NULL, NULL, NULL, NULL),
(42, 'Food supplements', 'Carbonated Nutritional Supplement Drink', '14.5', 'fl oz', 35, NULL, NULL, NULL, NULL),
(43, 'Grains', 'Bread, cereals', '100.0', 'g', 17, NULL, NULL, NULL, NULL),
(44, 'Grains', 'Whole wheat bread', '100.0', 'g', 260, NULL, NULL, NULL, NULL),
(45, 'Grains', 'Corn flakes', '25.0', 'g', 95, NULL, NULL, NULL, NULL),
(46, 'Grains', 'French bread', '115.0', 'g', 333, NULL, NULL, NULL, NULL),
(47, 'Grains', 'Wheat', '1.0', 'cup', 485, NULL, NULL, NULL, NULL),
(48, 'Grains', 'Pasta', '1.0', 'cup', 344, NULL, NULL, NULL, NULL),
(49, 'Grains', 'White rice, cooked (long grain)', '1.0', 'cup', 262, NULL, NULL, NULL, NULL),
(50, 'Grains', 'Nestle Fitness Corn flakes', '100.0', 'g', 368, '77.6', '8.4', '1.3', '6.2'),
(51, 'Legume', 'Beans, boiled', '1.0', 'cup', 187, NULL, NULL, NULL, NULL),
(52, 'Legume', 'Chickpeas, boiled', '1.0', 'cup', 270, '45.0', '15.0', '4.0', NULL),
(53, 'Legume', 'Lentil', '1.0', 'cup', 384, NULL, NULL, NULL, NULL),
(54, 'Meat Fish Shellfish', 'Sardines, canned in oil', '28.0', 'g', 58, NULL, NULL, NULL, NULL),
(55, 'Meat Fish Shellfish', 'Anchovies, canned in oil', '21.0', 'g', 42, NULL, NULL, NULL, NULL),
(56, 'Meat Fish Shellfish', 'Tuna, canned in water', '85.0', 'g', 104, NULL, NULL, NULL, NULL),
(57, 'Meat Fish Shellfish', 'Tuna, canned in oil', '85.0', 'g', 169, NULL, NULL, NULL, NULL),
(58, 'Meat Fish Shellfish', 'Smoked salmon', '85.0', 'g', 99, NULL, NULL, NULL, NULL),
(59, 'Meat Fish Shellfish', 'Shrimp, cooked', '85.0', 'g', 83, NULL, NULL, NULL, NULL),
(60, 'Meat Fish Shellfish', 'Oyster, uncooked', '28.0', 'g', 23, NULL, NULL, NULL, NULL),
(61, 'Meat Fish Shellfish', 'Oysters, fried', '28.0', 'g', 46, NULL, NULL, NULL, NULL),
(62, 'Meat Fish Shellfish', 'Caviar, black or red', '1.0', 'tablespoon', 40, NULL, NULL, NULL, NULL),
(63, 'Meat red', 'Beef, cooked', '85.0', 'g', 189, NULL, NULL, NULL, NULL),
(64, 'Meat red', 'Pork, cooked', '299.0', 'g', 445, NULL, NULL, NULL, NULL),
(65, 'Meat red', 'Cow tongue, cooked', '85.0', 'g', 241, NULL, NULL, NULL, NULL),
(66, 'Meat sausage', 'Salami - turkey', '28.0', 'g', 56, NULL, NULL, NULL, NULL),
(67, 'Meat sausage', 'Salami - beef', '28.0', 'g', 72, NULL, NULL, NULL, NULL),
(68, 'Meat sausage', 'Frankfurter - turkey', '42.0', 'g', 102, NULL, NULL, NULL, NULL),
(69, 'Meat sausage', 'Frankfurter - chicken meat', '42.0', 'g', 116, NULL, NULL, NULL, NULL),
(70, 'Meat sausage', 'Bologna sausage - turkey', '28.0', 'g', 57, NULL, NULL, NULL, NULL),
(71, 'Meat sausage', 'Bologna sausage - beef', '28.0', 'g', 88, NULL, NULL, NULL, NULL),
(72, 'Meat white', 'Chicken meat', '42.0', 'g', 116, NULL, NULL, NULL, NULL),
(73, 'Meat white', 'Turkey', '42.0', 'g', 102, NULL, NULL, NULL, NULL),
(74, 'Milk & Milk product', 'Full-fat milk', '1.0', 'cup', 150, NULL, NULL, NULL, NULL),
(75, 'Milk & Milk product', 'Low fat milk (1%)', '1.0', 'cup', 102, NULL, NULL, NULL, NULL),
(76, 'Milk & Milk product', 'Feta cheese', '28.0', 'g', 75, NULL, NULL, NULL, NULL),
(77, 'Milk & Milk product', 'Finuta cheese', '25.0', 'g', 110, NULL, NULL, NULL, NULL),
(78, 'Milk & Milk product', 'Gouda cheese', '28.0', 'g', 101, NULL, NULL, NULL, NULL),
(79, 'Milk & Milk product', 'Mozzarella cheese', '28.0', 'g', 80, NULL, NULL, NULL, NULL),
(80, 'Milk & Milk product', 'Cottage cheese', '100.0', 'g', 99, NULL, NULL, NULL, NULL),
(81, 'Milk & Milk product', 'Semi-skimmed milk', '100.0', 'ml', 45, '4.7', '3.3', '1.5', NULL),
(82, 'Nuts', 'Hazelnuts', '1.0', 'oz', 180, NULL, NULL, NULL, NULL),
(83, 'Nuts', 'Cashew', '1.0', 'oz', 165, NULL, NULL, NULL, NULL),
(84, 'Nuts', 'Almonds', '1.0', 'oz', 165, NULL, NULL, NULL, NULL),
(85, 'Oils', 'Margarine', '1.0', 'Tablespoon', 105, NULL, NULL, NULL, NULL),
(86, 'Oils', 'Olive oil', '1.0', 'Tablespoon', 120, NULL, NULL, NULL, NULL),
(87, 'Oils', 'Sunflower oil', '1.0', 'Tablespoon', 120, NULL, NULL, NULL, NULL),
(88, 'Oils', 'Butter', '1.0', 'Tablespoon', 36, NULL, NULL, NULL, NULL),
(89, 'Pastry', 'Bear claw', '1.0', 'piece', NULL, NULL, NULL, NULL, NULL),
(90, 'Pastry', 'DANISH PASTRY', '1.0', 'piece', 230, NULL, NULL, NULL, NULL),
(91, 'Pastry', 'TOASTER PASTRIES', '1.0', 'piece', 210, NULL, NULL, NULL, NULL),
(92, 'Pastry', 'Chorley cake', '1.0', 'piece', NULL, NULL, NULL, NULL, NULL),
(93, 'Pastry', 'Blackberry breakfast bar', '50.0', 'g', 232, '34.9', '1.6', '10.1', NULL),
(94, 'Spices', 'Dried hot red pepper', '3.0', 'teaspoons', 13, NULL, NULL, NULL, NULL),
(95, 'Spices', 'Ginger "powder"', '1.0', 'teaspoon', 1, NULL, NULL, NULL, NULL),
(96, 'Spices', 'Nutmeg "powder"', '1.0', 'teaspoon', 9, NULL, NULL, NULL, NULL),
(97, 'Spices', 'Black pepper', '1.0', 'teaspoon', 8, NULL, NULL, NULL, NULL),
(98, 'Sweets', 'American Hard Gums', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'Sweets', 'Acid Drops', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'Sweets', 'Barley Sugar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'Sweets', 'Chocolate Balls Black', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'Sweets', 'Chocolate Coins', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'Vegetables', 'Carrot', '60.0', 'g', 31, NULL, NULL, NULL, NULL),
(104, 'Vegetables', 'Cabbage', '1.0', 'cup', 16, NULL, NULL, NULL, NULL),
(105, 'Vegetables', 'Baked potato, with the peel', '195.0', 'g', 220, NULL, NULL, NULL, NULL),
(106, 'Vegetables', 'Baked potato, without the peel', '195.0', 'g', 162, NULL, NULL, NULL, NULL),
(107, 'Vegetables', 'Mushrooms', '1.0', 'cup', 18, NULL, NULL, NULL, NULL),
(108, 'Vegetables', 'Zucchini, chopped and cooked', '1.0', 'cup', 36, NULL, NULL, NULL, NULL),
(109, 'Vegetables', 'Red tomatoes', '1.0', 'medium', 26, NULL, NULL, NULL, NULL),
(110, 'Vegetables', 'Green olives', '10.0', 'grains', 66, NULL, NULL, NULL, NULL),
(111, 'Vegetables', 'Spinach', '1.0', 'cup', 14, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `food_details`
--

CREATE TABLE `food_details` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `quantity` varchar(250) NOT NULL,
  `calories` float NOT NULL,
  `fat` float NOT NULL,
  `cholesterol` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_details`
--

INSERT INTO `food_details` (`id`, `category_id`, `name`, `quantity`, `calories`, `fat`, `cholesterol`) VALUES
(1, 1, 'Coffee 1 cup', '2tsp cream & 2tsp sugar', 70, 2.9, 10),
(2, 1, 'Cola drinks', '350 ml', 145, 0, 0),
(3, 1, 'Tea 1 cup', '2tsp cream & 2tsp sugar', 70, 2.9, 10),
(4, 1, 'Tea 1 cup', '2tsp skim & 2tsp sugar', 45, 0, 0),
(5, 1, 'Coffee 1 cup', '2tsp skim & 2tsp sugar', 45, 0, 0),
(6, 1, 'Ginger ale', '350 ml', 115, 0, 0),
(7, 1, 'Beer Regular', '350 ml', 150, 0, 0),
(8, 1, '', 'Gin, Rum/Whisky/Vodka', 105, 0, 0),
(9, 1, 'Beer, light', '350 ml', 100, 0, 0),
(10, 1, '', '86 proof 1 jigger 43 mlGin, Rum/Whisky/Vodka 80 proof', 93, 0, 0),
(11, 1, 'Wines', 'Dry 1 glass 100 ml', 85, 0, 0),
(12, 1, 'Champagne', '100 ml', 84, 0, 0),
(13, 1, 'Wines', 'Sweet 1 glass 100 ml', 140, 0, 0),
(14, 1, 'Brandy', '30 ml', 77, 0, 0),
(15, 1, 'Martini', '1 cocktail', 215, 0, 0),
(16, 1, 'Cordials & Liquors', '30 ml', 97, 0, 0),
(17, 1, 'Squash', '100 ml', 70, 0, 0),
(18, 1, 'Tomato juice', '100 ml', 40, 0, 0),
(19, 1, 'Orange juice', '100 ml', 61, 0, 0),
(20, 1, 'Coconut water', '100 ml', 24, 0, 0),
(21, 1, 'Fresh Lime', 'Without Sugar 1 glass 150 ml', 145, 0, 0),
(22, 1, 'Apple juice', '100 ml', 59, 0, 0),
(23, 1, 'Fresh Lime', 'With 2tsp Sugar  1 glass 150 ml', 55, 0, 0),
(24, 2, 'Kachori', '1 small', 200, 15, 0),
(25, 2, 'Patty', 'Veg. 1 piece', 260, 15, 0),
(26, 2, 'Potato Vada', '3 pieces/60 gm', 170, 7, 0),
(27, 2, 'Vada', 'Dhai 2 pieces', 345, 19, 4),
(28, 2, 'Samosa', '1 big/65gm', 210, 13, 0),
(29, 2, 'Chat', 'plate with 5 papries', 210, 12, 0),
(30, 2, 'Bhelpuri', '1 plate small', 130, 5, 0),
(31, 2, 'Namkeen', 'fried 2 tsp', 85, 5, 0),
(32, 2, 'Sandwich', '2 65 gm with butte', 195, 14, 35),
(33, 2, 'Pizza', '1 slice medium', 150, 2.1, 15),
(34, 2, 'Mathri', '50 gm', 200, 15, 0),
(35, 2, 'Popcorn', '1 cup plain', 25, 0, 0),
(36, 2, 'Crackers Monaco', '4', 50, 3, 0),
(37, 2, 'Pan cake', '1 plain', 60, 3, 30),
(38, 2, 'Marie', '2', 55, 1, 0),
(39, 2, 'Chicken Nuggets', '6', 323, 20, 6.2),
(40, 2, 'Dhokla', '1 piece', 75, 0.5, 0),
(41, 2, 'Hamburger', '1 Big Boy', 570, 3.5, 83),
(42, 3, 'Milk or curd', '225 ml/1 cup', 0, 0, 0),
(43, 3, '', 'Full cream buffal', 234, 17.6, 70),
(44, 3, '', '3.5', 124, 7, 24),
(45, 3, '', 'Tone', 0, 0, 0),
(46, 3, '', '1.0', 50, 2, 8),
(47, 3, '', 'Full cream co', 134, 8.2, 28),
(48, 3, '', '1.5', 90, 3, 14),
(49, 3, '', 'Skimme', 58, 0.2, 0),
(50, 3, 'Butter Milk', 'Skimmed', 38, 2, 0),
(51, 3, '', 'Skimmed mil', 0.65, 0.4, 4),
(52, 3, '', 'Whole cow mil', 103.25, 6.5, 25),
(53, 3, 'Shake', 'Vanilla/Chocolate', 185, 5.6, 18),
(54, 3, 'Khoya', '25 gm', 0, 0, 0),
(55, 3, 'Paneer', '25 gm', 0, 0, 0),
(56, 3, '', 'Whole buffalo mil', 105.25, 7.8, 40),
(57, 3, '', 'Whole buffalo mil', 95.75, 7.8, 31),
(58, 3, '', 'American processe', 93.75, 7.8, 23.5),
(59, 3, '', 'Skimmed mil', 21.5, 0.4, 1.75),
(60, 3, '', 'Chedda', 102.5, 8.25, 26),
(61, 3, '', 'Whole cow mil', 79.75, 6.5, 22.25),
(62, 3, '', 'Swis', 93.75, 6.85, 23),
(63, 3, 'Cheese with', '10% fat', 41.25, 2.3, 7.75),
(64, 3, 'Cheese', '25 gm', 0, 0, 0),
(65, 3, 'Icecream', '100 gms 1 small cu', 200, 10, 41),
(66, 3, 'Sour Cream', '25 gm', 53.75, 7, 11.2),
(67, 3, 'Kulfi', '100 gms 1 small cu', 300, 1.5, 30),
(68, 3, 'Soyabean Milk', '225 ml', 87, 4, 0),
(69, 3, 'Condensed milk', '25 gm', 80, 1.9, 8.5),
(70, 4, 'Wheat Roti', '1 Phulka/35 gms', 85, 0.5, 0),
(71, 4, 'Rice', 'Boiled/Steamed 100 gm/1 katori', 110, 0.5, 0),
(72, 4, 'Wheat Paratha', '1 med/50gm', 180, 10, 0),
(73, 4, 'Puri', '1 med/25 gm', 150, 5, 0),
(74, 4, 'Rice Pulao', '150 gm/1 katori', 180, 10.5, 0),
(75, 4, 'Kichri', '100 gm/1 katori', 215, 7, 0),
(76, 4, 'Rice Brown', '1 katori', 116, 1, 0),
(77, 4, 'Dosa Plain', '85 gm', 255, 7, 0),
(78, 4, 'Idli', 'Sooji/Rice 115 gm/Two', 155, 0.6, 0),
(79, 4, 'Missi Roti', '1/35 gm', 90, 1.1, 0),
(80, 4, 'Upma', '130 gm/1 katori', 210, 9, 0),
(81, 4, 'Noodles', 'boiled 1 cup', 200, 0.9, 0),
(82, 4, 'Spaghetti & Meat Balls', '1 cup', 330, 9, 40),
(83, 4, 'Bread Roll', '1 medium', 155, 0.5, 0),
(84, 4, 'Macroni', 'boiled 1 cup', 190, 0.9, 0),
(85, 4, 'Bread White', '1 slice/25 gm', 70, 0.1, 0),
(86, 4, 'Bread Brown', '1 slice/25 gm', 65, 0.3, 0),
(87, 4, 'Corn Flakes', '20 gm', 80, 0.4, 0),
(88, 4, 'Oats', 'quick cooked 25 gm', 94, 1.9, 0),
(89, 4, 'Barley', 'uncooked 25 gm', 84, 0.3, 0),
(90, 5, 'Bengal Gram Roasted', 'Bhuna chana 100 gm', 69, 5.2, 0),
(91, 5, 'Bengal Gram cooked', '1 katori/12 gm', 125, 5, 0),
(92, 5, 'Black Gram cooked', '120 gm', 125, 5, 0),
(93, 5, 'Moong & Mouth Sprouts', '30 gm', 23, 0.3, 0),
(94, 5, 'Lentil/Broken Dals', '140 gm/1 katori', 160, 4, 0),
(95, 5, 'Sambhar', '160 gm/1 katori', 80, 4, 0),
(96, 5, 'Mixed Pulses with half cup  cooked rice', '1 katori', 230, 4.1, 0),
(97, 6, 'Potato', 'Fresh 100gms', 97, 0.1, 0),
(98, 6, 'Potato', 'mashed wit milk & butter  half cup', 97, 0.1, 0),
(99, 6, 'Potato', 'baked 1 large', 90, 0, 0),
(100, 6, 'Potato', 'boiled 1 large', 90, 0, 0),
(101, 6, 'Potato Chips', '10', 115, 5, 0),
(102, 6, 'Potato & veg curry', '100 gm', 120, 6, 0),
(103, 6, 'Sweet Potatoes', 'Boiled 1 med.', 120, 0, 0),
(104, 6, 'Peas', 'half cup fresh boiled', 55, 0, 0),
(105, 6, 'Stuffed & bake', '', 60, 4, 0),
(106, 6, 'Tomato ketchup', '1tbsp', 15, 0, 0),
(107, 6, 'Fresh', 'Medium', 25, 0, 0),
(108, 6, 'Onion', 'Half cup sliced', 23, 0, 0),
(109, 6, 'Carrot', 'half cup/1 fresh', 25, 0.2, 0),
(110, 6, 'Cabbage', 'Shredded 1 cup', 12, 0, 0),
(111, 6, 'Corn', 'small', 70, 0, 0),
(112, 6, 'Cucumber ', '6 slice', 5, 0, 0),
(113, 6, 'Cauliflower', 'half cup boiled', 15, 0, 0),
(114, 6, 'Brocoli', 'half cup', 20, 0, 0),
(115, 6, 'Pumpkin', 'half cup cooked', 33, 0, 0),
(116, 6, 'Beans', 'French green  100 bm boiled', 30, 0, 0),
(117, 6, 'Baked Beans', 'half cup', 155, 0, 0),
(118, 6, 'Beets', 'half cup', 28, 0, 0),
(119, 6, 'Lettuce', 'two leaves', 3, 0, 0),
(120, 6, 'Brinjal', '100 gm cooked', 70, 2, 0),
(121, 6, 'Radish', 'Red 4 small', 5, 0.3, 0),
(122, 6, 'Mushroom', 'half cup', 10, 0, 0),
(123, 6, 'Spinach', 'half cup cooked', 20, 0.7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user_id`, `friend_id`, `status`) VALUES
(3, 3, 1, 1),
(4, 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `pushed_when` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `type`, `status`, `pushed_when`) VALUES
(16, 1, 1, 1, '2017-02-23 16:54:44'),
(17, 2, 1, 0, '2017-02-23 16:54:44'),
(18, 3, 1, 0, '2017-02-23 16:54:44'),
(19, 4, 1, 0, '2017-02-23 16:54:44'),
(20, 5, 1, 0, '2017-02-23 16:54:45'),
(31, 1, 0, 1, '2017-03-07 22:46:14'),
(32, 2, 0, 0, '2017-03-07 22:46:14'),
(33, 3, 0, 0, '2017-03-07 22:46:14'),
(34, 4, 0, 0, '2017-03-07 22:46:14'),
(35, 5, 0, 0, '2017-03-07 22:46:14');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `store_id` varchar(250) NOT NULL,
  `name` varchar(500) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `locality` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(250) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `store_id`, `name`, `latitude`, `longitude`, `locality`, `contact`, `address`, `city`, `state`, `pincode`) VALUES
(1, 'INGJAMD00036', 'MEDPLUS PALDI', '23.02638800', '72.53944400', 'Paldi', '8155011180', 'GF. 7, Sigma Sparsh, Paldi,     Ahmedabad - 380004', 'AHMEDABAD', 'GUJARAT', '380004'),
(2, 'INGJAMD00066', 'OPTICAL PALDI', '23.02638800', '72.53944400', 'sigma sparsh', 'Awaited', 'GF. 7, Sigma Sparsh, Paldi, Ahmedabad - 380004', 'AHMEDABAD', 'GUJARAT', '380004'),
(3, 'INGJAMD00045', 'MEDPLUS IIMA VASTRAPUR', '23.03250000', '72.53305500', 'IIMA', '8155011197', 'GF Dormitory - 19, New Campus - IIMA, Vastrapur, Ahmedabad - 380015', 'AHMEDABAD', 'GUJARAT', '380015'),
(4, 'INGJAMD00055', 'MEDPLUS JODHPUR GAM ROAD', '23.02125570', '72.52342290', 'Akruti Society', '8155011106', 'Shop No: G/12, Karnavati Apartment, Jodhpur Gam Road, Opp: Akruti So., Ahmedabad', 'AHMEDABAD', 'GUJARAT', '380015'),
(5, 'INGJAMD00039', 'MEDPLUS JODHPUR', '23.02194400', '72.51944400', 'Jain Derasar', '8155011183', 'Shop No G-5, Ratnadeep Complex -2, Opp: Jain Derasar Jodhpur,  Ahmedabad - 380015', 'AHMEDABAD', 'GUJARAT', '380015'),
(6, 'INGJAMD00049', 'MEDPLUS MANI NAGAR', '23.00018700', '72.60311230', 'Naranpura Railway Crossing', '8155033320', 'Rajhans, Prerana Park, Opp LG Hospital, Mani Nagar, Ahmedabad', 'AHMEDABAD', 'GUJARAT', '380008'),
(7, 'INGJAMD00061', 'MEDPLUS NARANPURA', '23.05517200', '72.56049100', 'Naranpura', '8155033303', 'GF-2, Angi -1, 12/13, Nalanda Society, Near Naranpura Rly Crossing, Naranpura, Vadaj, Ahmedabad', 'AHMEDABAD', 'GUJARAT', '380013'),
(8, 'INGJAMD00042', 'MEDPLUS MEM NAGAR', '23.05083300', '72.53583300', 'Memnagar', '8155011142', 'Shop no:13, Ground Floor, Sarathi Owners Association, Sarjan Tower, Memnagar, Ahmedabad - 380052', 'AHMEDABAD', 'GUJARAT', '380052'),
(9, 'INGJAMD00054', 'MEDPLUS ISRO COLONY - RAM DEV NAGAR', '23.02103510', '72.51006060', 'ISRO Colony', '8155011107', 'Shop No: GF-19, Murdhanya, Opp: Super Soc, Isaro Colony Road', 'AHMEDABAD', 'GUJARAT', '380015'),
(10, 'INGJAMD00040', 'MEDPLUS SATELITE ROAD RAMDEV NAGAR', '23.02972200', '72.51305500', 'Ramdev Nagar', '8155011184', 'Shop No 8, Revati Tower, Ramdev Nagar, Satellite Road, Ahmedabad - 380015', 'AHMEDABAD', 'GUJARAT', '380015'),
(11, 'INGJAMD00056', 'MEDPLUS ANKUR ROAD', '23.05647600', '72.55803000', 'Ankur Road', '8155033304', '7, Krushnavan Society, Ankur Road, Naranpura, Ahmedabad', 'AHMEDABAD', 'GUJARAT', '380013'),
(12, 'INGJAMD00038', 'MEDPLUS BODAKDEV ', '23.04166600', '72.51833300', 'Judges Bunglow', '8155011182', 'Ground Floor, Shop No. 7, Century Towers, Near Jupiter Tower, Judges Bungalow Road, Ahmedabad - 380054', 'AHMEDABAD', 'GUJARAT', '380054'),
(13, 'INGJAMD00046', 'MEDPLUS PRAGATHI NAGAR', '23.06198400', '72.55678000', 'Housing Board Office', '8155011185', '32/A, Angita Co Op H SOC LTd, Opp: Housing Board Office, Naranpura, Ahmedabad', 'AHMEDABAD', 'GUJARAT', '380013'),
(14, 'INGJAMD00069', 'OPTICAL PRAGATHI NAGAR', '23.06198400', '72.55678000', 'Housing Board Office', 'Awaited', '32/A, Angita Co Op H SOC LTd, Opp: Housing Board Office, Naranpura, Ahmedabad', 'AHMEDABAD', 'GUJARAT', '380013'),
(15, 'INGJAMD00048', 'MEDPLUS SHAHI BAUG', '23.05583300', '72.58888800', 'Spectrum Tower', '8155022246', 'B/5 Spectrum Tower Opp Police Parade Ground Shahibaug,Ahmedabad - 380004', 'AHMEDABAD', 'GUJARAT', '380004'),
(16, 'INGJAMD00063', 'MEDPLUS VIRAT FLAT', '23.06279500', '72.53291000', 'Sola Road', '8155033305', 'Shop No. GF2, Virat Flat, Opp Shakuntal Bunglows, Sola Road, Ghatlodia, Ahmedabad', 'AHMEDABAD', 'GUJARAT', '380060'),
(17, 'INGJAMD00035', 'MEDPLUS THALTEJ', '23.05888800', '72.51722200', 'Thaltej', '8155011179', '340/1, G-4, Signature Complex, Opp. Suvarna Bungalows Thaltej,   Ahmedabad - 380054', 'AHMEDABAD', 'GUJARAT', '380054'),
(18, 'INGJAMD00050', 'MEDPLUS RANIP', '23.05191000', '72.33350000', 'Anand Party Plot', '8155011168', 'GF-3 & 4, Aarya Villa, Opp Shukan City, Anand Party Plot Road, New Ranip, Ahmedabad', 'AHMEDABAD', 'GUJARAT', '382470'),
(19, 'INGJAMD00057', 'MEDPLUS GOTA', '23.05590000', '72.32078000', 'gota', '8155033302', 'Shop No. GF 12, Royal Homes, Opp. Satyamev Vista, New Prahladnagar, Gota, Ahmedabad', 'AHMEDABAD', 'GUJARAT', '382481'),
(20, 'INGJAMD00034', 'MEDPLUS USMANPURA', '23.04888800', '72.56638800', 'Usmanpura', '8155011178', 'Shop No. 2, Navsiddhi Complex, Vikram Nagar, CO.OP.SOC.LTD, Usmanpura, Ahmedabad - 380013', 'AHMEDABAD', 'GUJARAT', '380013'),
(21, 'INGJAMD00053', 'MEDPLUS MARUTHI PLAZA NARODA', '23.03048000', '72.38402000', 'Maruti Plaza', '8155033321', 'Shop No. GF 22, Maruti Plaza, Saijpur Bogha, Ahmedabad', 'AHMEDABAD', 'GUJARAT', '382345'),
(22, 'INGJAMD00060', 'MEDPLUS SARGASAN GANDHINAGAR', '23.19523000', '72.61463000', 'Sargasan', '8155033301', 'A 1-2, Swagat Rain Forest - 3, Villa - Vasan Hadamatiya, Taluk: Gandhinagar', 'AHMEDABAD', 'GUJARAT', '382421'),
(23, 'INGJAMD00034', 'MEDPLUS USMANPURA', '23.04888800', '72.56638800', 'Usmanpura', '8155011178', 'Shop No. 2, Navsiddhi Complex, Vikram Nagar, CO.OP.SOC.LTD, Usmanpura, Ahmedabad - 380013', 'AHMEDABAD', 'GUJARAT', '380013'),
(24, 'INGJAMD00053', 'MEDPLUS MARUTHI PLAZA NARODA', '23.03048000', '72.38402000', 'Maruti Plaza', '8155033321', 'Shop No. GF 22, Maruti Plaza, Saijpur Bogha, Ahmedabad', 'AHMEDABAD', 'GUJARAT', '382345'),
(25, 'INGJAMD00060', 'MEDPLUS SARGASAN GANDHINAGAR', '23.19523000', '72.61463000', 'Sargasan', '8155033301', 'A 1-2, Swagat Rain Forest - 3, Villa - Vasan Hadamatiya, Taluk: Gandhinagar', 'AHMEDABAD', 'GUJARAT', '382421');

-- --------------------------------------------------------

--
-- Table structure for table `tips`
--

CREATE TABLE `tips` (
  `id` int(10) NOT NULL,
  `disease_id` int(10) NOT NULL,
  `tip` text NOT NULL,
  `tip_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tips`
--

INSERT INTO `tips` (`id`, `disease_id`, `tip`, `tip_title`) VALUES
(1, 1, 'High salt consumption is linked to high blood pressure. When eating out, ask for no or less gravy. Say no to canned foods, salty soups, instant noodles, potato chips and french fries. Eat less condiments such as chili sauce, soya sauce, mayonnaise and oyster sauce.', 'Cut down on? salt (sodium)'),
(2, 1, 'Prehypertension is linked to being overweight and obese. Asians should aim for a healthy BMI (body mass index) of 18.5 to 22.9.?', 'Keep a healthy weight'),
(3, 1, 'To prevent prehypertension or reverse it, exercise at least 30 minutes, 5 days a week, or 150 minutes a week. However, any increase in physical activity is better than nothing. If you’re just starting to exercise, consider climbing a few flights of stairs instead of taking the lift. Walk to a lunch venue that’s further away. On your way home from work, alight one bus stop away from your usual stop.', 'Exercise regularly'),
(4, 4, 'Fruits and vegetables are rich in fibre and nutrients, helping your kidneys get rid of excess sodium. This in turn helps lower your blood pressure. The Health Promotion Board of Singapore recommends a minimum of 2 + 2 servings of fruit and veget?ables. Eat more whole grains, legumes, unsalted seeds and nuts.', 'Eat more fruit and vegetables as part of a healthy diet'),
(5, 1, 'Choose heart-friendly foods such as lean cuts of meat and low-fat dairy products. Avoid eating processed foods which are high in saturated fats such as bacon, ham and hotdogs. These foods increase your LDL and risk of high cholesterol, worsening your prehypertension.', 'Cut down on saturated fats'),
(6, 1, 'Alcohol can increase your blood pressure. Men should have a maximum of two drinks per day. Women should not have more than one alcoholic beverage per day. One standard drink is roughly the amount of alcohol contained in one can of beer.', 'Lower your alcohol intake'),
(7, 1, 'Nicotine makes the heart work harder and over time, can increase the blood pressure.', 'Quit smoking'),
(8, 1, 'Blood pressure often increases as weight increases. Being overweight also can cause disrupted breathing while you sleep (sleep apnea), which further raises your blood pressure.\r\n\r\nWeight loss is one of the most effective lifestyle changes for controlling blood pressure. Losing just 10 pounds (4.5 kilograms) can help reduce your blood pressure.\r\n\r\nBesides shedding pounds, you generally should also keep an eye on your waistline. Carrying too much weight around your waist can put you at greater risk of high blood pressure.\r\n\r\nIn general:\r\n\r\nMen are at risk if their waist measurement is greater than 40 inches (102 centimeters).\r\nWomen are at risk if their waist measurement is greater than 35 inches (89 centimeters).\r\nThese numbers vary among ethnic groups. Ask your doctor about a healthy waist measurement for you.', 'Lose extra pounds and watch your waistline'),
(9, 1, 'Regular physical activity — at least 30 minutes most days of the week — can lower your blood pressure by 4 to 9 millimeters of mercury (mm Hg). It''s important to be consistent because if you stop exercising, your blood pressure can rise again.\r\n\r\nIf you have slightly high blood pressure (prehypertension), exercise can help you avoid developing full-blown hypertension. If you already have hypertension, regular physical activity can bring your blood pressure down to safer levels.\r\n\r\nThe best types of exercise for lowering blood pressure include walking, jogging, cycling, swimming or dancing. Strength training also can help reduce blood pressure. Talk to your doctor about developing an exercise program.', 'Exercise regularly'),
(10, 1, 'Eating a diet that is rich in whole grains, fruits, vegetables and low-fat dairy products and skimps on saturated fat and cholesterol can lower your blood pressure by up to 14 mm Hg. This eating plan is known as the Dietary Approaches to Stop Hypertension (DASH) diet.\r\n\r\nIt isn''t easy to change your eating habits, but with these tips, you can adopt a healthy diet:\r\n\r\nKeep a food diary. Writing down what you eat, even for just a week, can shed surprising light on your true eating habits. Monitor what you eat, how much, when and why.\r\nConsider boosting potassium. Potassium can lessen the effects of sodium on blood pressure. The best source of potassium is food, such as fruits and vegetables, rather than supplements. Talk to your doctor about the potassium level that''s best for you.\r\nBe a smart shopper. Read food labels when you shop and stick to your healthy-eating plan when you''re dining out, too.', 'Eat a healthy diet'),
(11, 1, 'Even a small reduction in the sodium in your diet can reduce blood pressure by 2 to 8 mm Hg.\r\n\r\nThe effect of sodium intake on blood pressure varies among groups of people. In general, limit sodium to less than 2,300 milligrams (mg) a day or less. However, a lower sodium intake — 1,500 mg a day or less — is appropriate for people with greater salt sensitivity, including:\r\n\r\nAfrican-Americans\r\nAnyone age 51 or older\r\nAnyone diagnosed with high blood pressure, diabetes or chronic kidney disease\r\nTo decrease sodium in your diet, consider these tips:\r\n\r\nRead food labels. If possible, choose low-sodium alternatives of the foods and beverages you normally buy.\r\nEat fewer processed foods. Only a small amount of sodium occurs naturally in foods. Most sodium is added during processing.\r\nDon''t add salt. Just 1 level teaspoon of salt has 2,300 mg of sodium. Use herbs or spices to add flavor to your food.\r\nEase into it. If you don''t feel you can drastically reduce the sodium in your diet suddenly, cut back gradually. Your palate will adjust over time.', 'Reduce sodium in your diet'),
(12, 1, 'Alcohol can be both good and bad for your health. In small amounts, it can potentially lower your blood pressure by 2 to 4 mm Hg.\r\n\r\nBut that protective effect is lost if you drink too much alcohol — generally more than one drink a day for women and for men older than age 65, or more than two a day for men age 65 and younger. One drink equals 12 ounces of beer, five ounces of wine or 1.5 ounces of 80-proof liquor.\r\n\r\nDrinking more than moderate amounts of alcohol can actually raise blood pressure by several points. It can also reduce the effectiveness of blood pressure medications.', 'Limit the amount of alcohol you drink'),
(13, 1, 'Each cigarette you smoke increases your blood pressure for many minutes after you finish. Quitting smoking helps your blood pressure return to normal. People who quit smoking, regardless of age, have substantial increases in life expectancy.', 'Quit smoking'),
(14, 1, 'The role caffeine plays in blood pressure is still debated. Caffeine can raise blood pressure by as much as 10 mm Hg in people who rarely consume it, but there is little to no strong effect on blood pressure in habitual coffee drinkers.\r\n\r\nAlthough the effects of chronic caffeine ingestion on blood pressure aren''t clear, the possibility of a slight increase in blood pressure exists.\r\n\r\nTo see if caffeine raises your blood pressure, check your pressure within 30 minutes of drinking a caffeinated beverage. If your blood pressure increases by 5 to 10 mm Hg, you may be sensitive to the blood pressure raising effects of caffeine. Talk to your doctor about the effects of caffeine on your blood pressure.', 'Cut back on caffeine'),
(15, 1, 'Chronic stress is an important contributor to high blood pressure. Occasional stress also can contribute to high blood pressure if you react to stress by eating unhealthy food, drinking alcohol or smoking.\r\n\r\nTake some time to think about what causes you to feel stressed, such as work, family, finances or illness. Once you know what''s causing your stress, consider how you can eliminate or reduce stress.\r\n\r\nIf you can''t eliminate all of your stressors, you can at least cope with them in a healthier way. Try to:\r\n\r\n-->Change your expectations. Give yourself time to get things done. Learn to say no and to live within manageable limits. Try to learn to accept things you can''t change.\r\n-->Think about problems under your control and make a plan to solve them. You could talk to your boss about difficulties at work or to family members about problems at home.\r\n-->Know your stress triggers. Avoid whatever triggers you can. For example, spend less time with people who bother you or avoid driving in rush-hour traffic.\r\n-->Make time to relax and to do activities you enjoy. Take 15 to 20 minutes a day to sit quietly and breathe deeply. Try to intentionally enjoy what you do rather than hurrying through your "relaxing activities" at a stressful pace.\r\n-->Practice gratitude. Expressing gratitude to others can help reduce stressful thoughts.', 'Reduce your stress'),
(16, 1, 'Home monitoring can help you keep tabs on your blood pressure, make certain your lifestyle changes are working, and alert you and your doctor to potential health complications. Blood pressure monitors are available widely and without a prescription. Talk to your doctor about home monitoring before you get started.\r\n\r\nRegular visits with your doctor are also key to controlling your blood pressure. If your blood pressure is under control, you might need to visit your doctor only every six to 12 months, depending on other conditions you might have. If your blood pressure isn''t well-controlled, your doctor will likely want to see you more frequently', 'Monitor your blood pressure at home and see your doctor '),
(17, 1, 'Supportive family and friends can help improve your health. They may encourage you to take care of yourself, drive you to the doctor''s office or embark on an exercise program with you to keep your blood pressure low.\r\n\r\nIf you find you need support beyond your family and friends, consider joining a support group. This may put you in touch with people who can give you an emotional or morale boost and who can offer practical tips to cope with your condition.\r\n', 'Get support'),
(18, 1, 'These healthy fats — found in fish, some nuts and vegetables, and supplements — have well-documented benefits for heart health. According to the American Heart Association, research shows that they:\r\n\r\ndecrease triglycerides\r\nslow the buildup of fatty deposits inside arteries\r\ndecrease the risk of abnormal heartbeats\r\nlower blood pressure slightly', 'Omega-3 Fatty Acids (Fish Oil)'),
(19, 1, 'Coenzyme Q-10 is produced by the human body and is also available in supplements. It supports the basic functioning of cells. According to the Mayo Clinic, research suggests that there is good scientific evidence that coenzyme Q-10 does lower blood pressure. However, they caution that further study is needed to determine the ideal necessary dose.', 'Coenzyme Q-10'),
(20, 1, 'Garlic is popular as a food and is also sold in supplement form. It contains sulfur compounds that have a positive effect on cholesterol levels. According to the National Institutes of Health, some studies suggest that it might also lower blood pressure slightly.', 'Garlic'),
(21, 1, 'Found in cocoa products and dark chocolate as well as in supplements, cocoa is rich in antioxidant plant chemicals called flavonoids. In a study from the National Center for Complementary and Alternative Medicine (NCCAM), when people with high blood pressure consumed cocoa twice daily for two weeks, it improved the ability of artery walls to relax but did not lower blood pressure significantly.', 'Cocoa'),
(22, 1, 'Meditation is the practice of focused attention. It calms the mind, relaxes the body, and reduces stress. In a recent study funded in part by NCCAM, meditation lowered blood pressure in a group of students at high risk for developing high blood pressure.', 'Meditation'),
(23, 1, 'This ancient meditation practice combines physical postures, breathing techniques, and focused attention. It can help with flexibility and fitness as well as stress levels. According to the NCCAM, research suggests that it may reduce heart rate and blood pressure.', 'Yoga'),
(24, 1, 'Biofeedback is a technique in which you learn to control a specific bodily function with your mind. During a biofeedback session, you are connected to sensors that gather information about what’s going on inside your body. This information is then fed back to you via visual or auditory cues. For example, you’re connected to a sensor that gathers information about your heart rate and feeds it back in a computerized graph that changes as your heart rate changes. The aim is to learn to control the graph, and your heart rate, at will.', 'Biofeedback'),
(25, 1, 'After starting high blood pressure drug therapy, you should see your doctor at least once a month until the blood pressure goal is reached. Once or twice a year, your doctor may check the level of potassium in your blood (diuretics can lower this, and ACE inhibitors and ARBs may increase this) and other electrolytes and BUN/creatinine levels (to check the health of the kidneys).\r\n\r\nAfter the blood pressure goal is reached, you should continue to see your doctor every three to six months, depending on whether you have other diseases such as heart failure.', 'High Blood Pressure Treatment Follow-Up');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `age` int(10) NOT NULL DEFAULT '0',
  `height` int(10) NOT NULL DEFAULT '0',
  `weight` int(10) NOT NULL DEFAULT '0',
  `gender` int(10) NOT NULL DEFAULT '0',
  `diabetic` int(10) NOT NULL DEFAULT '0',
  `smoker` int(10) NOT NULL DEFAULT '0',
  `alcoholic` int(10) NOT NULL DEFAULT '0',
  `heredity` text NOT NULL,
  `status` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `age`, `height`, `weight`, `gender`, `diabetic`, `smoker`, `alcoholic`, `heredity`, `status`) VALUES
(1, 'a', 'a', 'a@a.a', 18, 170, 75, 1, 0, 0, 0, '', 1),
(2, 'aba', 'a', 'aprojects66@gmail.com', 0, 0, 0, 0, 0, 0, 0, '', 0),
(3, 'vatsal', 'manush96', 'nlkjdanklfjne@kksfnsakln', 30, 150, 70, 1, 1, 0, 0, 'No data for now', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daily_exercise`
--
ALTER TABLE `daily_exercise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exercise_lookup`
--
ALTER TABLE `exercise_lookup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_category`
--
ALTER TABLE `food_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_details`
--
ALTER TABLE `food_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daily_exercise`
--
ALTER TABLE `daily_exercise`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `disease`
--
ALTER TABLE `disease`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exercise_lookup`
--
ALTER TABLE `exercise_lookup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `food_category`
--
ALTER TABLE `food_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `food_details`
--
ALTER TABLE `food_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tips`
--
ALTER TABLE `tips`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
