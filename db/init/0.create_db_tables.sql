SET CHARSET utf8mb4;
SET CHARACTER_SET_CLIENT = utf8mb4;
SET CHARACTER_SET_CONNECTION = utf8mb4;
CREATE DATABASE `seminar` DEFAULT CHARACTER SET utf8mb4;
GRANT ALL PRIVILEGES ON `seminar`.* TO `seminar`@'%';
FLUSH PRIVILEGES;

use `seminar`;

-- seminar table
CREATE TABLE IF NOT EXISTS `seminars` (
  id INTEGER NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  instructor VARCHAR(255) NULL,
  description TEXT NULL,
  status TINYINT NULL DEFAULT 0,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NULL,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NULL,
  PRIMARY KEY (id)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

--  participants
CREATE TABLE IF NOT EXISTS `participants` (
  id INTEGER NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(64) NOT NULL,
  last_name VARCHAR(64) NOT NULL,
  first_kana VARCHAR(64) NULL,
  last_kana VARCHAR(64) NULL,
  birth_date DATE NULL,
  gender TINYINT NULL,
  school_name VARCHAR(255) NULL,
  school_year TINYINT NULL,
  notes TEXT NULL,
  status TINYINT NOT NULL DEFAULT 0,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NULL,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NULL,
  PRIMARY KEY (id)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

-- seminar participants
CREATE TABLE IF NOT EXISTS `seminar_participants` (
  id INTEGER NOT NULL AUTO_INCREMENT,
  seminar_id INTEGER NOT NULL,
  participant_id INTEGER NOT NULL,
  attendance TINYINT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NULL,
  PRIMARY KEY (id)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;


-- seminars
INSERT INTO `seminars`(`name`,`instructor`,`description`)VALUES("データベースエンジニアへの道","中島 正成","初心者からデータベースエンジニアを目指す講座です。");

-- participants
INSERT INTO `participants`(`first_name`,`last_name`,`first_kana`,`last_kana`)
VALUES("こっとん","採用戦隊","コットン","サイヨウセンタイ");
INSERT INTO `participants`(`first_name`,`last_name`,`first_kana`,`last_kana`)
VALUES("ゆきゆき","特攻隊長","ユキユキ","トッコウタイチョウ");

-- seminar paticipants
INSERT INTO `seminar_participants`(`seminar_id`,`participant_id`) VALUES(1,1);
INSERT INTO `seminar_participants`(`seminar_id`,`participant_id`) VALUES(1,2);

