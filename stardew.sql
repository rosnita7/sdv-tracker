-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: localhost    Database: stardew
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `bundles`
--

DROP TABLE IF EXISTS `bundles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bundles` (
  `bundle` varchar(100) NOT NULL,
  `room` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bundle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bundles`
--

LOCK TABLES `bundles` WRITE;
/*!40000 ALTER TABLE `bundles` DISABLE KEYS */;
INSERT INTO `bundles` VALUES ('10,000','Vault'),('2,500','Vault'),('25,000','Vault'),('5,000','Vault'),('Adventurer','Boiler Room'),('Animal','Pantry'),('Artisan','Pantry'),('Blacksmith','Boiler Room'),('Chef','Bulletin Board'),('Construction','Crafts Room'),('Crab Pot','Fish Tank'),('Dye','Bulletin Board'),('Enchanter','Bulletin Board'),('Exotic Foraging','Crafts Room'),('Fall Crops','Pantry'),('Fall Foraging','Crafts Room'),('Field Research','Bulletin Board'),('Fodder','Bulletin Board'),('Geologist','Boiler Room'),('Lake Fish','Fish Tank'),('Missing','Abandoned JojaMart'),('Night Fishing','Fish Tank'),('Ocean Fish','Fish Tank'),('Quality Crops','Pantry'),('River Fish','Fish Tank'),('Specialty Fish','Fish Tank'),('Spring Crops','Pantry'),('Spring Foraging','Crafts Room'),('Summer Crops','Pantry'),('Summer Foraging','Crafts Room'),('Winter Foraging','Crafts Room');
/*!40000 ALTER TABLE `bundles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objects`
--

DROP TABLE IF EXISTS `objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `objects` (
  `name` varchar(100) NOT NULL,
  `season` set('Spring','Summer','Fall','Winter') DEFAULT NULL,
  `type` set('Farming','Foraging','Mining','Fishing','Combat','Other') DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `bundle` varchar(100) NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`name`,`bundle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objects`
--

LOCK TABLES `objects` WRITE;
/*!40000 ALTER TABLE `objects` DISABLE KEYS */;
INSERT INTO `objects` VALUES ('Ancient Fruit','Spring,Summer,Fall','Farming','Crops','Missing','/ancientfruit.png'),('Apple','Fall','Farming','Apple Tree, Fruit Bat Cave','Artisan','https://stardewvalleywiki.com/mediawiki/images/7/7d/Apple.png'),('Apple','Fall','Farming','Apple Tree, Fruit Bat Cave','Fodder','https://stardewvalleywiki.com/mediawiki/images/7/7d/Apple.png'),('Apricot','Spring','Farming','Apricot Tree, Fruit Bat Cave','Artisan','https://stardewvalleywiki.com/mediawiki/images/f/fc/Apricot.png'),('Aquamarine','Spring,Summer,Fall,Winter','Mining','Mines on Floors 40+','Dye','https://stardewvalleywiki.com/mediawiki/images/a/a2/Aquamarine.png'),('Bat Wing','Spring,Summer,Fall,Winter','Combat','Bats','Adventurer','https://stardewvalleywiki.com/mediawiki/images/3/35/Bat_Wing.png'),('Blackberry','Fall','Foraging','Foraging, Fruit Bat Cave','Fall Foraging','https://stardewvalleywiki.com/mediawiki/images/2/25/Blackberry.png'),('Blueberry','Summer','Farming','Crops','Summer Crops','https://stardewvalleywiki.com/mediawiki/images/9/9e/Blueberry.png'),('Bream','Spring,Summer,Fall,Winter','Fishing','River, 6pm - 2am','Night Fishing','https://stardewvalleywiki.com/mediawiki/images/8/82/Bream.png'),('Bullhead','Spring,Summer,Fall,Winter','Fishing','Mountain Lake','Lake Fish','https://stardewvalleywiki.com/mediawiki/images/d/db/Bullhead.png'),('Cactus Fruit','Spring,Summer,Fall,Winter','Foraging','Desert','Exotic Foraging','https://stardewvalleywiki.com/mediawiki/images/3/32/Cactus_Fruit.png'),('Carp','Spring,Summer,Fall','Fishing','Mountain Lake, Secret Woods, Sewers, 6am - 7pm','Lake Fish','https://stardewvalleywiki.com/mediawiki/images/a/a8/Carp.png'),('Catfish','Spring,Fall','Fishing','River, Secret Woods, Witch\'s Swamp, Rainy, 6am - 12am','River Fish','https://stardewvalleywiki.com/mediawiki/images/9/99/Catfish.png'),('Cauliflower','Spring','Farming','Crops','Spring Crops','https://stardewvalleywiki.com/mediawiki/images/a/aa/Cauliflower.png'),('Cave Carrot','Spring,Summer,Fall,Winter','Foraging','Mines','Exotic Foraging','https://stardewvalleywiki.com/mediawiki/images/3/34/Cave_Carrot.png'),('Caviar','Spring,Summer,Fall,Winter','Fishing','Sturgeon Roe in Preserves Jar','Missing','https://stardewvalleywiki.com/mediawiki/images/8/89/Caviar.png'),('Cheese','Spring,Summer,Fall,Winter','Farming','Milk in Cheese Press','Artisan','https://stardewvalleywiki.com/mediawiki/images/a/a5/Cheese.png'),('Cherry','Spring','Farming','Cherry Tree, Fruit Bat Cave','Artisan','https://stardewvalleywiki.com/mediawiki/images/2/20/Cherry.png'),('Chub','Spring,Summer,Fall,Winter','Fishing','Mountain Lake, Forest River','Field Research','https://stardewvalleywiki.com/mediawiki/images/b/bd/Chub.png'),('Clam','Spring,Summer,Fall,Winter','Foraging,Fishing','Crab Pot in Saltwater, Beach','Crab Pot','https://stardewvalleywiki.com/mediawiki/images/e/ed/Clam.png'),('Cloth','Spring,Summer,Fall,Winter','Farming','Loom, Recycling Soggy Newspaper','Artisan','https://stardewvalleywiki.com/mediawiki/images/5/51/Cloth.png'),('Cockle','Spring,Summer,Fall,Winter','Foraging,Fishing','Crab Pot in Saltwater, Beach','Crab Pot','https://stardewvalleywiki.com/mediawiki/images/a/ad/Cockle.png'),('Coconut','Spring,Summer,Fall,Winter','Foraging','Desert, Shaking Palm Trees','Exotic Foraging','https://stardewvalleywiki.com/mediawiki/images/2/2f/Coconut.png'),('Common Mushroom','Fall','Foraging','Foraging, Mushroom Cave, Tapper on Mushroom Tree','Fall Foraging','https://stardewvalleywiki.com/mediawiki/images/2/2e/Common_Mushroom.png'),('Copper Bar','Spring,Summer,Fall,Winter','Mining','Copper Ore in Furnace','Blacksmith','https://stardewvalleywiki.com/mediawiki/images/f/f1/Copper_Bar.png'),('Corn','Summer,Fall','Farming','Crops','Fall Crops','https://stardewvalleywiki.com/mediawiki/images/f/f8/Corn.png'),('Corn','Summer,Fall','Farming','Crops','Quality Crops','/corn.png'),('Crab','Spring,Summer,Fall,Winter','Fishing,Combat','Crab Pot in Saltwater, Rock Crab, Lava Crab','Crab Pot','https://stardewvalleywiki.com/mediawiki/images/6/63/Crab.png'),('Crayfish','Spring,Summer,Fall,Winter','Fishing','Crab Pot in Freshwater','Crab Pot','https://stardewvalleywiki.com/mediawiki/images/5/53/Crayfish.png'),('Crocus','Winter','Foraging','Foraging','Winter Foraging','https://stardewvalleywiki.com/mediawiki/images/2/2f/Crocus.png'),('Crystal Fruit','Winter','Foraging,Combat','Foraging, Dust Sprites','Winter Foraging','https://stardewvalleywiki.com/mediawiki/images/1/16/Crystal_Fruit.png'),('Daffodil','Spring','Foraging','Foraging','Spring Foraging','https://stardewvalleywiki.com/mediawiki/images/4/4b/Daffodil.png'),('Dandelion','Spring','Foraging','Foraging','Spring Foraging','https://stardewvalleywiki.com/mediawiki/images/b/b1/Dandelion.png'),('Dinosaur Mayonnaise','Spring,Summer,Fall,Winter','Farming','Dinosaur Egg in Mayonnaise Machine','Missing','https://stardewvalleywiki.com/mediawiki/images/c/c3/Dinosaur_Mayonnaise.png'),('Duck Egg','Spring,Summer,Fall,Winter','Farming','Ducks','Animal','https://stardewvalleywiki.com/mediawiki/images/3/31/Duck_Egg.png'),('Duck Feather','Spring,Summer,Fall,Winter','Farming','Ducks','Dye','https://stardewvalleywiki.com/mediawiki/images/f/f9/Duck_Feather.png'),('Earth Crystal','Spring,Summer,Fall,Winter','Mining','Mines on Floors 1-39, Geodes','Geologist','https://stardewvalleywiki.com/mediawiki/images/7/74/Earth_Crystal.png'),('Eel','Spring,Fall','Fishing','Ocean, Rainy, 4pm - 2am','Night Fishing','https://stardewvalleywiki.com/mediawiki/images/9/91/Eel.png'),('Eggplant','Fall','Farming','Crops','Fall Crops','https://stardewvalleywiki.com/mediawiki/images/8/8f/Eggplant.png'),('Fiddlehead Fern','Summer','Foraging','Secret Woods, Chopping Green Rain Trees','Chef','https://stardewvalleywiki.com/mediawiki/images/4/48/Fiddlehead_Fern.png'),('Fire Quartz','Spring,Summer,Fall,Winter','Mining','Mines on Floors 80-120, Magma or Omni Geodes','Geologist','https://stardewvalleywiki.com/mediawiki/images/5/5b/Fire_Quartz.png'),('Fried Egg','Spring,Summer,Fall,Winter','Other','Cooking with a egg','Chef','https://stardewvalleywiki.com/mediawiki/images/1/18/Fried_Egg.png'),('Frozen Geode','Spring,Summer,Fall,Winter','Mining','Mines on Floors 41-79','Field Research','https://stardewvalleywiki.com/mediawiki/images/b/bf/Frozen_Geode.png'),('Frozen Tear','Spring,Summer,Fall,Winter','Mining','Mines on Floors 40-79, Frozen or Omni Geodes','Geologist','https://stardewvalleywiki.com/mediawiki/images/e/ec/Frozen_Tear.png'),('Ghostfish','Spring,Summer,Fall,Winter','Fishing,Combat','Mines on Floor 20 and 60, Ghosts','Specialty Fish','https://stardewvalleywiki.com/mediawiki/images/7/72/Ghostfish.png'),('Goat Cheese','Spring,Summer,Fall,Winter','Farming','Goat Milk in Cheese Press','Artisan','https://stardewvalleywiki.com/mediawiki/images/c/c8/Goat_Cheese.png'),('Gold Bar','Spring,Summer,Fall,Winter','Mining','Gold Ore in Furnace','Blacksmith','https://stardewvalleywiki.com/mediawiki/images/4/4e/Gold_Bar.png'),('Grape','Summer,Fall','Farming,Foraging','Foraging, Crops','Summer Foraging','https://stardewvalleywiki.com/mediawiki/images/c/c2/Grape.png'),('Green Bean','Spring','Farming','Crops','Spring Crops','https://stardewvalleywiki.com/mediawiki/images/5/5c/Green_Bean.png'),('Hardwood','Spring,Summer,Fall,Winter','Foraging','Chopping Large Stumps or Mahogany Trees, Secret Forest','Construction','https://stardewvalleywiki.com/mediawiki/images/e/ed/Hardwood.png'),('Hay','Spring,Summer,Fall','Farming','Scything Grass','Fodder','https://stardewvalleywiki.com/mediawiki/images/a/aa/Hay.png'),('Hazelnut','Fall','Foraging','Foraging','Fall Foraging','https://stardewvalleywiki.com/mediawiki/images/3/31/Hazelnut.png'),('Honey','Spring,Summer,Fall','Farming','Bee House','Artisan','https://stardewvalleywiki.com/mediawiki/images/c/c6/Honey.png'),('Hot Pepper','Summer','Farming','Crops','Summer Crops','https://stardewvalleywiki.com/mediawiki/images/f/f1/Hot_Pepper.png'),('Iron Bar','Spring,Summer,Fall,Winter','Mining','Iron Ore in Furnace','Blacksmith','https://stardewvalleywiki.com/mediawiki/images/6/6c/Iron_Bar.png'),('Jelly','Spring,Summer,Fall,Winter','Farming','Fruit in Preserves Jar','Artisan','https://stardewvalleywiki.com/mediawiki/images/0/05/Jelly.png'),('Large Brown Egg','Spring,Summer,Fall,Winter','Farming','Brown Chickens','Animal','https://stardewvalleywiki.com/mediawiki/images/9/91/Large_Brown_Egg.png'),('Large Egg','Spring,Summer,Fall,Winter','Farming','Blue or White Chickens','Animal','https://stardewvalleywiki.com/mediawiki/images/5/5d/Large_Egg.png'),('Large Goat Milk','Spring,Summer,Fall,Winter','Farming','Goats','Animal','https://stardewvalleywiki.com/mediawiki/images/f/f2/Large_Goat_Milk.png'),('Large Milk','Spring,Summer,Fall,Winter','Farming','Cows','Animal','https://stardewvalleywiki.com/mediawiki/images/6/67/Large_Milk.png'),('Largemouth Bass','Spring,Summer,Fall,Winter','Fishing','Mountain Lake, 6am - 7pm','Lake Fish','https://stardewvalleywiki.com/mediawiki/images/1/11/Largemouth_Bass.png'),('Leek','Spring','Foraging','Foraging','Spring Foraging','https://stardewvalleywiki.com/mediawiki/images/5/57/Leek.png'),('Lobster','Spring,Summer,Fall,Winter','Fishing','Crab Pot in Saltwater','Crab Pot','https://stardewvalleywiki.com/mediawiki/images/9/9f/Lobster.png'),('Maki Roll','Spring,Summer,Fall,Winter','Other','Cooking with any fish, seaweed, rice','Chef','https://stardewvalleywiki.com/mediawiki/images/b/b6/Maki_Roll.png'),('Maple Syrup','Spring,Summer,Fall,Winter','Foraging','Tapper on Maple Tree','Chef','https://stardewvalleywiki.com/mediawiki/images/6/6a/Maple_Syrup.png'),('Maple Syrup','Spring,Summer,Fall,Winter','Foraging','Tapper on Maple Tree','Exotic Foraging','https://stardewvalleywiki.com/mediawiki/images/6/6a/Maple_Syrup.png'),('Melon','Summer','Farming','Crops','Quality Crops','/melon.png'),('Melon','Summer','Farming','Crops','Summer Crops','https://stardewvalleywiki.com/mediawiki/images/1/19/Melon.png'),('Morel','Spring','Foraging','Secret Woods, Mushroom Cave','Exotic Foraging','https://stardewvalleywiki.com/mediawiki/images/b/b1/Morel.png'),('Mussel','Spring,Summer,Fall,Winter','Foraging,Fishing','Crab Pot in Saltwater, Beach','Crab Pot','https://stardewvalleywiki.com/mediawiki/images/a/aa/Mussel.png'),('Nautilus Shell','Winter','Foraging','Beach','Field Research','https://stardewvalleywiki.com/mediawiki/images/a/a4/Nautilus_Shell.png'),('Oak Resin','Spring,Summer,Fall,Winter','Foraging','Tapper on Oak Tree','Enchanter','https://stardewvalleywiki.com/mediawiki/images/4/40/Oak_Resin.png'),('Oak Resin','Spring,Summer,Fall,Winter','Foraging','Tapper on Oak Tree','Exotic Foraging','https://stardewvalleywiki.com/mediawiki/images/4/40/Oak_Resin.png'),('Orange','Summer','Farming','Orange Tree, Fruit Bat Cave','Artisan','https://stardewvalleywiki.com/mediawiki/images/4/43/Orange.png'),('Oyster','Spring,Summer,Fall,Winter','Foraging,Fishing','Crab Pot in Saltwater, Beach','Crab Pot','https://stardewvalleywiki.com/mediawiki/images/5/54/Oyster.png'),('Parsnip','Spring','Farming','Crops','Quality Crops','/parsnip.png'),('Parsnip','Spring','Farming','Crops','Spring Crops','https://stardewvalleywiki.com/mediawiki/images/d/db/Parsnip.png'),('Peach','Summer','Farming','Peach Tree, Fruit Bat Cave','Artisan','https://stardewvalleywiki.com/mediawiki/images/e/e2/Peach.png'),('Periwinkle','Spring,Summer,Fall,Winter','Fishing','Crab Pot in Freshwater','Crab Pot','https://stardewvalleywiki.com/mediawiki/images/1/1d/Periwinkle.png'),('Pine Tar','Spring,Summer,Fall,Winter','Foraging','Tapper on Pine Tree','Exotic Foraging','https://stardewvalleywiki.com/mediawiki/images/c/ce/Pine_Tar.png'),('Pomegranate','Fall','Farming','Pomegranate Tree, Fruit Bat Cave','Artisan','https://stardewvalleywiki.com/mediawiki/images/1/1b/Pomegranate.png'),('Pomegranate','Fall','Farming','Pomegranate Tree, Fruit Bat Cave','Enchanter','https://stardewvalleywiki.com/mediawiki/images/1/1b/Pomegranate.png'),('Poppy','Summer','Farming','Crops','Chef','https://stardewvalleywiki.com/mediawiki/images/3/37/Poppy.png'),('Potato','Spring','Farming','Crops','Spring Crops','https://stardewvalleywiki.com/mediawiki/images/c/c2/Potato.png'),('Prismatic Shard','Spring,Summer,Fall,Winter','Mining','Mines on Floors 100+, Skull Cavern, Quarry, Meteorite, Omni Geodes','Missing','https://stardewvalleywiki.com/mediawiki/images/5/56/Prismatic_Shard.png'),('Pufferfish','Summer','Fishing','Ocean, Ginger Island, 12pm - 4pm','Specialty Fish','https://stardewvalleywiki.com/mediawiki/images/b/ba/Pufferfish.png'),('Pumpkin','Fall','Farming','Crops','Fall Crops','https://stardewvalleywiki.com/mediawiki/images/6/64/Pumpkin.png'),('Pumpkin','Fall','Farming','Crops','Quality Crops','/pumpkin.png'),('Purchase','Spring,Summer,Fall,Winter','Other','','10,000','https://stardewvalleywiki.com/mediawiki/images/1/11/10000_Bundle.png'),('Purchase','Spring,Summer,Fall,Winter','Other','','2,500','https://stardewvalleywiki.com/mediawiki/images/e/e2/2500_Bundle.png'),('Purchase','Spring,Summer,Fall,Winter','Other','','25,000','https://stardewvalleywiki.com/mediawiki/images/a/a7/25000_Bundle.png'),('Purchase','Spring,Summer,Fall,Winter','Other','','5,000','https://stardewvalleywiki.com/mediawiki/images/1/17/5000_Bundle.png'),('Purple Mushroom','Spring,Summer,Fall,Winter','Foraging','Mines, Mushroom Cave, Tapper on Mushroom Tree','Exotic Foraging','https://stardewvalleywiki.com/mediawiki/images/4/4b/Purple_Mushroom.png'),('Purple Mushroom','Spring,Summer,Fall,Winter','Foraging',' Mines, Mushroom Cave, Tapper on Mushroom Tree','Field Research','https://stardewvalleywiki.com/mediawiki/images/4/4b/Purple_Mushroom.png'),('Quartz','Spring,Summer,Fall,Winter','Mining','Mines','Geologist','https://stardewvalleywiki.com/mediawiki/images/c/cf/Quartz.png'),('Rabbit\'s Foot','Spring,Summer,Fall,Winter','Farming','Rabbits','Enchanter','https://stardewvalleywiki.com/mediawiki/images/c/ca/Rabbit%27s_Foot.png'),('Red Cabbage','Spring,Summer,Fall,Winter','Farming','Crops','Dye','https://stardewvalleywiki.com/mediawiki/images/2/2d/Red_Cabbage.png'),('Red Mushroom','Spring,Summer,Fall,Winter','Foraging','Mines, Mushroom Cave, Tapper on Mushroom Tree, Secret Woods','Dye','https://stardewvalleywiki.com/mediawiki/images/e/e1/Red_Mushroom.png'),('Red Mushroom','Spring,Summer,Fall,Winter','Foraging','Mines, Mushroom Cave, Tapper on Mushroom Tree, Secret Woods','Exotic Foraging','https://stardewvalleywiki.com/mediawiki/images/e/e1/Red_Mushroom.png'),('Red Snapper','Summer,Fall','Fishing','Ocean, Rainy, 6am - 7pm','Ocean Fish','https://stardewvalleywiki.com/mediawiki/images/d/d3/Red_Snapper.png'),('Sandfish','Spring,Summer,Fall,Winter','Fishing','Desert, 6am - 8pm','Specialty Fish','https://stardewvalleywiki.com/mediawiki/images/b/bb/Sandfish.png'),('Sardine','Spring,Fall,Winter','Fishing','Ocean, 6am - 7pm','Ocean Fish','https://stardewvalleywiki.com/mediawiki/images/0/04/Sardine.png'),('Sea Urchin','Spring,Summer,Fall,Winter','Foraging','Beach','Dye','https://stardewvalleywiki.com/mediawiki/images/e/e7/Sea_Urchin.png'),('Shad','Spring,Summer,Fall','Fishing','River, Rainy, 9am - 2am','River Fish','https://stardewvalleywiki.com/mediawiki/images/e/ef/Shad.png'),('Shrimp','Spring,Summer,Fall,Winter','Fishing','Crab Pot in Saltwater','Crab Pot','https://stardewvalleywiki.com/mediawiki/images/9/91/Shrimp.png'),('Slime','Spring,Summer,Fall,Winter','Combat','Slimes','Adventurer','https://stardewvalleywiki.com/mediawiki/images/3/38/Slime.png'),('Snail','Spring,Summer,Fall,Winter','Fishing','Crab Pot in Freshwater','Crab Pot','https://stardewvalleywiki.com/mediawiki/images/d/d2/Snail.png'),('Snow Yam','Winter','Foraging','Tilling','Winter Foraging','https://stardewvalleywiki.com/mediawiki/images/3/3f/Snow_Yam.png'),('Solar Essence','Spring,Summer,Fall,Winter','Combat','Ghosts, Metal Heads, Haunted Skulls, Squid Kids','Adventurer','https://stardewvalleywiki.com/mediawiki/images/f/f4/Solar_Essence.png'),('Spice Berry','Summer','Foraging','Foraging, Fruit Bat Cave','Summer Foraging','https://stardewvalleywiki.com/mediawiki/images/c/c6/Spice_Berry.png'),('Stone','Spring,Summer,Fall,Winter','Mining','Mining','Construction','https://stardewvalleywiki.com/mediawiki/images/d/d4/Stone.png'),('Sturgeon','Summer,Winter','Fishing','Mountain Lake, 6am - 7pm','Lake Fish','https://stardewvalleywiki.com/mediawiki/images/4/42/Sturgeon.png'),('Sunfish','Spring,Summer','Fishing','River, Sunny, 6am - 7pm','River Fish','https://stardewvalleywiki.com/mediawiki/images/5/56/Sunfish.png'),('Sunflower','Summer,Fall','Farming','Crops','Dye','https://stardewvalleywiki.com/mediawiki/images/8/81/Sunflower.png'),('Sweet Pea','Summer','Foraging','Foraging','Summer Foraging','https://stardewvalleywiki.com/mediawiki/images/d/d9/Sweet_Pea.png'),('Tiger Trout','Fall,Winter','Fishing','River, 6am - 7pm','River Fish','https://stardewvalleywiki.com/mediawiki/images/0/01/Tiger_Trout.png'),('Tilapia','Summer,Fall','Fishing','Ocean, Ginger Island, 6am - 2pm','Ocean Fish','https://stardewvalleywiki.com/mediawiki/images/7/73/Tilapia.png'),('Tomato','Summer','Farming','Crops','Summer Crops','https://stardewvalleywiki.com/mediawiki/images/9/9d/Tomato.png'),('Truffle','Spring,Summer,Fall','Foraging','Pigs','Chef','https://stardewvalleywiki.com/mediawiki/images/f/f2/Truffle.png'),('Truffle Oil','Spring,Summer,Fall,Winter','Farming','Truffle in Oil Maker','Artisan','https://stardewvalleywiki.com/mediawiki/images/3/3d/Truffle_Oil.png'),('Tuna','Summer,Winter','Fishing','Ocean, Ginger Island, 6am - 7pm','Ocean Fish','https://stardewvalleywiki.com/mediawiki/images/c/c5/Tuna.png'),('Void Essence','Spring,Summer,Fall,Winter','Combat','Shadow Brutes, Shadow Shamans, Haunted Skulls, Serpents','Adventurer','https://stardewvalleywiki.com/mediawiki/images/1/1f/Void_Essence.png'),('Void Salmon','Spring,Summer,Fall,Winter','Fishing','Witch\'s Swamp','Missing','/voidsalmon.png'),('Walleye','Fall','Fishing','River, Mountain Lake, Forest Pond, Rainy, 12pm - 2am','Night Fishing','https://stardewvalleywiki.com/mediawiki/images/0/05/Walleye.png'),('Wheat','Summer,Fall','Farming','Crops','Fodder','https://stardewvalleywiki.com/mediawiki/images/e/e2/Wheat.png'),('Wild Horseradish','Spring','Foraging','Foraging','Spring Foraging','https://stardewvalleywiki.com/mediawiki/images/9/90/Wild_Horseradish.png'),('Wild Plum','Fall','Foraging','Foraging, Fruit Bat Cave','Fall Foraging','https://stardewvalleywiki.com/mediawiki/images/3/3b/Wild_Plum.png'),('Wine','Spring,Summer,Fall,Winter','Farming','Fruit in Keg','Enchanter','https://stardewvalleywiki.com/mediawiki/images/6/69/Wine.png'),('Wine','Spring,Summer,Fall,Winter','Farming','Wine in Cask','Missing','/wine.png'),('Winter Root','Winter','Foraging,Combat','Tilling, Blue Slimes','Winter Foraging','https://stardewvalleywiki.com/mediawiki/images/1/11/Winter_Root.png'),('Wood','Spring,Summer,Fall,Winter','Foraging','Chopping Trees, Buying from Robin','Construction','https://stardewvalleywiki.com/mediawiki/images/d/df/Wood.png'),('Woodskip','Spring,Summer,Fall,Winter','Fishing','Secret Woods','Specialty Fish','https://stardewvalleywiki.com/mediawiki/images/9/97/Woodskip.png'),('Wool','Spring,Summer,Fall,Winter','Farming','Sheep, Rabbits','Animal','https://stardewvalleywiki.com/mediawiki/images/3/34/Wool.png'),('Yam','Fall','Farming','Crops','Fall Crops','https://stardewvalleywiki.com/mediawiki/images/5/52/Yam.png');
/*!40000 ALTER TABLE `objects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-25 21:11:38
