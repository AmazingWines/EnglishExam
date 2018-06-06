/*
Navicat MySQL Data Transfer

Source Server         : asda
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : english

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2017-06-27 17:01:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for exam
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `examId` int(11) NOT NULL AUTO_INCREMENT,
  `writting_pageId` int(11) DEFAULT NULL,
  `listen_pageId` int(11) DEFAULT NULL,
  `word_pageId` int(11) DEFAULT NULL,
  `read_pageId` int(11) DEFAULT NULL,
  `translate_pageId` int(11) DEFAULT NULL,
  PRIMARY KEY (`examId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES ('1', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for listen
-- ----------------------------
DROP TABLE IF EXISTS `listen`;
CREATE TABLE `listen` (
  `listenId` int(11) NOT NULL AUTO_INCREMENT,
  `listenType` int(255) DEFAULT NULL,
  `listenSelect_1` varchar(255) DEFAULT NULL,
  `listenSelect_2` varchar(255) DEFAULT NULL,
  `listenSelect_3` varchar(255) DEFAULT NULL,
  `listenSelect_4` varchar(255) DEFAULT NULL,
  `listenCorrect` varchar(255) NOT NULL,
  `listen_pageId` int(11) NOT NULL,
  `mark` int(11) DEFAULT NULL,
  PRIMARY KEY (`listenId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of listen
-- ----------------------------
INSERT INTO `listen` VALUES ('1', '1', 'A. It was dangerous to live in.', 'B. It was going to be renovated.', 'C. He could no longer pay the rent.', 'D. He had sold it to the royal family.', 'A', '1', '2');
INSERT INTO `listen` VALUES ('2', '2', 'A. A strike.', 'B. A storm.', 'C. A forest fire.', 'D. A terrorist attack.', 'B', '1', '2');
INSERT INTO `listen` VALUES ('3', '3', 'A. They lost contact with the emergency department.', 'B. They were trapped in an underground elevator.', 'C. They were injured by suddenly falling rocks.', 'D. They sent calls for help via a portable radio.', 'B', '1', '2');
INSERT INTO `listen` VALUES ('4', '4', 'A. They tried hard to repair the elevator.', 'B. They released the details of the accident.', 'C. They sent supplies to keep the miners warm.', 'D. They provided the miners with food and water.', 'C', '1', '2');
INSERT INTO `listen` VALUES ('5', '5', 'A. Raise postage rates.', 'B. Improve its services.', 'C. Redesign delivery routes.', 'D. Close some of its post offices.', 'D', '1', '2');
INSERT INTO `listen` VALUES ('6', '6', 'A. Shortening business hours.', 'B. Closing offices on holidays.', 'C. Stopping mail delivery on Saturdays.', 'D. Computerizing mall sorting processes.', 'C', '1', '2');
INSERT INTO `listen` VALUES ('7', '7', 'A. Many post office staff will lose their jobs.', 'B. Many people will begin to complain.', 'C. Taxpayers will be very pleased.', 'D. A lot of controversy will arise.', 'A', '1', '2');
INSERT INTO `listen` VALUES ('8', '8', 'A. He will be kept from promotion.', 'B. He will go through retraining.', 'C. He will be given a warning.', 'D. He will lose part of his pay.', 'D', '1', '2');
INSERT INTO `listen` VALUES ('9', '9', 'A. He is always on time.', 'B. He is a trustworthy guy.', 'C. He is an experienced press operator.', 'D. He is on good terms with his workmates.', 'B', '1', '2');
INSERT INTO `listen` VALUES ('10', '10', 'A. She is a trade union representative.', 'B. She is in charge of public relations.', 'C. She is a senior manager of the shop.', 'D. She is better at handling such matters.', 'D', '1', '2');
INSERT INTO `listen` VALUES ('11', '11', 'A. He is skilled and experienced.', 'B. He is very close to the manager.', 'C. He is always trying to stir up trouble.', 'D. He is always complaining about low wages.', 'C', '1', '2');
INSERT INTO `listen` VALUES ('12', '12', 'A. Open.\r\n', 'B. Friendly.', 'C. Selfish.', 'D. Reserved.', 'D', '1', '2');
INSERT INTO `listen` VALUES ('13', '13', 'A. They stay quiet.', 'B. They read a book.', 'C. They talk about the weather.', 'D. They chat with fellow passengers.', 'A', '1', '2');
INSERT INTO `listen` VALUES ('14', '14', 'A. She was always treated as a foreigner.', 'B. She was eager to visit an English castle.', 'C. She was never invited to a colleague\'s home.', 'D. She was unwilling to make friends with workmates.', 'C', '1', '2');
INSERT INTO `listen` VALUES ('15', '15', 'A. Houses are much more quiet.', 'B. Houses provide more privacy.', 'C. They want to have more space.', 'D. They want a garden of their own.', 'B', '1', '2');
INSERT INTO `listen` VALUES ('16', '16', 'A. They don\'t have much choice of jobs.', 'B. They are likely to get much higher pay.', 'C. They don\'t have to go through job interviews.', 'D. They will automatically be given hiring priority.', 'D', '1', '2');
INSERT INTO `listen` VALUES ('17', '17', 'A. Ask their professors for help.', 'B. Look at school bulletin boards.', 'C. Visit the school careers service.', 'D. Go through campus newspapers.', 'C', '1', '2');
INSERT INTO `listen` VALUES ('18', '18', 'A. Helping students find the books and journals they need.', 'B. Supervising study spaces to ensure a quiet atmosphere.', 'C. Helping students arrange appointments with librarians.', 'D. Providing students with information about the library.', 'B', '1', '2');
INSERT INTO `listen` VALUES ('19', '19', 'A. It tastes better.', 'B. It is easier to grow.', 'C. It may be sold at a higher price.', 'D. It can better survive extreme weathers.', 'C', '1', '2');
INSERT INTO `listen` VALUES ('20', '20', 'A. It is healthier than green tea.', 'B. It can grow in drier soil.', 'C. It will replace green tea one day.', 'D. It is immune to various diseases.', 'A', '1', '2');
INSERT INTO `listen` VALUES ('21', '21', 'A. It has been well received by many tea drinkers.', '\r\n\r\nB. It does not bring the promised health benefits.', 'C. It has made tea farmers\' life easier.', 'D. It does not have a stable market.', 'D', '1', '2');
INSERT INTO `listen` VALUES ('22', '22', 'A. They need decorations to show their status.', '\r\n\r\nB. They prefer unique objects of high quality.', 'C. They decorate their homes themselves.', 'D. They care more about environment.', 'B', '1', '2');
INSERT INTO `listen` VALUES ('23', '23', 'A. They were proud of their creations.', 'B. They could only try to create at night.', 'C. They made great contributions to society.', 'D. They focused on the quality of their products.', 'B', '1', '2');
INSERT INTO `listen` VALUES ('24', '24', 'A. Make wise choices.', 'B. Identify fake crafts.', 'C. Design handicrafts themselves.', 'D. Learn the importance of creation.', 'A', '1', '2');
INSERT INTO `listen` VALUES ('25', '25', 'A. To boost the local economy.', 'B. To attract foreign investments.', 'C. To arouse public interest in crafts.', 'D. To preserve the traditional culture.', 'A', '1', '2');

-- ----------------------------
-- Table structure for listendo
-- ----------------------------
DROP TABLE IF EXISTS `listendo`;
CREATE TABLE `listendo` (
  `listendoId` int(11) NOT NULL AUTO_INCREMENT,
  `listenType` int(11) DEFAULT NULL,
  `listen_pageId` int(11) DEFAULT NULL,
  `doselect` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`listendoId`)
) ENGINE=InnoDB AUTO_INCREMENT=551 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of listendo
-- ----------------------------
INSERT INTO `listendo` VALUES ('526', '1', '1', 'L', '1');
INSERT INTO `listendo` VALUES ('527', '2', '1', '', '1');
INSERT INTO `listendo` VALUES ('528', '3', '1', '', '1');
INSERT INTO `listendo` VALUES ('529', '4', '1', '', '1');
INSERT INTO `listendo` VALUES ('530', '5', '1', '', '1');
INSERT INTO `listendo` VALUES ('531', '6', '1', '', '1');
INSERT INTO `listendo` VALUES ('532', '7', '1', '', '1');
INSERT INTO `listendo` VALUES ('533', '8', '1', '', '1');
INSERT INTO `listendo` VALUES ('534', '9', '1', '', '1');
INSERT INTO `listendo` VALUES ('535', '10', '1', '', '1');
INSERT INTO `listendo` VALUES ('536', '11', '1', '', '1');
INSERT INTO `listendo` VALUES ('537', '12', '1', '', '1');
INSERT INTO `listendo` VALUES ('538', '13', '1', '', '1');
INSERT INTO `listendo` VALUES ('539', '14', '1', '', '1');
INSERT INTO `listendo` VALUES ('540', '15', '1', '', '1');
INSERT INTO `listendo` VALUES ('541', '16', '1', '', '1');
INSERT INTO `listendo` VALUES ('542', '17', '1', '', '1');
INSERT INTO `listendo` VALUES ('543', '18', '1', '', '1');
INSERT INTO `listendo` VALUES ('544', '19', '1', '', '1');
INSERT INTO `listendo` VALUES ('545', '20', '1', '', '1');
INSERT INTO `listendo` VALUES ('546', '21', '1', '', '1');
INSERT INTO `listendo` VALUES ('547', '22', '1', '', '1');
INSERT INTO `listendo` VALUES ('548', '23', '1', '', '1');
INSERT INTO `listendo` VALUES ('549', '24', '1', '', '1');
INSERT INTO `listendo` VALUES ('550', '25', '1', '', '1');

-- ----------------------------
-- Table structure for listen_page
-- ----------------------------
DROP TABLE IF EXISTS `listen_page`;
CREATE TABLE `listen_page` (
  `listen_pageId` int(11) NOT NULL AUTO_INCREMENT,
  `listen_pageName` varchar(255) DEFAULT NULL,
  `listen_summary` varchar(255) DEFAULT NULL,
  `listenUrl` varchar(255) DEFAULT NULL,
  `listen_pageType` int(255) DEFAULT NULL,
  PRIMARY KEY (`listen_pageId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of listen_page
-- ----------------------------
INSERT INTO `listen_page` VALUES ('1', '听力专项训练一', '测试的，随便打一堆文字凑凑字数', '/static/1.mp3', '1');
INSERT INTO `listen_page` VALUES ('2', '全国大学生四级训练练习一', '测试的，全国大学生四级训练测试试题，全国大学英语四级，请问你过了吗？没过，来练习一下吧，真的没关系，多练习估计你就会了，说真的，我打这么一堆真的是为了测试', null, '2');
INSERT INTO `listen_page` VALUES ('3', '听力提升训练二', '测试的，随便打一堆文字凑凑字数，测试的，随便打一堆文字凑凑字数，测试的，随便打一堆文字凑凑字数', null, '2');
INSERT INTO `listen_page` VALUES ('4', '听力提升训练三', '测试的，随便打一堆文字凑凑字数', null, '2');
INSERT INTO `listen_page` VALUES ('5', '听力专项训练一', '这个也是随便打打的，测试一下能不能上传', 'F:\\Java_demo\\english\\src\\main\\webapp\\WEB-INF\\upload\\20170427030006.png', '1');

-- ----------------------------
-- Table structure for page
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `pageId` int(11) NOT NULL,
  `pageName` varchar(255) DEFAULT NULL,
  `pageType` int(11) DEFAULT NULL,
  `pageDescribed` varchar(255) DEFAULT NULL,
  `questionStatus` int(255) DEFAULT NULL,
  `questionType` int(255) DEFAULT NULL,
  `averageMark` int(255) DEFAULT NULL,
  `answerAmount` int(255) DEFAULT NULL,
  `quoteAmount` int(255) DEFAULT NULL,
  `pageDifficuty` int(255) DEFAULT NULL,
  PRIMARY KEY (`pageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of page
-- ----------------------------

-- ----------------------------
-- Table structure for read
-- ----------------------------
DROP TABLE IF EXISTS `read`;
CREATE TABLE `read` (
  `readId` int(11) NOT NULL AUTO_INCREMENT,
  `readNum` int(11) DEFAULT NULL,
  `readQuestion` varchar(255) DEFAULT NULL,
  `readSelect_1` varchar(255) DEFAULT NULL,
  `readSelect_2` varchar(255) DEFAULT NULL,
  `readSelect_3` varchar(255) DEFAULT NULL,
  `readSelect_4` varchar(255) DEFAULT NULL,
  `readCorrect` varchar(255) DEFAULT NULL,
  `read_pageId` int(11) DEFAULT NULL,
  `read_mark` int(255) DEFAULT NULL,
  PRIMARY KEY (`readId`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of read
-- ----------------------------
INSERT INTO `read` VALUES ('1', '36', 'The more recent steep climb in grain prices partly results from the fact that more and more people want to consume meat products.', null, null, null, null, 'F', '1', '2');
INSERT INTO `read` VALUES ('2', '37', 'Social order is breaking down in many countries because of food shortages.', null, null, null, null, 'K', '1', '2');
INSERT INTO `read` VALUES ('3', '38', 'Rather than superpower conflict, countries unable to cope with food shortages now constitute the main threat to world security.', null, null, null, null, 'C', '1', '2');
INSERT INTO `read` VALUES ('4', '39', 'Some parts of the world have seen successful implementation of family planning.', null, null, null, null, 'L', '1', '2');
INSERT INTO `read` VALUES ('5', '40', 'The author has come to agree that food shortages could ultimately lead to the collapse of world civilization.', null, null, null, null, 'B', '1', '2');
INSERT INTO `read` VALUES ('6', '41', 'Increasing water shortages prove to be the biggest obstacle to boosting the world\'s grain production.', null, null, null, null, 'H', '1', '2');
INSERT INTO `read` VALUES ('7', '42', 'The cost for saving our civilization would be considerably less than the world’s current military spending.', null, null, null, null, 'M', '1', '2');
INSERT INTO `read` VALUES ('8', '43', 'To lower domestic food prices, some countries limited or stopped their grain exports.', null, null, null, null, 'J', '1', '2');
INSERT INTO `read` VALUES ('9', '44', 'Environmental problems must be solved to ease the current global food shortage.', null, null, null, null, 'L', '1', '2');
INSERT INTO `read` VALUES ('10', '45', 'A quarter of this year\'s American grain harvest will be used to produce bio-fuel for cars.', null, null, null, null, 'G', '1', '2');
INSERT INTO `read` VALUES ('11', '46', 'What does the author say about present-day universities?', 'A. They are effectively tackling real or imagined problems.', 'B. They often fail to combine teaching with research.', 'C. They are over-burdened with administrative staff.', 'D. They lack talent to fix their deepening problems.', 'C', '1', '2');
INSERT INTO `read` VALUES ('12', '47', 'What does the author imply about the classes at present?', 'A. They facilitate students\' independent learning.', 'B. They help students form closer relationships.', 'C. They have more older students than before.', 'D. They are much bigger than is desirable.', 'A', '1', '2');
INSERT INTO `read` VALUES ('13', '48', 'According to the author, what kind of people do universities lack most?', 'A. Good classroom teachers.', 'B. Efficient administrators.', 'C. Talented researchers.', 'D. Motivated students.', 'D', '1', '2');
INSERT INTO `read` VALUES ('14', '49', ' What does the author think of teaching ability?', 'A. It requires talent and practice.', 'B. It is closely related to research.', 'C. It is a chief factor affecting students\' learning.', 'D. It can be acquired through persistent practice.', 'A', '1', '2');
INSERT INTO `read` VALUES ('15', '50', 'What is the author\'s suggestion for improving university teaching?', 'A. Creating an environment for teachers to share their teaching experiences.', 'B. Hiring more classroom teachers and allowing them to teach in their own way.', 'C. Using high technology in classrooms and promoting exchange of information.', 'D. Cutting down meetings and encouraging administrative staff to go to classrooms.', 'B', '1', '2');
INSERT INTO `read` VALUES ('16', '51', 'What do we learn about McDonald\'s inclusion of toys in its Happy Meals?', 'A. It may shed light on people\'s desire to crack a secret.', 'B. It has proved to be key to McDonald\'s business success.', 'C. It appeals to kid\'s curiosity to find out what is hidden inside.', 'D. It may be a pleasant way for kids to reduce their food intake.', 'D', '1', '2');
INSERT INTO `read` VALUES ('17', '52', 'What is the finding of the researchers led by Martin Reimann?', 'A. Reducing food intake is not that difficult if people go to McDonald\'s more.', 'B. Most kids and adults don\'t actually feel hungry when they eat half of their meal.', 'C. Eating a smaller portion of food does good to the health of kids and adults alike.', 'D. Most kids and adults would choose a smaller meal that came with a non-food item.', 'D', '1', '2');
INSERT INTO `read` VALUES ('18', '53', 'What is most interesting in Martin Reimann\'s finding?', 'A. Kids preferred an award in the form of money to one in the form of a toy.', 'B. Adults chose the smaller portion on the mere promise of a future award.', 'C. Both kids and adults felt satisfied with only half of their meal portions.', 'D. Neither children nor adults could resist the temptation of a free toy.', 'B', '1', '2');
INSERT INTO `read` VALUES ('19', '54', 'How does Martin Reimann interpret his finding?', 'A. The emotional component of the prizes is at work.', 'B. People now care more about quality than quantity.', 'C. People prefer certainty awards to possible awards.', 'D. The desire for a future reward is overwhelming.', 'A', '1', '2');
INSERT INTO `read` VALUES ('20', '55', 'What can we infer from Martin Reimann\'s finding?', 'A. People should eat much less if they wish to stay healthy and happy.', 'B. More fast food restaurants are likely to follow McDonald\'s example.', 'C. We can lead people to eat less while helping the restaurant business.', 'D. More studies are needed to find out the impact of emotion on behavior.', 'C', '1', '2');
INSERT INTO `read` VALUES ('21', '36', 'According to Chinese officials, their activities in Antarctica lay greater emphasis on scientific research.', null, null, null, null, 'J', '2', '2');
INSERT INTO `read` VALUES ('22', '37', 'Efforts to create one of the world’s largest ocean sanctuaries failed because of Russia’s obstruction.', null, null, null, null, 'C', '2', '2');
INSERT INTO `read` VALUES ('23', '38', 'With several monitoring stations operating in Antarctica, Russia is trying hard to counter America’s dominance in the field of worldwide navigational facilities.', null, null, null, null, 'E', '2', '2');
INSERT INTO `read` VALUES ('24', '39', 'According to geologists’ estimates. Antarctica has enormous reserves of oil and natural gas.', null, null, null, null, 'G', '2', '2');
INSERT INTO `read` VALUES ('25', '40', 'It is estimated that Antarctica boasts of the richest reserves of fresh water on earth.', null, null, null, null, 'D', '2', '2');
INSERT INTO `read` VALUES ('26', '41', 'The demand for energy resources may compel renegotiation of Antarctica’s treaties before their expiration.', null, null, null, null, 'I', '2', '2');
INSERT INTO `read` VALUES ('27', '42', 'Many countries are racing against each other to increase their business and strategic influence on Antarctica.', null, null, null, null, 'B', '2', '2');
INSERT INTO `read` VALUES ('28', '43', 'Antarctica’s harsh natural conditions constitute huge obstacles to the exploitation of its resources.', null, null, null, null, 'H', '2', '2');
INSERT INTO `read` VALUES ('29', '44', 'With competition from many countries, Antarctica is no longer dominated by the traditional white nations.', null, null, null, null, 'Q', '2', '2');
INSERT INTO `read` VALUES ('30', '45', 'American scientists complain about lack of sufficient money and equipment for their expansion in Antarctica.', null, null, null, null, 'L', '2', '2');
INSERT INTO `read` VALUES ('31', '46', 'What do chain smokers think of cigarette packaging?', 'A) Fancy packaging can help to engage new smokers.', 'B) It has little to do with the quality or taste of cigarettes.', 'C) Plain packaging discourages non-smokers from taking up smoking.', 'D) It has little impact on their decision whether or not to quit smoking.', 'D', '2', '2');
INSERT INTO `read` VALUES ('32', '47', 'What has the UK government agreed to do concerning tobacco packaging?', 'A) Pass a law to standardise cigarette packaging.', 'B) Rid cigarette cartons of all advertisements.', 'C) Subsidise companies to adopt plain packaging.', 'D) Reclassify cigarettes according to packaging.', 'A', '2', '2');
INSERT INTO `read` VALUES ('33', '48', 'What has happened in Australia where plain packaging is implemented?', 'A) Premature death rates resulting from smoking have declined.', 'B) The number of smokers has dropped more sharply than in the UK.', 'C) The sales of tobacco substitutes have increased considerably.', 'D) Cigarette sales have been falling far more quickly than in the UK.', 'B', '2', '2');
INSERT INTO `read` VALUES ('34', '49', 'Why it taken so long for the UK government to consider plain packaging?', 'A) Prime Minister Cameron has been reluctant to take action.', 'B) There is strong opposition from veteran nicotine addicts.', 'C) Many Members of Parliament are addicted to smoking.', 'D) Pressure from tobacco manufacturers remains strong.', 'A', '2', '2');
INSERT INTO `read` VALUES ('35', '50', 'What did Cameron say about chocolate oranges at supermarket checkouts?', 'A) They fueled a lot of controversy.', 'B) They made more British people obese.', 'C) They attracted a lot of smokers.', 'D) They had certain ingredients missing.', 'C', '2', '2');
INSERT INTO `read` VALUES ('36', '51', 'What is the author’s opinion of going to university?', 'A) It is worthwhile after all.', 'B) It is simply a waste of time.', 'C) It is hard to say whether it is good or bad.', 'D) It is too expensive for most young people.', 'A', '2', '2');
INSERT INTO `read` VALUES ('37', '52', 'What does the author say about the employment situation of British university graduates?', 'A) Few of them are satisfied with the jobs they are offered.', 'B) It usually takes a long time for them to find a decent job.', 'C) Graduates from elite universities usually can get decent jobs.', 'D) Most of them take jobs which don’t require a college degree.', 'D', '2', '2');
INSERT INTO `read` VALUES ('38', '53', 'What does the author say is important for university students besides classroom instruction?', 'A) Making sure to obtain an upper-second class degree.', 'B) Practical skills they will need in their future careers.', 'C) Interactions among themselves outside the classroom.', 'D) Developing independent and creative thinking abilities.', 'C', '2', '2');
INSERT INTO `read` VALUES ('39', '54', 'What is said to be an advantage of going to university?', 'A) Learning how to take risks in an ever-changing world.', 'B) Meeting people who will be helpful to you in the future.', 'C) Having opportunities of playing a leading role in society.', 'D) Gaining up-to-date knowledge in science and technology.', 'B', '2', '2');
INSERT INTO `read` VALUES ('40', '55', 'What can we infer from the last paragraph?', 'A) It is natural for students to make complaints about university education.', 'B) Few students are willing to bear the burden of debt incurred at university.', 'C) University education is becoming attractive to students who can afford it.', 'D) The prestige of the university influences employers’ recruitment decisions.', 'D', '2', '2');

-- ----------------------------
-- Table structure for readdo
-- ----------------------------
DROP TABLE IF EXISTS `readdo`;
CREATE TABLE `readdo` (
  `readdoId` int(11) NOT NULL AUTO_INCREMENT,
  `readdoNum` int(11) DEFAULT NULL,
  `readdoSelect` varchar(255) DEFAULT NULL,
  `read_pageId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`readdoId`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of readdo
-- ----------------------------
INSERT INTO `readdo` VALUES ('51', '36', 'C', '1', '1');
INSERT INTO `readdo` VALUES ('52', '37', 'C', '1', '1');
INSERT INTO `readdo` VALUES ('53', '38', 'C', '1', '1');
INSERT INTO `readdo` VALUES ('54', '39', 'C', '1', '1');
INSERT INTO `readdo` VALUES ('55', '40', 'C', '1', '1');
INSERT INTO `readdo` VALUES ('56', '41', 'C', '1', '1');
INSERT INTO `readdo` VALUES ('57', '42', 'C', '1', '1');
INSERT INTO `readdo` VALUES ('58', '43', 'C', '1', '1');
INSERT INTO `readdo` VALUES ('59', '44', 'C', '1', '1');
INSERT INTO `readdo` VALUES ('60', '45', 'C', '1', '1');
INSERT INTO `readdo` VALUES ('61', '46', 'C', '1', '1');
INSERT INTO `readdo` VALUES ('62', '47', 'C', '1', '1');
INSERT INTO `readdo` VALUES ('63', '48', 'C', '1', '1');
INSERT INTO `readdo` VALUES ('64', '49', 'C', '1', '1');
INSERT INTO `readdo` VALUES ('65', '50', 'C', '1', '1');
INSERT INTO `readdo` VALUES ('66', '51', 'C', '1', '1');
INSERT INTO `readdo` VALUES ('67', '52', 'C', '1', '1');
INSERT INTO `readdo` VALUES ('68', '53', 'C', '1', '1');
INSERT INTO `readdo` VALUES ('69', '54', 'C', '1', '1');
INSERT INTO `readdo` VALUES ('70', '55', 'C', '1', '1');
INSERT INTO `readdo` VALUES ('71', '36', '', '2', '1');
INSERT INTO `readdo` VALUES ('72', '37', '', '2', '1');
INSERT INTO `readdo` VALUES ('73', '38', '', '2', '1');
INSERT INTO `readdo` VALUES ('74', '39', '', '2', '1');
INSERT INTO `readdo` VALUES ('75', '40', '', '2', '1');
INSERT INTO `readdo` VALUES ('76', '41', '', '2', '1');
INSERT INTO `readdo` VALUES ('77', '42', '', '2', '1');
INSERT INTO `readdo` VALUES ('78', '43', '', '2', '1');
INSERT INTO `readdo` VALUES ('79', '44', '', '2', '1');
INSERT INTO `readdo` VALUES ('80', '45', '', '2', '1');
INSERT INTO `readdo` VALUES ('81', '46', '', '2', '1');
INSERT INTO `readdo` VALUES ('82', '47', '', '2', '1');
INSERT INTO `readdo` VALUES ('83', '48', '', '2', '1');
INSERT INTO `readdo` VALUES ('84', '49', '', '2', '1');
INSERT INTO `readdo` VALUES ('85', '50', '', '2', '1');
INSERT INTO `readdo` VALUES ('86', '51', '', '2', '1');
INSERT INTO `readdo` VALUES ('87', '52', '', '2', '1');
INSERT INTO `readdo` VALUES ('88', '53', '', '2', '1');
INSERT INTO `readdo` VALUES ('89', '54', '', '2', '1');
INSERT INTO `readdo` VALUES ('90', '55', '', '2', '1');

-- ----------------------------
-- Table structure for read_page
-- ----------------------------
DROP TABLE IF EXISTS `read_page`;
CREATE TABLE `read_page` (
  `read_pageId` int(11) NOT NULL AUTO_INCREMENT,
  `read_pageName` varchar(255) DEFAULT NULL,
  `read_pageSummary` varchar(255) DEFAULT NULL,
  `read_pageType` int(11) DEFAULT NULL,
  PRIMARY KEY (`read_pageId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of read_page
-- ----------------------------
INSERT INTO `read_page` VALUES ('1', '阅读两则专项训练一', '2016年12月英语四级阅读真题及答案 第3套 仔细阅读2篇', '1');
INSERT INTO `read_page` VALUES ('2', '阅读提升训练一', '2016年12月英语六级阅读真题', '2');

-- ----------------------------
-- Table structure for read_page_title
-- ----------------------------
DROP TABLE IF EXISTS `read_page_title`;
CREATE TABLE `read_page_title` (
  `readTitleId` int(11) NOT NULL AUTO_INCREMENT,
  `readTitleNum` int(11) DEFAULT NULL,
  `readTitle` text,
  `read_pageId` int(11) DEFAULT NULL,
  PRIMARY KEY (`readTitleId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of read_page_title
-- ----------------------------
INSERT INTO `read_page_title` VALUES ('1', '1', '<p>Could Food Shortages Bring Down Civilization?</p>\r\n<p>[A] For many years I have studied global agricultural, population, environmental and economic trends and their interactions. The combined effects of those trends and the political tensions they generate point to the breakdown of governments and societies. Yet I, too, have resisted the idea that food shortages could bring down not only individual governments but also our global civilization.</p>\r\n<p>[B] I can no longer ignore that risk. Our continuing failure to deal with the environmental declines that are undermining the world food economy forces me to conclude that such a collapse is possible.</p>\r\n<p>[C] As demand for food rises faster than supplies are growing, the resulting food-price inflation puts severe stress on the governments of many countries. Unable to buy grain or grow their own, hungry people take to the streets. Indeed, even before the steep climb in grain prices in 2008, the number of failing states was expanding. If the food situation continues to worsen, entire nations will break down at an ever increasing rate. In the 20th century the main threat to international security was superpower conflict; today it is failing states.</p>\r\n<p>[D] States fail when national governments can no longer provide personal security, food security and basic social services such as education and health care. When governments lose their control on power, law and order begin to disintegrate. After a point, countries can become so dangerous that food relief workers are no longer safe and their programs are halted. Failing states are of international concern because they are a source of terrorists, drugs, weapons and refugees (难民), threatening political stability everywhere.</p>\r\n<p>[E] The surge in world grain prices in 2007 and 2008—and the threat they pose to food security—has a different, more troubling quality than the increases of the past. During the second half of the 20th century, grain prices rose dramatically several times. In 1972, for instance, the Soviets, recognizing their poor harvest early, quietly cornered the world wheat market. As a result, wheat prices elsewhere more than doubled, pulling rice and corn prices up with them. But this and other price shocks were event-driven—drought in the Soviet Union, crop-shrinking heat in the U.S. Corn Belt. And the rises were short-lived: prices typically returned to normal with the next harvest.</p>\r\n<p>[F] In contrast, the recent surge in world grain prices is trend-driven, making it unlikely to reverse without a reversal in the trends themselves. On the demand side, those trends include the ongoing addition of more than 70 million people a year, a growing number of people wanting to move up the food chain to consume highly grain-intensive meat products, and the massive diversion (转向) of U.S. grain to the production of bio-fuel.</p>\r\n<p>[G] As incomes rise among low-income consumers, the potential for further grain consumption is huge. But that potential pales beside the never-ending demand for crop-based fuels. A fourth of this year\'s U.S. grain harvest will go to fuel cars.</p>\r\n<p>[H] What about supply? The three environmental trends—the shortage of fresh water, the loss of topsoil and the rising temperatures—are making it increasingly hard to expand the world\'s grain supply fast enough to keep up with demand. Of all those trends, however, the spread of water shortages poses the most immediate threat. The biggest challenge here is irrigation, which consumes 70% of the world\'s fresh water. Millions of irrigation wells in many countries are now pumping water out of underground sources faster than rainfall can refill them. The result is falling water tables (地下水位) in countries with half the world\'s people, including the three big grain producers—China, India and the U.S.</p>\r\n<p>[I] As water tables have fallen and irrigation wells have gone dry, China\'s wheat crop, the world\'s largest, has declined by 8% since it peaked at 123 million tons in 1997. But water shortages are even more worrying in India. Millions of irrigation wells have significantly lowered water tables in almost every state.</p>\r\n<p>[J] As the world\'s food security falls to pieces, individual countries acting in their own self-interest are actually worsening the troubles of many. The trend began in 2007, when leading wheat-exporting countries such as Russia and Argentina limited or banned their exports, in hopes of increasing local food supplies and thereby bringing down domestic food prices. Vietnam banned its exports for several months for the same reason. Such moves may eliminate the fears of those living in the exporting countries, but they are creating panic in importing countries that must rely on what is then left for export.</p>\r\n<p>[K] In response to those restrictions, grain-importing countries are trying to nail down long-term trade agreements that would lock up future grain supplies. Food-import anxiety is even leading to new efforts by food-importing countries to buy or lease farmland in other countries. In spite of such temporary measures, soaring food prices and spreading hunger in many other countries are beginning to break down the social order.</p>\r\n<p>[L] Since the current world food shortage is trend-driven, the environmental trends that cause it must be reversed. We must cut carbon emissions by 80% from their 2006 levels by 2020, stabilize the world\'s population at eight billion by 2040, completely remove poverty, and restore forests and soils. There is nothing new about the four objectives. Indeed, we have made substantial progress in some parts of the world on at least one of these—the distribution of family-planning services and the associated shift to smaller families.</p>\r\n<p>[M] For many in the development community, the four objectives were seen as positive, promoting development as long as they did not cost too much. Others saw them as politically correct and morally appropriate. Now a third and far more significant motivation presents itself: meeting these goals may be necessary to prevent the collapse of our civilization. Yet the cost we project for saving civilization would amount to less than $200 billion a year, 1/6 of current global military spending. In effect, our plan is the new security budget.</p>', '1');
INSERT INTO `read_page_title` VALUES ('2', '2', '<p>Recently I attended several meetings where we talked about ways to retain students and keep younger faculty members from going elsewhere.</p>\r\n<p>It seems higher education has become an industry of meeting-holders whose task it is to \"solve\" problems--real or imagined. And in my position as a professor at three different colleges, the actual problems in educating our young people and older students have deepened, while the number of people hired--not to teach but to hold meetings--has increased significantly. Every new problem creates a new job for an administrative fixer. Take our Center for Teaching Excellence. Contrary to its title, the center is a clearing house (信息交流中心) for using technology in classrooms and in online courses. It\'s an administrative sham (欺诈) of the kind that has multiplied over the last 30 years.</p>\r\n<p>I offer a simple proposition in response: Many of our problems--class attendance, educational success, student happiness and well-being--might be improved by cutting down the bureaucratic (官僚的) mechanisms and meetings and instead hiring an army of good teachers. If we replaced half of our administrative staff with classroom teachers, we might actually get a majority of our classes back to 20or fewer students per teacher. This would be an environment in which teachers and students actually knew each other.</p>\r\n<p>The teachers must be free to teach in their own way--the curriculum should be flexible enough so that they can use their individual talents to achieve the goals of the course. Additionally, they should be allowed to teach, and be rewarded for doing it well. Teachers are not people who are great at and consumed by research and happen to appear in a classroom. Good teaching and research are not exclusive, but they are also not automatic companions. Teaching is an art and a craft, talent and practice; it is not something that just anyone can be good at. It is utterly confusing to me that people do not recognize this, despite the fact that pretty much anyone who has been a student can tell the difference between their best and worst teachers.</p>', '1');
INSERT INTO `read_page_title` VALUES ('3', '3', '<p>The secret to eating less and being happy about it may have been cracked years ago—by McDonald\'s. According to a new study from Cornell University\'s Food and Brand Lab, small non-food rewards--like the toys in McDonald\'s Happy Meals--stimulate the same reward centers in the brain as food does.</p>\r\n<p>The researchers, led by Martin Reimann, carried out a series of experiments to see if people would choose a smaller meal if it was paired with a non-food item.</p>\r\n<p>They found that the majority of both kids and adults opted for a haft-sized portion when combined with a prize. Both options were priced the same.</p>\r\n<p>Even more interesting is that the promise of a future reward was enough to make adults choose the smaller portion. One of the prizes used was a lottery ticket (彩票), with a $10, $ 50 or $100 payout, and this was as effective as a tangible gift in persuading people to eat less.</p>\r\n<p>\"The fact that participants were willing to substitute part of a food item for the mere prospect of a relatively small monetary award is interesting,\" says Reimann.</p>\r\n<p>He theorizes that it is the emotional component of these intangible prizes that make them effective. In fact, vaguely-stated possibilities of winning a prize were more effective than options with hard odds included.</p>\r\n<p>\"One explanation for this finding is that possible awards may be more emotionally provoking than certainty Reimann.\" The of added attraction and awards,\" says uncertainty winning provides desirability through emotional \'thrills.\' The possibility of receiving an award also produces a state of hope--a state that is in itself psychologically rewarding.\" In other words, there\'s a reason why people like to gamble.</p>\r\n<p>How might this knowledge be used to help people eat more healthily?</p>\r\n<p>One possibility is a healthy option that offers the chance to win a spa (温泉疗养) weekend. Or maybe the reward of a half-sized portion could be a half-sized dessert to be claimed only on a future date. That would get you back in the restaurant--and make you eat a little less.</p>', '1');
INSERT INTO `read_page_title` VALUES ('4', '1', '<p>Countries Rush for Upper Hand in Antarctica</p>\r\n<p>A) On a glacier-filled island with fjords（峡湾）and elephant seals, Russia has built Antarctica’s first Orthodox church on a bill overlooking its research base. Less than an hour away by snowmobile. Chinese laborers have updated the Great Wall Station, a vital part of China’s plan to operate five basses on Antarctica, complete with an indoor badminton court and sleeping quarters for 150 people. Not to be outdone, India’s futuristic new Bharathi base, built on stills（桩子）using 134 interlocking shipping containers, resembles a spaceship. Turkey and Iran have announced plans to build bases, too.</p>\r\n<p>B) More than a century has passed since explorers raced to plant their flags at the bottom of the world, and for decades to come this continent is supposed to be protected as a scientific preserve, shielded from intrusions like military activities and mining . But an array of countries are rushing to assert greater influence here, with an eye not just towards the day those protective treaties expire, but also for the strategic and commercial that already exist.</p>\r\n<p>C) The newer players are stepping into what they view as a treasure house of resources. Some of the ventures focus on the Antarctic resources that are already up for grabs, like abundant sea life. South Korea, which operates state-of–the-art bases here, is increasing its fishing of krill（磷虾），found in abundance in the Southern Ocean, while Russia recently frustrated efforts to create one of the world’s largest ocean sanctuaries here.</p>\r\n<p>D) Some scientists are examining the potential for harvesting icebergs form Antarctica, which is estimated to have the biggest reserves of fresh water on the planet. Nations are also pressing ahead with space research and satellite projects to expand their global navigation abilities.</p>\r\n<p>E) Building on a Soviet-era foothold, Russia is expanding its monitoring stations for Glonass, its version of the Global Positioning System(GPS). At least three Russian stations are already operating in Antarctica, part of its effort to challenge the dominance of the American GPS, and new stations are planned for sites like the Russian base, in the shadow of the Orthodox Church of the Holy Trinity.</p>\r\n<p>F) Elsewhere in Antarctica, Russian researchers boast of their recent discovery of a freshwater reserve the size of Lake Ontario after drilling through miles of solid ice. “You can see that we’re here to stay,” said Vladimir Cheberdak, 57, chief of the Bellingshausen Station, as he sipped tea under a portrait of Fabian Gottlieb von Bellingshausen, a high-ranking officer in the Imperial Russian Navy who explored the Antarctic coast in 1820.</p>\r\n<p>G) Antarctica’s mineral, oil and gas wealth are a longer-term prize. The treaty banning mining here, shielding coveted(令人垂诞的)reserves of iron ore, coal and chromium, comes up for review in 2048. Researchers recently found kimberlite(金伯利岩) deposits hinting at the existence of diamonds. And while assessments vary widely, geologists estimate that Antarctica holds at least 36 billion barrels of oil and natural gas.</p>\r\n<p>H) Beyond the Antarctic treaties, huge obstacles persist to tapping these resources, like drifting icebergs that could jeopardize offshore platforms. Then there is Antarctic’s remoteness, with some mineral deposits found in windswept locations on a continent that is larger the Europe and where winter temperatures hover around minus 55 degrees Celsius.</p>\r\n<p>I) But advances in technology might make Antarctica a lot more accessible three decades from now. And even before then, scholars warn, the demand for resources in an energy-hungry world could raise pressure to renegotiate Antarctica’s treaties, possibly allowing more commercial endeavours here well before the prohibitions against them expire. The research stations on King George lsland offer a glimpse into the long game on this ice-blanketed continent as nations assert themselves, eroding the sway long held by countries like the United States, Britain. Australia and New Zealand.</p>\r\n<p>J) Being stationed in Antarctica involves adapting to life on the planet’s driest, windiest and coldest continent, yet each nation manages to make itself at home. Bearded Russian priests offer regular services at the Orthodox church for the 16 or so Russian speakers who spend the winter at the base, largely polar scientists in fields like glaciology and meteorology. Their number climbs to about 40 in the warmer summer months. China has arguably the fastest growing operations in Antarctica. It opened its fourth station last year and is pressing ahead with plans to build a fifth. It is building its second ice-breaking ship and setting up research drilling operations on an ice dome 13,422 feet above sea level that is one the planet’s coldest places. Chinese officials say the expansion in Antarctica prioritises scientific research. But they also acknowledge that concerns about “resource security” influence their moves.</p>\r\n<p>K) China’s newly renovated Great Wall Station on King George lsland makes the Russian and Chilean bases here seem outdated. ”We do weather monitoring here and other research.” Ning Xu, 53, the chief of the Chinese base, said over tea during a fierce blizzard(暴风雪) in late November. The large base he leads resembles a snowed-in college campus on holiday break, with the capacity to sleep more than 10 times the 13 people who were staying on through the Antarctic winter. Yong Yu, a Chinese microbiologist, showed off the spacious building, with empty desks under an illustrated timeline detailing the rapid growth of China’s Antarctic operations since the 1980s “We now feel equipped to grow,” he said.</p>\r\n<p>L) As some countries expand operations in Antarctica, the United States maintains three year-round stations on the continent with more than 1,000 people during the southern hemisphere’s summer, including those at the Amundsen Scott station, built in 1956 at an elevation of 9,301 feet on a plateau at the South Pole. But US researchers quietly complain about budget restraints and having far fewer icebreakers the Russia, limiting the reach of the United States in Antarctica.</p>\r\n<p>M) Scholars warn that Antarctica’s political drift could blur the distinction between military and civilian activities long before the continent’s treaties come up for renegotiation, especially in parts of Antarctica that are ideal for intercepting(拦截) signals from satellites or retasking satellite systems, potentially enhancing global electronic intelligence operations.</p>\r\n<p>N) Some countries have had a hard time here, Brazil opened a research station in 1984, but it was largely destroyed by a fire that killed two members of the navy in 2012, the same year that a diesel-laden Brazilian barge sank near the base. As if that were not enough. a Brazilian C-130 Hercules military transport plane has remained stranded near the runway of Chile’s air base here since it crash-landed in 2014.</p>\r\n<p>O) However, Brazil’s stretch of misfortune has created opportunities for China, with a Chinese company winning the $100 million contract in 2015 to rebuild the Brazilian station.</p>\r\n<p>P) Amid all the changes, Antarctica maintains its allure. South Korea opened its second Antarctic research base in 2014, describing it as a way to test robots developed by Korean researchers for use in extreme conditions. With Russia’s help, Belarus is preparing to build this first Antarctic base. Colombia said this year that it planned to join other South American nations with bases in Antarctica.</p>\r\n<p>Q) “The old days of the Antarctic being dominated by the interests and wishes of white men from European. Australasian and North American states are over.” Said Klaus Dodds, a politics scholar at the University of London who specialises in Antarctica. “The reality is that Antarctica is geopolitically contested.”</p>', '2');
INSERT INTO `read_page_title` VALUES ('5', '2', '<p>Any veteran nicotine addict will testify that fancy packaging plays no role in the decision to keep smoking. So, it is argued, stripping cartons of their branding will trigger no mass movement to quit.</p>\r\n<p>But that isn’t why the government—under pressure from cancer charities, health workers and the Labour party—has agreed to legislate for standardized packaging. The theory is that smoking should be stripped of any appeal to discourage new generations from starting in the first place. Plain packaging would be another step in the reclassification of cigarettes from inviting consumer products to narcotics（麻醉剂）.</p>\r\n<p>Naturally, the tobacco industry is violently opposed. No business likes to admit that it sells addictive poison as a lifestyle choice. That is why government has historically intervened, banning advertising, imposing health warnings and punitive (惩罚性的) duties. This approach has led over time to a fall in smoking with numbers having roughly halved since the 1970s. Evidence from Australia suggests plain packaging pushes society further along that road. Since tobacco as one of the biggest causes of premature death in the UK, a measure that tames the habit even by a fraction is worth trying.</p>\r\n<p>So why has it taken so long? The Department of Health declared its intention to consider the move in November 2010 and consulted through 2012. But the plan was suspended in July 2013. It did not escape notice that a lobbying firm set up by Lynton Crosby, David Cameron’s election campaign director, had previously acted for Philip Morris International. (The prime minister denied there was a connection between his news adviser’s outside interests and the change in legislative programme.) In November 2013, after an unnecessary round of additional consultation, health minister Jane Ellison said the government was minded to proceed after all. Now we are told Members of Parliament (MPs) will have a free voice before parliament is dissolved in March.</p>\r\n<p>Parliament has in fact already authorised the government to tame the tobacco trade. MPs voted overwhelmingly in favour of Labour amendments to the children and families bill last February that included the power to regulate for plain packaging. With sufficient will in Downing Street this would have been done already. But strength of will is the missing ingredient where Mr. Cameron and public health are concerned. His attitude to state intervention has looked confused ever since his bizarre 2006 lament (叹息) that chocolate oranges placed seductively at supermarket check-outs fueled obesity.</p>\r\n<p>The government has moved reluctantly into a sensible public health policy, but with such obvious over-cautiousness that any political credit due belongs to the opposition. Without sustained external pressure it seems certain Mr. Cameron would still be hooked on the interests of big tobacco companies.</p>', '2');
INSERT INTO `read_page_title` VALUES ('6', '3', '<p>What a waste of money!In return for an averageof￡44,000 of debt,students get an average of only 14 hours of lecture and tutorial time a week in Britain. Annual fees have risen from￡1,000 to $9,000 in the last decade. But contact time at university has barely risen at all. And graduating doesn’t even provide any guarantee of a decent job:sixin ten graduates today are in non-graduate jobs.</p>\r\n<p>No wonder it has become fashionable to denounce many universities as little more that elaboratecom-tricks(骗术). There’s a lotfor students to complain about the repayment threshold for paying back loans will be frozen for five years, meaning that lower-paid graduals have to start repaying their loans, and maintenance grants have been replaced by loans meaning that students from poorer backgrounds face higher debt than those with wealthier parents.</p>\r\n<p>Yet it still pays to go to university. If going to university doesn’t work out, students pay very little—if any—of their tuition fees back, you only start repaying when you are earning ￡21, 000 a year. Almost half of graduates—those who go on to earn less—will have a portion of their debt written off. It’s not just the lectures and tutorials that are important. Education is the sum of what students teach each other in between lectures and seminars. Students do not merely benefit while at university, studies show they go on to be healthier and happier than non-graduates, and also far more likely to vote.</p>\r\n<p>Whatever your talents, it is extraordinarily difficult to get a leading job in most fields without having been to university. Recruiters circle elite universities like vulturous(兀鹰). Many top firms will not even look at applications from those who lack a 2.1, i.e., an upper-second class degree, from an elite university. Students at university also meet those likely to be in leading jobs in the future, forming contacts for life. This might not be right, but school-leavers who fail to acknowledge as much risk making the wrong decision about going to university.</p>\r\n<p>Perhaps the reason why so many universities offer their students so little is they know studying at a top university remains a brilliant investment even if you don’t learn anything .Studying at university will only become less attractive if employers shift their focus away from where someone went to university—and there is no sign of that happening anytime soon. School-leavers may moan, but they have little choice but to embrace university and the student debt that comes with it.</p>', '2');

-- ----------------------------
-- Table structure for testpage
-- ----------------------------
DROP TABLE IF EXISTS `testpage`;
CREATE TABLE `testpage` (
  `testId` int(11) NOT NULL,
  `page_Id` int(11) NOT NULL,
  `user_Id` int(11) NOT NULL,
  `mark` int(255) DEFAULT NULL,
  `analysis` varchar(255) DEFAULT NULL,
  `knowledgePoint` int(255) DEFAULT NULL,
  `pageWords` int(255) DEFAULT NULL,
  `WrongAmount` int(255) DEFAULT NULL,
  PRIMARY KEY (`testId`,`page_Id`,`user_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testpage
-- ----------------------------

-- ----------------------------
-- Table structure for translate
-- ----------------------------
DROP TABLE IF EXISTS `translate`;
CREATE TABLE `translate` (
  `translateId` int(11) NOT NULL AUTO_INCREMENT,
  `translateTitle` varchar(255) DEFAULT NULL,
  `translateCorrect` text,
  `translate_pageId` int(11) DEFAULT NULL,
  `translate_mark` int(11) DEFAULT NULL,
  PRIMARY KEY (`translateId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of translate
-- ----------------------------
INSERT INTO `translate` VALUES ('1', '<p>随着中国的改革开放，如今很多年轻人都喜欢举行西式婚礼。新娘在婚礼上穿着白色婚纱，因为白色被认为是纯洁的象征。然而，在中国传统文化中，白色经常是葬礼上使用的颜色。因此务必记住，白花一定不要用作祝人康复的礼物，尤其不要送给老年人或危重病人。同样，礼金也不能装在白色信封里，而要装在红色信封里。</p>', '<p>With China\'s reform and opening up, many young people tend to hold Western-style weddings these days. The bride wears a white wedding dress at the wedding, because white is considered as a symbol of purity. However, in traditional Chinese culture, white is often used in funerals, so be sure to remember that white flowers must not be used as a gift to the patient, especially not to the seniors or patients in critical conditions. Similarly, the cash gift cannot be packed in a white envelope, but in a red envelope.</p>', '1', '15');

-- ----------------------------
-- Table structure for translatedo
-- ----------------------------
DROP TABLE IF EXISTS `translatedo`;
CREATE TABLE `translatedo` (
  `translatedoId` int(11) NOT NULL AUTO_INCREMENT,
  `translateWrite` text,
  `translate_pageId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`translatedoId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of translatedo
-- ----------------------------
INSERT INTO `translatedo` VALUES ('1', null, null, null);
INSERT INTO `translatedo` VALUES ('2', '', '1', '1');

-- ----------------------------
-- Table structure for translate_page
-- ----------------------------
DROP TABLE IF EXISTS `translate_page`;
CREATE TABLE `translate_page` (
  `translate_pageId` int(11) NOT NULL AUTO_INCREMENT,
  `translate_pageName` varchar(255) DEFAULT NULL,
  `translate_pageSummary` varchar(255) DEFAULT NULL,
  `translate_pageType` int(11) DEFAULT NULL,
  PRIMARY KEY (`translate_pageId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of translate_page
-- ----------------------------
INSERT INTO `translate_page` VALUES ('1', '翻译训练一', '2016年12月英语四级翻译真题及答案 第2套:白色', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `userPassword` varchar(255) DEFAULT NULL,
  `userPermission` int(11) DEFAULT NULL,
  `userQQ` varchar(255) DEFAULT NULL,
  `userTel` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userLandAmount` int(11) DEFAULT NULL,
  `userLastLandTime` date DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'xiaoming', 'bad04e164a333c905d91202b88da69d1', '2', '7368336482', '13602760052', '776836427@qq.com', null, null);
INSERT INTO `user` VALUES ('48', 'asdas', 'bad04e164a333c905d91202b88da69d1', '2', null, null, 'qweasd@123.com', null, null);
INSERT INTO `user` VALUES ('49', '3123123', 'bad04e164a333c905d91202b88da69d1', '2', null, null, '123@qq.com', null, null);
INSERT INTO `user` VALUES ('50', 'zxczxc', 'bad04e164a333c905d91202b88da69d1', '2', null, null, 'zxzx@qq.com', null, null);
INSERT INTO `user` VALUES ('51', 'asdasdsadasdasd', 'bad04e164a333c905d91202b88da69d1', '2', null, null, '515151@qq.com', null, null);
INSERT INTO `user` VALUES ('52', 'qweasd', 'bad04e164a333c905d91202b88da69d1', '2', null, null, 'qweasd', null, null);
INSERT INTO `user` VALUES ('53', 'ccccc', 'bad04e164a333c905d91202b88da69d1', '2', null, null, 'qweqweqweqwe', null, null);
INSERT INTO `user` VALUES ('54', 'aa', '6aa28a93bde0403c71bf4bfdf2f26591', '2', null, null, 'a', null, null);
INSERT INTO `user` VALUES ('55', '111111111', 'bad04e164a333c905d91202b88da69d1', '2', null, null, 'qweasdasdasdasd', null, null);
INSERT INTO `user` VALUES ('56', 'po', 'bad04e164a333c905d91202b88da69d1', '2', null, null, 'qweasd@sdasdas.com', null, null);

-- ----------------------------
-- Table structure for word
-- ----------------------------
DROP TABLE IF EXISTS `word`;
CREATE TABLE `word` (
  `wordId` int(11) NOT NULL AUTO_INCREMENT,
  `wordTitle` text,
  `word_select1` varchar(255) DEFAULT NULL,
  `word_select2` varchar(255) DEFAULT NULL,
  `word_select3` varchar(255) DEFAULT NULL,
  `word_select4` varchar(255) DEFAULT NULL,
  `word_select5` varchar(255) DEFAULT NULL,
  `word_select6` varchar(255) DEFAULT NULL,
  `word_select7` varchar(255) DEFAULT NULL,
  `word_select8` varchar(255) DEFAULT NULL,
  `word_select9` varchar(255) DEFAULT NULL,
  `word_select10` varchar(255) DEFAULT NULL,
  `word_select11` varchar(255) DEFAULT NULL,
  `word_select12` varchar(255) DEFAULT NULL,
  `word_select13` varchar(255) DEFAULT NULL,
  `word_select14` varchar(255) DEFAULT NULL,
  `word_select15` varchar(255) DEFAULT NULL,
  `word_pageId` int(11) DEFAULT NULL,
  PRIMARY KEY (`wordId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of word
-- ----------------------------
INSERT INTO `word` VALUES ('1', '<p>It’s our guilty pleasure: Watching TV is the most common everyday activity, after work and sleep, in many parts of the world. Americans view five hours of TV each day, and while we know that spending so much time sitting 36.________ can lead to obesity (肥胖症) and other diseases, researchers have now quantified just how 37.________ being a couch potato can be.</p>\r\n<p>In an analysis of data from eight large 38.________ published studies, a Harvard-led group reported in the Journal of the American Medical Association that for every two hours per day spent channel 39.________ , the risk of developing Type 2 diabetes(糖尿病) rose 20% over 8.5 years, the risk of heart disease increased 15% over a 40.________ , and the odds of dying prematurely 41.________ 13% during a seven-year follow-up. All of these 42.________ are linked to a lack of physical exercise. But compared with other sedentary(久坐的) activities, like knitting, viewing TV may be especially 43.________ at promoting unhealthy habits. For one, the sheer number of hours we pass watching TV dwarfs the time we spend on anything else. And other studies have found that watching ads for beer and popcorn may make you more likely to 44.________ them.</p>\r\n<p>Even so, the authors admit that they didn’t compare different sedentary activities to 45.________ whether TV watching was linked to a greater risk of diabetes, heart disease or early death compared with, say, reading.</p>', 'A) climbed', 'B) consume', 'C) decade', 'D) determine', 'E) effective', 'F) harmful', 'G) outcomes', 'H) passively', 'I) previously', 'J) resume', 'K) suffered', 'L) surfing', 'M) term', 'N) terminals', 'O) twisting', '1');

-- ----------------------------
-- Table structure for wordcorrect
-- ----------------------------
DROP TABLE IF EXISTS `wordcorrect`;
CREATE TABLE `wordcorrect` (
  `wordCorrectId` int(11) NOT NULL AUTO_INCREMENT,
  `wordCorrectNum` int(11) DEFAULT NULL,
  `wordCorrect` varchar(255) DEFAULT NULL,
  `word_pageId` int(11) DEFAULT NULL,
  PRIMARY KEY (`wordCorrectId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wordcorrect
-- ----------------------------
INSERT INTO `wordcorrect` VALUES ('1', '26', 'H', '1');
INSERT INTO `wordcorrect` VALUES ('2', '27', 'F', '1');
INSERT INTO `wordcorrect` VALUES ('3', '28', 'I', '1');
INSERT INTO `wordcorrect` VALUES ('4', '29', 'L', '1');
INSERT INTO `wordcorrect` VALUES ('5', '30', 'C', '1');
INSERT INTO `wordcorrect` VALUES ('6', '31', 'A', '1');
INSERT INTO `wordcorrect` VALUES ('7', '32', 'G', '1');
INSERT INTO `wordcorrect` VALUES ('8', '33', 'E', '1');
INSERT INTO `wordcorrect` VALUES ('9', '34', 'B', '1');
INSERT INTO `wordcorrect` VALUES ('10', '35', 'D', '1');

-- ----------------------------
-- Table structure for worddo
-- ----------------------------
DROP TABLE IF EXISTS `worddo`;
CREATE TABLE `worddo` (
  `worddoId` int(11) NOT NULL AUTO_INCREMENT,
  `worddoNum` int(11) DEFAULT NULL,
  `wordSelect` varchar(255) DEFAULT NULL,
  `word_pageId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`worddoId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of worddo
-- ----------------------------
INSERT INTO `worddo` VALUES ('11', '26', 'C', '1', '1');
INSERT INTO `worddo` VALUES ('12', '27', 'C', '1', '1');
INSERT INTO `worddo` VALUES ('13', '28', 'C', '1', '1');
INSERT INTO `worddo` VALUES ('14', '29', 'C', '1', '1');
INSERT INTO `worddo` VALUES ('15', '30', 'C', '1', '1');
INSERT INTO `worddo` VALUES ('16', '31', 'C', '1', '1');
INSERT INTO `worddo` VALUES ('17', '32', 'C', '1', '1');
INSERT INTO `worddo` VALUES ('18', '33', 'C', '1', '1');
INSERT INTO `worddo` VALUES ('19', '34', 'C', '1', '1');
INSERT INTO `worddo` VALUES ('20', '35', 'C', '1', '1');
INSERT INTO `worddo` VALUES ('21', '26', 'A', '1', '56');
INSERT INTO `worddo` VALUES ('22', '27', 'S', '1', '56');
INSERT INTO `worddo` VALUES ('23', '28', 'A', '1', '56');
INSERT INTO `worddo` VALUES ('24', '29', 'A', '1', '56');
INSERT INTO `worddo` VALUES ('25', '30', 'A', '1', '56');
INSERT INTO `worddo` VALUES ('26', '31', 'A', '1', '56');
INSERT INTO `worddo` VALUES ('27', '32', 'A', '1', '56');
INSERT INTO `worddo` VALUES ('28', '33', 'A', '1', '56');
INSERT INTO `worddo` VALUES ('29', '34', 'A', '1', '56');
INSERT INTO `worddo` VALUES ('30', '35', 'A', '1', '56');

-- ----------------------------
-- Table structure for word_page
-- ----------------------------
DROP TABLE IF EXISTS `word_page`;
CREATE TABLE `word_page` (
  `word_pageId` int(11) NOT NULL AUTO_INCREMENT,
  `word_pageName` varchar(255) DEFAULT NULL,
  `word_pageSummary` varchar(255) DEFAULT NULL,
  `word_Type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`word_pageId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of word_page
-- ----------------------------
INSERT INTO `word_page` VALUES ('1', '词汇提升训练一', '2015年6月大学英语四级考试阅读的section A 仍然是选词填空，要求从15个题目中选出10个词填到文章中对应的空格部分。文章主题是论述长时间看电视的危害。 ', '1');
INSERT INTO `word_page` VALUES ('2', '词汇提升训练二', 'The U.S. Department of Education is making efforts to ensure that all students have equal access to a quality education. Today it is __36___the launch of the Excellent Educators for All Initiative. ', '1');

-- ----------------------------
-- Table structure for writting
-- ----------------------------
DROP TABLE IF EXISTS `writting`;
CREATE TABLE `writting` (
  `writtingId` int(11) NOT NULL AUTO_INCREMENT,
  `writtingTitle` text,
  `writtingCorrectTitle` varchar(255) DEFAULT NULL,
  `writtingCorrect` text,
  `writting_pageId` int(11) DEFAULT NULL,
  `writting_mark` int(11) DEFAULT NULL,
  PRIMARY KEY (`writtingId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of writting
-- ----------------------------
INSERT INTO `writting` VALUES ('1', 'For this part, you are allowed 30 minutes to write an essay. Suppose you have two options upon graduation: one is to work in a state-owned business and the other in a joint venture. You are to make a choice between the two. Write an essay to explain the reasons for your choice. You should write at least 120 words but no more than 180 words.', 'Stated-owned business or Joint venture', '<p>Upon graduation, virtually all college students will confront the problem of the career choice，which is truly a tough choice. Students\' opinions differ greatly on this issue. Some hold that there is no better way to get a decent job than working in a stated-owned business which will guarantee my life after retirement, but others take the attitude that a joint venture outweighs any other jobs as it may provide higher income for employees.</p>\r\n<p>As to myself, I prefer the latter view. A joint venture, especially a high-salary joint venture, exerts a tremendous fascination on a great number of people, with no exception to me. Although it might be impossible to make sure my retirement pension is good enough, high-salary is exactly what I need just now. In my view, our career choices largely depend on where we want to stay for the rest of life. For me, metropolis is the place where I can grasp loads of opportunities and achieve my personal dreams. As I hold the view that live in the moment, not the future, and also in order to finance myself in some aspects such as the transportation, the house-renting, or social activities, a joint venture can satisfy my needs for the consumption I mentioned above.</p>\r\n<p>In short, a joint venture is the first and only consideration in my choice of career.</p>', '1', '20');

-- ----------------------------
-- Table structure for writtingdo
-- ----------------------------
DROP TABLE IF EXISTS `writtingdo`;
CREATE TABLE `writtingdo` (
  `writtingdoId` int(11) NOT NULL AUTO_INCREMENT,
  `writtingdoTitle` varchar(255) DEFAULT NULL,
  `writtingdoWrite` text,
  `writting_pageId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`writtingdoId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of writtingdo
-- ----------------------------
INSERT INTO `writtingdo` VALUES ('1', 'gyug', 'huhuijljlk', '1', '1');

-- ----------------------------
-- Table structure for writting_page
-- ----------------------------
DROP TABLE IF EXISTS `writting_page`;
CREATE TABLE `writting_page` (
  `writting_pageId` int(11) NOT NULL AUTO_INCREMENT,
  `writting_pageName` varchar(255) DEFAULT NULL,
  `writting_pageSummary` varchar(255) DEFAULT NULL,
  `writting_pageType` int(255) DEFAULT NULL,
  PRIMARY KEY (`writting_pageId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of writting_page
-- ----------------------------
INSERT INTO `writting_page` VALUES ('1', '写作训练一', ' 2016年12月英语四级作文真题范文 第3套:国企or外企', '1');
