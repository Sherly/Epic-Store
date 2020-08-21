/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : epic

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 06/12/2019 03:46:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bfd
-- ----------------------------
DROP TABLE IF EXISTS `bfd`;
CREATE TABLE `bfd`  (
  `id` int(11) NOT NULL,
  `game_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_lable` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bfd
-- ----------------------------
INSERT INTO `bfd` VALUES (1, 'Red Dead Redemption 2', 'Rockstar Games', '59.99', 'images/store/G1.png');
INSERT INTO `bfd` VALUES (2, 'Star Wars Jedi', 'Respawn Entertainment', '59.99', 'images/store/G2.png');
INSERT INTO `bfd` VALUES (3, 'MechWarrior 5 Mercenaries', 'Available ', '49.99', 'images/store/G3.png');
INSERT INTO `bfd` VALUES (4, 'Death Stranding', 'Available ', '59.99', 'images/store/G4.png');
INSERT INTO `bfd` VALUES (5, 'Zombie Army 4', 'Rockstar Games', '29.99', 'images/store/G5.png');

-- ----------------------------
-- Table structure for freegame
-- ----------------------------
DROP TABLE IF EXISTS `freegame`;
CREATE TABLE `freegame`  (
  `id` int(11) NOT NULL,
  `game_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_lable` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of freegame
-- ----------------------------
INSERT INTO `freegame` VALUES (1, 'Rayman Legends', 'Free Now', 'Free Now', 'images/free/free1.png');
INSERT INTO `freegame` VALUES (2, 'Jotun Valhalla', 'Free Dec', 'COMING SOON', 'images/free/free2.png');

-- ----------------------------
-- Table structure for games
-- ----------------------------
DROP TABLE IF EXISTS `games`;
CREATE TABLE `games`  (
  `id` int(11) NOT NULL,
  `game_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of games
-- ----------------------------
INSERT INTO `games` VALUES (0, 'Phantom Brigade', 'Brace Yourself Games', 'Coming Soon', 'images/store/G1.png');
INSERT INTO `games` VALUES (1, 'Super Meat Boy Forever', 'Team Meat', 'Coming Soon', 'images/store/G2.png');
INSERT INTO `games` VALUES (2, 'Industries of Titan', 'Brace Yourself Games', 'Coming Soon', 'images/store/G3.png');
INSERT INTO `games` VALUES (3, 'Tom Clancy\'s Rainbow Six Quarantine', 'Ubisoft', 'Coming Soon', 'images/store/G4.png');
INSERT INTO `games` VALUES (4, 'Arise: A Simple Story', 'Piccolo  Techland', '19.99', 'images/store/G5.png');
INSERT INTO `games` VALUES (5, 'Rayman Legends', 'Ubisoft', 'Free', 'images/store/G6.png');
INSERT INTO `games` VALUES (6, 'Bad North', 'Concept  Raw Fury', '14.99', 'images/store/G7.png');
INSERT INTO `games` VALUES (7, 'Shenmue III', 'YsNet  Deep Silver', '49.99', 'images/store/G8.png');
INSERT INTO `games` VALUES (8, 'The Messenger', 'Sabotage Studios', '19.99', 'images/store/G9.png');
INSERT INTO `games` VALUES (9, 'Star Wars Jedi: Fallen Order', 'Electronic Arts', '59.99', 'images/store/G10.png');
INSERT INTO `games` VALUES (10, 'Death Stranding', 'Available ', '59.99', 'images/store/G11.png');
INSERT INTO `games` VALUES (11, 'Solar Ash', 'Heart Machine', 'Coming Soon', 'images/store/G12.png');
INSERT INTO `games` VALUES (12, 'CastleStorm2', 'Zen Studios', 'Coming Soon', 'images/store/G13.png');
INSERT INTO `games` VALUES (13, 'ABZU', 'Giant Squid', '16.99', 'images/store/G14.png');
INSERT INTO `games` VALUES (14, 'The End is Nigh', 'Edmund', '27.99', 'images/store/G15.png');
INSERT INTO `games` VALUES (15, 'Inside', 'Playdead', '34.99', 'images/store/G16.png');
INSERT INTO `games` VALUES (16, 'Auto Chess', 'Dragonest', '39.99', 'images/store/G17.png');
INSERT INTO `games` VALUES (17, 'Kine', 'Gwen Frey', '19.99', 'images/store/G18.png');
INSERT INTO `games` VALUES (18, 'LEGO Batman', 'Traveller\'s', '19.99', 'images/store/G19.png');
INSERT INTO `games` VALUES (19, 'The Jackbox', 'Jackbox Games', '29.99', 'images/store/G20.png');

-- ----------------------------
-- Table structure for lunbo
-- ----------------------------
DROP TABLE IF EXISTS `lunbo`;
CREATE TABLE `lunbo`  (
  `id` int(11) NOT NULL,
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lunbo
-- ----------------------------
INSERT INTO `lunbo` VALUES (1, 'images/lunbo/lunbo1.png');
INSERT INTO `lunbo` VALUES (2, 'images/lunbo/lunbo2.png');
INSERT INTO `lunbo` VALUES (3, 'images/lunbo/lunbo3.png');

-- ----------------------------
-- Table structure for newreleases
-- ----------------------------
DROP TABLE IF EXISTS `newreleases`;
CREATE TABLE `newreleases`  (
  `id` int(11) NOT NULL,
  `game_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_lable` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of newreleases
-- ----------------------------
INSERT INTO `newreleases` VALUES (1, 'Phoenix Point', 'Snapshot Games', '39.99', 'images/store/G6.png');
INSERT INTO `newreleases` VALUES (2, 'Arise: A Simple Story', 'Piccolo  Techland', '19.99', 'images/store/G7.png');
INSERT INTO `newreleases` VALUES (3, 'Shenmue III', 'YsNet  Deep Silver', '49.99', 'images/store/G8.png');
INSERT INTO `newreleases` VALUES (4, 'Star Wars Jedi: Fallen Order', 'Electronic Arts', '59.99', 'images/store/G9.png');
INSERT INTO `newreleases` VALUES (5, 'Battle Breakers', 'Epic Games', 'Free', 'images/store/G10.png');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'luosao', '123');
INSERT INTO `users` VALUES (2, 'ls', '12');

SET FOREIGN_KEY_CHECKS = 1;
