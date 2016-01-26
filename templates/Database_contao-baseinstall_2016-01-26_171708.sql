#================================================================================
# Contao-Website   : Website
# Contao-Database  : contao-baseinstall
# Saved by User    : derhaeuptling (Martin Schwenzer)
# Time stamp       : 2016-01-26 at 17:17:08
#
# Contao Extension : BackupDB, Version 3.2.0
# Copyright        : Softleister (www.softleister.de)
# Author           : Hagen Klemp
# Licence          : LGPL
#
# Visit Contao project page http://www.contao.org for more information
#
#-----------------------------------------------------
# Contao Version 3.5.6
# Folgende Erweiterungen müssen installiert sein:
#-----------------------------------------------------
#   - m17-sticky-backend-footer   : Version 2.0.5 stable, Build 8
#   - mobilecontent               : Version 1.1.3 stable, Build 3
#   - contao-boilerplate
#
#================================================================================

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

#---------------------------------------------------------
# Table structure for table 'tl_article'
#---------------------------------------------------------
CREATE TABLE `tl_article` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `sorting` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(128) COLLATE utf8_bin NOT NULL default '',
  `author` int(10) unsigned NOT NULL default '0',
  `inColumn` varchar(32) NOT NULL default '',
  `keywords` text NULL,
  `showTeaser` char(1) NOT NULL default '',
  `teaserCssID` varchar(255) NOT NULL default '',
  `teaser` text NULL,
  `printable` varchar(255) NOT NULL default '',
  `cssID` varchar(255) NOT NULL default '',
  `published` char(1) NOT NULL default '',
  `start` varchar(10) NOT NULL default '',
  `stop` varchar(10) NOT NULL default '',
  `protected` char(1) NOT NULL default '',
  `groups` blob NULL,
  `guests` char(1) NOT NULL default '',
  `showatdevice` char(1) NOT NULL default '1',
  `customTpl` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `alias` (`alias`),
  KEY `pid_start_stop_published_sorting` (`pid`, `start`, `stop`, `published`, `sorting`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;


#
# Dumping data for table 'tl_article'
#

INSERT INTO `tl_article` VALUES ( 1, 3, 128, 1406630080, 'Nachrichten', 'nachrichten', 1, 'main', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 2, 4, 128, 1453823010, 'Veranstaltungen', 'veranstaltungen', 1, 'main', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 3, 5, 128, 1363785797, 'Page 3', 'page-3', 1, 'main', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 4, 6, 128, 1369317502, 'Page 4', 'page-4', 1, 'main', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 73, 28, 128, 1388939407, 'Nachrichten Leser', 'standard-inhalte-nachrichten-leser', 1, 'main', NULL, '', '', NULL, '', '', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 8, 10, 16, 1453664097, 'default header', 'default-header', 1, 'main', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 59, 10, 160, 1453219050, 'default footer', 'default-footer', 1, 'main', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 17, 11, 128, 1356645060, '403', 'id-403', 1, 'main', NULL, '', '', NULL, '', '', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 18, 12, 128, 1363700973, '404 - Die Seite konnte nicht gefunden werden.', 'id-404-die-seite-konnte-nicht-gefunden-werden', 1, 'main', '404', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 19, 13, 128, 1356645146, 'Eventleser', 'eventleser', 1, 'main', NULL, '', '', NULL, '', '', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 30, 15, 128, 1363798381, 'Impressum', 'impressum', 1, 'main', NULL, '', '', NULL, '', '', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 62, 21, 128, 1363703085, 'subpage 2', 'subpage-2', 1, 'main', NULL, '', '', NULL, '', '', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 63, 22, 128, 1363703085, 'subpage 3', 'subpage-3', 1, 'main', NULL, '', '', NULL, '', '', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 64, 23, 128, 1363703086, 'subpage 4', 'subpage-4', 1, 'main', NULL, '', '', NULL, '', '', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 45, 10, 32, 1453219038, 'default sidebar right', 'default-sidebar-right', 1, 'right', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 60, 10, 24, 1453219009, 'default sidebar left', 'default-sidebar-left', 1, 'left', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 61, 20, 128, 1363703084, 'subpage 1', 'subpage-1', 1, 'main', NULL, '', '', NULL, '', '', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 72, 27, 128, 1388679884, 'Nachrichten Archiv', 'standard-inhalte-nachrichten-archiv', 1, 'main', NULL, '', '', NULL, '', '', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 71, 26, 128, 1388929040, 'Event Archiv', 'standard-inhalte-event-archiv', 1, 'main', NULL, '', '', NULL, '', '', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 68, 24, 128, 1388413343, 'Datenschutzerklärung', 'datenschutzerklaerung', 1, 'main', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 75, 30, 128, 1404131516, 'Page 4', '', 1, 'main', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 76, 31, 128, 1392735220, 'Page 4', '', 1, 'main', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 78, 33, 128, 1389171396, 'Newsletter', 'newsletter', 1, 'main', NULL, '', '', NULL, '', '', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 79, 34, 128, 1389171305, 'Newsletter Abonnieren', 'newsletter-newsletter-abonnieren', 1, 'main', NULL, '', '', NULL, '', '', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 80, 35, 128, 1389171319, 'Newsletter abbestellen', 'newsletter-newsletter-abbestellen', 1, 'main', NULL, '', '', NULL, '', '', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 81, 36, 128, 1389171399, 'Newsletter Bestellbestätigung', 'newsletter-newsletter-abonnieren-newsletter-bestellbestaetigung', 1, 'main', NULL, '', '', NULL, '', '', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 82, 37, 128, 1389171384, 'Newsletter Kündigungsbestätigung', 'newsletter-newsletter-abbestellen-newsletter-kuendigungsbestaetigung', 1, 'main', NULL, '', '', NULL, '', '', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 83, 10, 288, 1453673562, 'default Offcanvas Sidebar', 'default-offcanvas-sidebar', 1, 'main', '', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '<p>test</p>', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '1', '', '', '', NULL, '', '1', '' );
INSERT INTO `tl_article` VALUES ( 85, 38, 128, 1392734926, 'Kontakt - Anfrage versendet', 'kontakt-kontakt-anfrage-versendet', 1, 'main', NULL, '', '', NULL, '', '', '', '', '', '', NULL, '', '1', '' );

#---------------------------------------------------------
# Table structure for table 'tl_calendar'
#---------------------------------------------------------
CREATE TABLE `tl_calendar` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `jumpTo` int(10) unsigned NOT NULL default '0',
  `protected` char(1) NOT NULL default '',
  `groups` blob NULL,
  `allowComments` char(1) NOT NULL default '',
  `notify` varchar(32) NOT NULL default '',
  `sortOrder` varchar(32) NOT NULL default '',
  `perPage` smallint(5) unsigned NOT NULL default '0',
  `moderate` char(1) NOT NULL default '',
  `bbcode` char(1) NOT NULL default '',
  `requireLogin` char(1) NOT NULL default '',
  `disableCaptcha` char(1) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;


#
# Dumping data for table 'tl_calendar'
#

INSERT INTO `tl_calendar` VALUES ( 3, 1388939553, 'Veranstaltungen', 13, '', NULL, '', 'notify_admin', 'ascending', 0, '', '', '', '' );

#---------------------------------------------------------
# Table structure for table 'tl_calendar_events'
#---------------------------------------------------------
CREATE TABLE `tl_calendar_events` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(128) COLLATE utf8_bin NOT NULL default '',
  `author` int(10) unsigned NOT NULL default '0',
  `addTime` char(1) NOT NULL default '',
  `startTime` int(10) unsigned NULL,
  `endTime` int(10) unsigned NULL,
  `startDate` int(10) unsigned NULL,
  `endDate` int(10) unsigned NULL,
  `teaser` text NULL,
  `addImage` char(1) NOT NULL default '',
  `singleSRC` binary(16) NULL,
  `alt` varchar(255) NOT NULL default '',
  `size` varchar(64) NOT NULL default '',
  `imageUrl` varchar(255) NOT NULL default '',
  `fullsize` char(1) NOT NULL default '',
  `caption` varchar(255) NOT NULL default '',
  `floating` varchar(32) NOT NULL default '',
  `recurring` char(1) NOT NULL default '',
  `repeatEach` varchar(64) NOT NULL default '',
  `repeatEnd` int(10) unsigned NOT NULL default '0',
  `recurrences` smallint(5) unsigned NOT NULL default '0',
  `addEnclosure` char(1) NOT NULL default '',
  `enclosure` blob NULL,
  `source` varchar(32) NOT NULL default '',
  `jumpTo` int(10) unsigned NOT NULL default '0',
  `articleId` int(10) unsigned NOT NULL default '0',
  `url` varchar(255) NOT NULL default '',
  `target` char(1) NOT NULL default '',
  `cssClass` varchar(255) NOT NULL default '',
  `noComments` char(1) NOT NULL default '',
  `published` char(1) NOT NULL default '',
  `start` varchar(10) NOT NULL default '',
  `stop` varchar(10) NOT NULL default '',
  `location` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `alias` (`alias`),
  KEY `pid_start_stop_published` (`pid`, `start`, `stop`, `published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;


#
# Dumping data for table 'tl_calendar_events'
#

INSERT INTO `tl_calendar_events` VALUES ( 17, 3, 1404137268, 'Veranstaltung Test', 'veranstaltung-test', 1, '', 1395529200, 1395615599, 1395529200, NULL, '<p>Lorem ipsum dolor sit amet, et simul minimum reprimique qui. Ei eum liber vituperata definitionem. Mea scripta maluisset dissentiunt id, in mundi habemus duo, cum justo integre et.</p>', '1', 0x816e2ab0004a11e4b32f001c42f7180d, '', 'a:3:{i:0;s:3:"480";i:1;s:0:"";i:2;s:12:"proportional";}', '', '', '', 'left', '1', 'a:2:{s:4:"unit";s:5:"weeks";s:5:"value";s:1:"3";}', 1468187999, 40, '', NULL, 'default', 0, 0, '', '', '', '', '1', '', '', 'Regensbrug' );
INSERT INTO `tl_calendar_events` VALUES ( 18, 3, 1404137282, 'Veranstaltung Test 2', 'veranstaltung-test-2', 1, '', 1421276400, 1421362799, 1421276400, NULL, '<p>Lorem ipsum dolor sit amet, et simul minimum reprimique qui. Ei eum liber vituperata definitionem. Mea scripta maluisset dissentiunt id, in mundi habemus duo, cum justo integre et.</p>', '1', 0x0176e0e0004a11e4b32f001c42f7180d, '', 'a:3:{i:0;s:3:"480";i:1;s:0:"";i:2;s:12:"proportional";}', '', '', '', '', '1', 'a:2:{s:4:"unit";s:5:"weeks";s:5:"value";s:1:"3";}', 1493935199, 40, '', NULL, 'default', 0, 0, '', '', '', '', '1', '', '', 'Regensbrug' );

#---------------------------------------------------------
# Table structure for table 'tl_calendar_feed'
#---------------------------------------------------------
CREATE TABLE `tl_calendar_feed` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(128) COLLATE utf8_bin NOT NULL default '',
  `language` varchar(32) NOT NULL default '',
  `calendars` blob NULL,
  `format` varchar(32) NOT NULL default '',
  `source` varchar(32) NOT NULL default '',
  `maxItems` smallint(5) unsigned NOT NULL default '0',
  `feedBase` varchar(255) NOT NULL default '',
  `description` text NULL,
  PRIMARY KEY  (`id`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_calendar_feed' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_comments'
#---------------------------------------------------------
CREATE TABLE `tl_comments` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `source` varchar(32) NOT NULL default '',
  `parent` int(10) unsigned NOT NULL default '0',
  `date` varchar(64) NOT NULL default '',
  `name` varchar(64) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `website` varchar(128) NOT NULL default '',
  `comment` text NULL,
  `addReply` char(1) NOT NULL default '',
  `author` int(10) unsigned NOT NULL default '0',
  `reply` text NULL,
  `published` char(1) NOT NULL default '',
  `ip` varchar(64) NOT NULL default '',
  `notified` char(1) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `published` (`published`),
  KEY `source_parent_published` (`source`, `parent`, `published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_comments' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_comments_notify'
#---------------------------------------------------------
CREATE TABLE `tl_comments_notify` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `source` varchar(32) NOT NULL default '',
  `parent` int(10) unsigned NOT NULL default '0',
  `name` varchar(128) NOT NULL default '',
  `email` varchar(128) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `addedOn` varchar(10) NOT NULL default '',
  `ip` varchar(64) NOT NULL default '',
  `tokenConfirm` varchar(32) NOT NULL default '',
  `tokenRemove` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `tokenRemove` (`tokenRemove`),
  KEY `source_parent_tokenConfirm` (`source`, `parent`, `tokenConfirm`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_comments_notify' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_content'
#---------------------------------------------------------
CREATE TABLE `tl_content` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `ptable` varchar(64) NOT NULL default '',
  `sorting` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `type` varchar(32) NOT NULL default '',
  `headline` varchar(255) NOT NULL default '',
  `text` mediumtext NULL,
  `addImage` char(1) NOT NULL default '',
  `singleSRC` binary(16) NULL,
  `alt` varchar(255) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `size` varchar(64) NOT NULL default '',
  `imageUrl` varchar(255) NOT NULL default '',
  `fullsize` char(1) NOT NULL default '',
  `caption` varchar(255) NOT NULL default '',
  `floating` varchar(32) NOT NULL default '',
  `html` mediumtext NULL,
  `listtype` varchar(32) NOT NULL default '',
  `listitems` blob NULL,
  `tableitems` mediumblob NULL,
  `summary` varchar(255) NOT NULL default '',
  `thead` char(1) NOT NULL default '',
  `tfoot` char(1) NOT NULL default '',
  `tleft` char(1) NOT NULL default '',
  `sortable` char(1) NOT NULL default '',
  `sortIndex` smallint(5) unsigned NOT NULL default '0',
  `sortOrder` varchar(32) NOT NULL default '',
  `mooHeadline` varchar(255) NOT NULL default '',
  `mooStyle` varchar(255) NOT NULL default '',
  `mooClasses` varchar(255) NOT NULL default '',
  `highlight` varchar(32) NOT NULL default '',
  `shClass` varchar(255) NOT NULL default '',
  `code` text NULL,
  `url` varchar(255) NOT NULL default '',
  `target` char(1) NOT NULL default '',
  `titleText` varchar(255) NOT NULL default '',
  `linkTitle` varchar(255) NOT NULL default '',
  `embed` varchar(255) NOT NULL default '',
  `rel` varchar(64) NOT NULL default '',
  `useImage` char(1) NOT NULL default '',
  `multiSRC` blob NULL,
  `orderSRC` blob NULL,
  `useHomeDir` char(1) NOT NULL default '',
  `perRow` smallint(5) unsigned NOT NULL default '0',
  `perPage` smallint(5) unsigned NOT NULL default '0',
  `numberOfItems` smallint(5) unsigned NOT NULL default '0',
  `sortBy` varchar(32) NOT NULL default '',
  `galleryTpl` varchar(64) NOT NULL default '',
  `playerSRC` blob NULL,
  `youtube` varchar(16) NOT NULL default '',
  `posterSRC` binary(16) NULL,
  `playerSize` varchar(64) NOT NULL default '',
  `autoplay` char(1) NOT NULL default '',
  `cteAlias` int(10) unsigned NOT NULL default '0',
  `articleAlias` int(10) unsigned NOT NULL default '0',
  `article` int(10) unsigned NOT NULL default '0',
  `form` int(10) unsigned NOT NULL default '0',
  `module` int(10) unsigned NOT NULL default '0',
  `protected` char(1) NOT NULL default '',
  `groups` blob NULL,
  `guests` char(1) NOT NULL default '',
  `cssID` varchar(255) NOT NULL default '',
  `invisible` char(1) NOT NULL default '',
  `start` varchar(10) NOT NULL default '',
  `stop` varchar(10) NOT NULL default '',
  `sliderDelay` int(10) unsigned NOT NULL default '0',
  `sliderSpeed` int(10) unsigned NOT NULL default '300',
  `sliderStartSlide` smallint(5) unsigned NOT NULL default '0',
  `sliderContinuous` char(1) NOT NULL default '',
  `showatdevice` char(1) NOT NULL default '1',
  `hideondesktops` char(1) NOT NULL default '',
  `hideonmobiles` char(1) NOT NULL default '',
  `com_order` varchar(32) NOT NULL default '',
  `com_perPage` smallint(5) unsigned NOT NULL default '0',
  `com_moderate` char(1) NOT NULL default '',
  `com_bbcode` char(1) NOT NULL default '',
  `com_disableCaptcha` char(1) NOT NULL default '',
  `com_requireLogin` char(1) NOT NULL default '',
  `com_template` varchar(32) NOT NULL default '',
  `metaIgnore` char(1) NOT NULL default '',
  `customTpl` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `pid_ptable_invisible_sorting` (`pid`, `ptable`, `invisible`, `sorting`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=413 ;


#
# Dumping data for table 'tl_content'
#

INSERT INTO `tl_content` VALUES ( 91, 1, 'tl_article', 128, 1357339128, 'module', '', NULL, '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 8, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 379, 3, 'tl_article', 1536, 1388942024, 'list', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:11:"Aufzählung";}', NULL, '', NULL, '', '', '', '', '', '', 'above', NULL, 'ordered', 0x613a353a7b693a303b733a33383a224c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73657465747572223b693a313b733a33383a224c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73657465747572223b693a323b733a33383a224c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73657465747572223b693a333b733a33383a224c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73657465747572223b693a343b733a33383a224c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73657465747572223b7d, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 23, 19, 'tl_article', 128, 1356645186, 'module', '', NULL, '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 5, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 318, 68, 'tl_article', 896, 1439450868, 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:20:"Kommentarabonnements";}', '<p><span>Die Nachfolgekommentare können durch Nutzer abonniert werden. Die Nutzer erhalten eine Bestätigungsemail, um zu überprüfen, ob sie der Inhaber der eingegebenen Emailadresse sind. Nutzer können laufende Kommentarabonnements jederzeit abbestellen. Die Bestätigungsemail wird Hinweise dazu enthalten.</span></p>', '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 319, 68, 'tl_article', 1024, 1439450872, 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:10:"Newsletter";}', '<p><span data-mce-mark="1">Mit dem Newsletter informieren wir Sie über uns und unsere Angebote.</span></p>\n<p><span data-mce-mark="1">Wenn Sie den Newsletter empfangen möchten, benötigen wir von Ihnen eine valide Email-Adresse sowie Informationen, die uns die Überprüfung gestatten, dass Sie der Inhaber der angegebenen Email-Adresse sind bzw. deren Inhaber mit dem Empfang des Newsletters einverstanden ist. Weitere Daten werden nicht erhoben. Diese Daten werden nur für den Versand der Newsletter verwendet und werden nicht an Dritte weiter gegeben.</span></p>\n<p>Mit der Anmeldung zum Newsletter speichern wir Ihre IP-Adresse und das Datum der Anmeldung. Diese Speicherung dient alleine dem Nachweis im Fall, dass ein Dritter eine Emailadresse missbraucht und sich ohne Wissen des Berechtigten für den Newsletterempfang anmeldet.</p>\n<p>Ihre Einwilligung zur Speicherung der Daten, der Email-Adresse sowie deren Nutzung zum Versand des Newsletters können Sie jederzeit widerrufen. Der Widerruf kann über einen Link in den Newslettern selbst, in Ihrem Profilbereich oder per Mitteilung an die oben stehenden Kontaktmöglichkeiten erfolgen.</p>', '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 320, 68, 'tl_article', 1152, 1439450873, 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:44:"Einbindung von Diensten und Inhalten Dritter";}', '<p><span>Es kann vorkommen, dass innerhalb dieses Onlineangebotes Inhalte Dritter, wie zum Beispiel Videos von YouTube, Kartenmaterial von Google-Maps, RSS-Feeds oder Grafiken von anderen Webseiten eingebunden werden. Dies setzt immer voraus, dass die Anbieter dieser Inhalte (nachfolgend bezeichnet als "Dritt-Anbieter") die IP-Adresse der Nutzer wahr nehmen. Denn ohne die IP-Adresse, könnten sie die Inhalte nicht an den Browser des jeweiligen Nutzers senden. Die IP-Adresse ist damit für die Darstellung dieser Inhalte erforderlich. Wir bemühen uns nur solche Inhalte zu verwenden, deren jeweilige Anbieter die IP-Adresse lediglich zur Auslieferung der Inhalte verwenden. Jedoch haben wir keinen Einfluss darauf, falls die Dritt-Anbieter die IP-Adresse z.B. für statistische Zwecke speichern. Soweit dies uns bekannt ist, klären wir die Nutzer darüber auf.</span></p>', '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 321, 68, 'tl_article', 1280, 1439450875, 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:7:"Cookies";}', '<p><span>Wenn Nutzer das Angebot aufrufen, werden ein oder mehrere Cookies auf seinem Rechner gespeichert. Ein Cookie ist eine kleine Datei, die eine bestimmte Zeichenfolge enthält und Ihren Browser eindeutig identifiziert. Mit Hilfe von Cookies verbessert der Anbieter den Komfort und die Qualität seines Services, indem zum Beispiel Nutzereinstellungen gespeichert werden. Cookies richten auf dem Rechner der Nutzer keinen Schaden an und enthalten keine Viren.</span></p>\n<p>Eine Nutzung des Angebotes ist auch ohne Cookies möglich. Nutzer können in Ihrem Browser das Speichern von Cookies deaktivieren, auf bestimmte Websites beschränken oder Ihren Browser so einstellen, dass er sie benachrichtigt, bevor ein Cookie gespeichert wird. Sie können die Cookies über die Datenschutzfunktionen ihres Browsers jederzeit von der Festplatte ihres Rechners löschen. In diesem Fall, könnten die Funktionen und die Benutzerfreundlichkeit des Angebots eingeschränkt werden.</p>', '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 322, 68, 'tl_article', 1408, 1363798357, 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:16:"Google Analytics";}', '<p><span>Dieses Angebot benutzt Google Analytics, einen Webanalysedienst der Google Inc. („Google“). Google Analytics verwendet sog. „Cookies“, Textdateien, die auf Computer der Nutzer gespeichert werden und die eine Analyse der Benutzung der Website durch sie ermöglichen. Die durch den Cookie erzeugten Informationen über Benutzung dieser Website durch die Nutzer werden in der Regel an einen Server von Google in den USA übertragen und dort gespeichert.</span></p>\n<p>Im Falle der Aktivierung der IP-Anonymisierung auf dieser Webseite, wird die IP-Adresse der Nutzer von Google jedoch innerhalb von Mitgliedstaaten der Europäischen Union oder in anderen Vertragsstaaten des Abkommens über den Europäischen Wirtschaftsraum zuvor gekürzt. Nur in Ausnahmefällen wird die volle IP-Adresse an einen Server von Google in den USA übertragen und dort gekürzt. Die IP-Anonymisierung ist auf dieser Website aktiv. Im Auftrag des Betreibers dieser Website wird Google diese Informationen benutzen, um die Nutzung der Website durch die Nutzer auszuwerten, um Reports über die Websiteaktivitäten zusammenzustellen und um weitere mit der Websitenutzung und der Internetnutzung verbundene Dienstleistungen gegenüber dem Websitebetreiber zu erbringen.</p>\n<p>Die im Rahmen von Google Analytics von Ihrem Browser übermittelte IP-Adresse wird nicht mit anderen Daten von Google zusammengeführt. Die Nutzer können die Speicherung der Cookies durch eine entsprechende Einstellung Ihrer Browser-Software verhindern; Dieses Angebot weist die Nutzer jedoch darauf hin, dass Sie in diesem Fall gegebenenfalls nicht sämtliche Funktionen dieser Website vollumfänglich werden nutzen können. Die Nutzer können darüber hinaus die Erfassung der durch das Cookie erzeugten und auf ihre Nutzung der Website bezogenen Daten (inkl. Ihrer IP-Adresse) an Google sowie die Verarbeitung dieser Daten durch Google verhindern, indem sie das unter dem folgenden Link verfügbare Browser-Plugin herunterladen und installieren: http://tools.google.com/dlpage/gaoptout?hl=de.</p>', '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 323, 68, 'tl_article', 1536, 1439450878, 'text', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:38:"Verwendung von Facebook Social Plugins";}', '<p><span>Dieses Angebot verwendet Social Plugins ("Plugins") des sozialen Netzwerkes facebook.com, welches von der Facebook Inc., 1601 S. California Ave, Palo Alto, CA 94304, USA betrieben wird ("Facebook"). Die Plugins sind an einem der Facebook Logos erkennbar (weißes „f“ auf blauer Kachel oder ein „Daumen hoch“-Zeichen) oder sind mit dem Zusatz "Facebook Social Plugin" gekennzeichnet. Die Liste und das Aussehen der Facebook Social Plugins kann hier eingesehen werden:[nbsp]</span><a href="https://developers.facebook.com/docs/plugins/">https://developers.facebook.com/docs/plugins/</a><span>.</span></p>\n<p><span>Wenn ein Nutzer eine Webseite dieses Angebots aufruft, die ein solches Plugin enthält, baut sein Browser eine direkte Verbindung mit den Servern von Facebook auf. Der Inhalt des Plugins wird von Facebook direkt an Ihren Browser übermittelt und von diesem in die Webseite eingebunden. Der Anbieter hat daher keinen Einfluss auf den Umfang der Daten, die Facebook mit Hilfe dieses Plugins erhebt und informiert die Nutzer daher entsprechend seinem</span><a href="http://www.facebook.com/help/?faq=17512">Kenntnisstand</a><span>:</span></p>\n<p>Durch die Einbindung der Plugins erhält Facebook die Information, dass ein Nutzer die entsprechende Seite des Angebots aufgerufen hat. Ist der Nutzer bei Facebook eingeloggt, kann Facebook den Besuch seinem Facebook-Konto zuordnen. Wenn Nutzer mit den Plugins interagieren, zum Beispiel den Like Button betätigen oder einen Kommentar abgeben, wird die entsprechende Information von Ihrem Browser direkt an Facebook übermittelt und dort gespeichert. Falls ein Nutzer kein Mitglied von Facebook ist, besteht trotzdem die Möglichkeit, dass Facebook seine IP-Adresse in Erfahrung bringt und speichert. Laut Facebook wird in Deutschland nur eine anonymisierte IP-Adresse gespeichert.</p>\n<p><span>Zweck und Umfang der Datenerhebung und die weitere Verarbeitung und Nutzung der Daten durch Facebook sowie die diesbezüglichen Rechte und Einstellungsmöglichkeiten zum Schutz der Privatsphäre der Nutzer , können diese den Datenschutzhinweisen von Facebook entnehmen:[nbsp]</span><a href="https://www.facebook.com/about/privacy/">https://www.facebook.com/about/privacy/</a><span>.</span></p>\n<p>Wenn ein Nutzer Facebookmitglied ist und nicht möchte, dass Facebook über dieses Angebot Daten über ihn sammelt und mit seinen bei Facebook gespeicherten Mitgliedsdaten verknüpft, muss er sich vor dem Besuch des Internetauftritts bei Facebook ausloggen.</p>\n<p><span>Ebenfalls ist es möglich Facebook-Social-Plugins mit Add-ons für Ihren Browser zu blocken, zum Beispiel mit dem "</span><a href="http://webgraph.com/resources/facebookblocker/">Facebook Blocker</a><span>".</span></p>', '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 324, 68, 'tl_article', 1664, 1439450880, 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:28:"+1 Schaltfläche von Google+";}', '<p>Dieses Angebot verwendet die “+1″-Schaltfläche des sozialen Netzwerkes Google Plus, welches von der Google Inc., 1600 Amphitheatre Parkway, Mountain View, CA 94043, United States betrieben wird (“Google”). Der Button ist an dem Zeichen “+1″ auf weißem oder farbigen Hintergrund erkennbar.</p>\n<p>Wenn ein Nutzer eine Webseite dieses Angebotes aufruft, die eine solche Schaltfläche enthält, baut der Browser eine direkte Verbindung mit den Servern von Google auf. Der Inhalt der “+1″-Schaltfläche wird von Google direkt an seinen Browser übermittelt und von diesem in die Webseite eingebunden. der Anbieter hat daher keinen Einfluss auf den Umfang der Daten, die Google mit der Schaltfläche erhebt. Laut Google werden ohne einen Klick auf die Schaltfläche keine personenbezogenen Daten erhoben. Nur bei eingeloggten Mitgliedern, werden solche Daten, unter anderem die IP-Adresse, erhoben und verarbeitet.</p>\n<p>Zweck und Umfang der Datenerhebung und die weitere Verarbeitung und Nutzung der Daten durch Google sowie Ihre diesbezüglichen Rechte und Einstellungsmöglichkeiten zum Schutz Ihrer Privatsphäre können die Nutzer Googles Datenschutzhinweisen zu der “+1″-Schaltfläche entnehmen: http://www.google.com/intl/de/+/policy/+1button.html und der FAQ: http://www.google.com/intl/de/+1/button/.</p>', '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 205, 17, 'tl_article', 64, 1363701393, 'text', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:24:"403 - Zugriff verweigert";}', '<p>Nicht öffentlicher Bereich. Der Zugriff wurde mangels Berechtigung verweigert.</p>\n<p><a href="{{link_url::3}}">[gt] zur Startseite</a></p>', '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 204, 18, 'tl_article', 32, 1363701020, 'text', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:45:"404 - Die Seite konnte nicht gefunden werden.";}', '<p>Der angeforderte URL konnte auf dem Server leider nicht gefunden werden. Falls Sie den URL manuell eingegeben haben, überprüfen Sie bitte die Schreibweise und versuchen Sie es erneut.</p>\n<p><a href="{{link_url::3}}">[gt] zur Startseite</a></p>', '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 66, 30, 'tl_article', 128, 1363798922, 'text', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:9:"Impressum";}', '<p><span data-mce-mark="1">Max Mustermann</span></p>\n<p>Musterstraße 1<br>00000 Musterstadt</p>\n<table border="0">\n<tbody>\n<tr>\n<td>Telefon</td>\n<td>+49 (0)000000</td>\n</tr>\n<tr>\n<td>E-Mail</td>\n<td>info@example.com<a href="mailto:info@tanzstelle-r.de" target="_blank"><br></a></td>\n</tr>\n<tr>\n<td>Internet[nbsp] [nbsp]</td>\n<td>www.example.com</td>\n</tr>\n</tbody>\n</table>\n<p><span>Vertretungsberechtigter Geschäftsführer**: Max Mustermann</span><br><br><span>Registergericht: Amtsgericht Musterstadt</span><br><span>Registernummer: HR 0000</span></p>\n<p>Umsatzsteuer-Identifikationsnummer gemäß § 27 a Umsatzsteuergesetz: DE 0000000</p>\n<p>Inhaltlich Verantwortlicher gemäß § 55 Abs. 2 RStV: Fred Friedlich (Anschrift wie oben) ****</p>\n<p>[nbsp]</p>', '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 69, 30, 'tl_article', 512, 1363799003, 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:14:"Programmierung";}', '<p>Martin Schwenzer,[nbsp]<a href="http://derhaeuptling.com/" target="_blank">www.derhäuptling.com<br></a></p>\n<p>[nbsp]</p>', '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 327, 30, 'tl_article', 640, 1363799031, 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:6:"Grafik";}', '<p class="ce_headline rot">Name, url</p>\n<p class="ce_headline rot">[nbsp]</p>', '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 120, 2, 'tl_article', 128, 1453823024, 'module', '', NULL, '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 35, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 325, 68, 'tl_article', 1792, 1439450881, 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:7:"Twitter";}', '<p><span data-mce-mark="1">Dieses Angebot nutzt die[nbsp]</span><a href="https://twitter.com/about/resources/buttons">Schaltflächen des Dienstes Twitter</a><span data-mce-mark="1">. Diese Schaltflächen werden angeboten durch die Twitter Inc., 795 Folsom St., Suite 600, San Francisco, CA 94107, USA. Sie sind an Begriffen wie "Twitter" oder "Folge", verbunden mit einem stillisierten blauen Vogel erkennbar. Mit Hilfe der Schaltflächen ist es möglich einen Beitrag oder Seite dieses Angebotes bei Twitter zu teilen oder dem Anbieter bei Twitter zu folgen.</span></p>\n<p>Wenn ein Nutzer eine Webseite dieses Internetauftritts aufruft, die einen solchen Button enthält, baut sein Browser eine direkte Verbindung mit den Servern von Twitter auf. Der Inhalt des Twitter-Schaltflächen wird von Twitter direkt an den Browser des Nutzers übermittelt. Der Anbieter hat daher keinen Einfluss auf den Umfang der Daten, die Twitter mit Hilfe dieses Plugins erhebt und informiert die Nutzer entsprechend seinem Kenntnisstand. Nach diesem wird lediglich die IP-Adresse des Nutzers die URL der jeweiligen Webseite beim Bezug des Buttons mit übermittelt, aber nicht für andere Zwecke, als die Darstellung des Buttons, genutzt.</p>\n<p><span>Weitere Informationen hierzu finden sich in der Datenschutzerklärung von Twitter unter http://twitter.com/privacy.</span></p>', '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 314, 68, 'tl_article', 384, 1363798091, 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:30:"Zugriffsdaten/ Server-Logfiles";}', '<p><span data-mce-mark="1">Der Anbieter (beziehungsweise sein Webspace-Provider) erhebt Daten über jeden Zugriff auf das Angebot (so genannte Serverlogfiles). Zu den Zugriffsdaten gehören:</span></p>\n<p>Name der abgerufenen Webseite, Datei, Datum und Uhrzeit des Abrufs, übertragene Datenmenge, Meldung über erfolgreichen Abruf, Browsertyp nebst Version, das Betriebssystem des Nutzers, Referrer URL (die zuvor besuchte Seite), IP-Adresse und der anfragende Provider.</p>\n<p>Der Anbieter verwendet die Protokolldaten nur für statistische Auswertungen zum Zweck des Betriebs, der Sicherheit und der Optimierung des Angebotes. Der Anbieterbehält sich jedoch vor, die Protokolldaten nachträglich zu überprüfen, wenn aufgrund konkreter Anhaltspunkte der berechtigte Verdacht einer rechtswidrigen Nutzung besteht.</p>', '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 315, 68, 'tl_article', 512, 1363798099, 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:34:"Umgang mit personenbezogenen Daten";}', '<p><span>Personenbezogene Daten sind Informationen, mit deren Hilfe eine Person bestimmbar ist, also Angaben, die zurück zu einer Person verfolgt werden können. Dazu gehören der Name, die Emailadresse oder die Telefonnummer. Aber auch Daten über Vorlieben, Hobbies, Mitgliedschaften oder welche Webseiten von jemandem angesehen wurden zählen zu personenbezogenen Daten.</span></p>\n<p>Personenbezogene Daten werden von dem Anbieter nur dann erhoben, genutzt und weiter gegeben, wenn dies gesetzlich erlaubt ist oder die Nutzer in die Datenerhebung einwilligen.</p>', '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 316, 68, 'tl_article', 640, 1363798343, 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:15:"Kontaktaufnahme";}', '<p><span>Bei der Kontaktaufnahme mit dem Anbieter (zum Beispiel per Kontaktformular oder E-Mail) werden die Angaben des Nutzers zwecks Bearbeitung der Anfrage sowie für den Fall, dass Anschlussfragen entstehen, gespeichert.</span></p>', '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 317, 68, 'tl_article', 768, 1439450866, 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:24:"Kommentare und Beiträge";}', '<p><span>Wenn Nutzer Kommentare im Blog oder sonstige Beiträge hinterlassen, werden ihre IP-Adressen gespeichert. Das erfolgt zur Sicherheit des Anbieters, falls jemand in Kommentaren und Beiträgen widerrechtliche Inhalte schreibt (Beleidigungen, verbotene politische Propaganda, etc.). In diesem Fall kann der Anbieter selbst für den Kommentar oder Beitrag belangt werden und ist daher an der Identität des Verfassers interessiert.</span></p>', '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 159, 17, 'tl_calendar_events', 32, 1404137093, 'text', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', '<p>Lorem ipsum dolor sit amet, et simul minimum reprimique qui. Ei eum liber vituperata definitionem. Mea scripta maluisset dissentiunt id, in mundi habemus duo, cum justo integre et. Qui ea saepe ancillae explicari, no pro corpora intellegat incorrupte. Quaestio delicata reformidans mel ad, cum ei viderer integre. Cu quo mutat feugiat, in pri nominavi honestatis, at duo utinam oporteat perfecto.</p>\n<p>Ne graece prompta pro, et qui nisl integre consequat. Sit nibh omnis partem te, mentitum delectus intellegat id vel. Facer aeterno eligendi no duo, vel te falli nihil maiorum. Ut mel noster inimicus, assum minimum qui an, eam an mollis placerat. Stet purto assueverit qui ut.</p>\n<p>Meliore vituperatoribus cu eos, solum mollis ut pri. Suas reque diceret ut mei, an eam suas habemus adipiscing, id vim sumo dicam molestiae. His vitae utroque atomorum no, quo fugit virtute epicurei ea, qui scripta eligendi praesent ex. Inani appareat invidunt at eos. No has esse dicta temporibus, mea id vidit iudico, postea aliquam eu mel. Ex illud ornatus mea, pri audiam prompta nostrud id.</p>\n<p>Est ei essent latine, ea cum elitr voluptua intellegam. Nostrud rationibus eu quo, per ne eripuit postulant. Nec facilis fuisset tractatos id. Id persius detraxit per.</p>\n<p>At vix commodo veritus verterem. Cu feugait fabellas nam, facer aperiam corpora ut per, vix ei clita argumentum. Ex has inermis detraxit omittantur, ex est blandit aliquando. An eum postea facilisi, vim quod tritani moderatius cu, oporteat persecuti sit no.</p>', '1', 0x816e2ab0004a11e4b32f001c42f7180d, '', '', 'a:3:{i:0;s:3:"480";i:1;s:0:"";i:2;s:12:"proportional";}', '', '', '', 'right', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 309, 3, 'tl_article', 640, 1369646196, 'text', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:12:"Überschrift";}', '<p>Main Text</p>', '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 311, 68, 'tl_article', 128, 1363796639, 'headline', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:21:"Datenschutzerklärung";}', NULL, '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 312, 68, 'tl_article', 256, 1411633984, 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:15:"Geltungsbereich";}', '<p><span>Diese Datenschutzerklärung klärt Nutzer über die Art, den Umfang und Zwecke der Erhebung und</span><br><span>Verwendung personenbezogener Daten durch den verantwortlichen Anbieter (siehe Impressum) auf dieser Website (im folgenden “Angebot”) auf.</span></p>', '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 360, 15, 'tl_news', 896, 1390036618, 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:0:"";}', '<p>Lorem ipsum dolor sit amet, et simul minimum reprimique qui. Ei eum liber vituperata definitionem. Mea scripta maluisset dissentiunt id, in mundi habemus duo, cum justo integre et. Qui ea saepe ancillae explicari, no pro corpora intellegat incorrupte. Quaestio delicata reformidans mel ad, cum ei viderer integre. Cu quo mutat feugiat, in pri nominavi honestatis, at duo utinam oporteat perfecto.</p>\n<p>Ne graece prompta pro, et qui nisl integre consequat. Sit nibh omnis partem te, mentitum delectus intellegat id vel. Facer aeterno eligendi no duo, vel te falli nihil maiorum. Ut mel noster inimicus, assum minimum qui an, eam an mollis placerat. Stet purto assueverit qui ut.</p>\n<p>Meliore vituperatoribus cu eos, solum mollis ut pri. Suas reque diceret ut mei, an eam suas habemus adipiscing, id vim sumo dicam molestiae. His vitae utroque atomorum no, quo fugit virtute epicurei ea, qui scripta eligendi praesent ex. Inani appareat invidunt at eos. No has esse dicta temporibus, mea id vidit iudico, postea aliquam eu mel. Ex illud ornatus mea, pri audiam prompta nostrud id.</p>\n<p>Est ei essent latine, ea cum elitr voluptua intellegam. Nostrud rationibus eu quo, per ne eripuit postulant. Nec facilis fuisset tractatos id. Id persius detraxit per.</p>\n<p>At vix commodo veritus verterem. Cu feugait fabellas nam, facer aperiam corpora ut per, vix ei clita argumentum. Ex has inermis detraxit omittantur, ex est blandit aliquando. An eum postea facilisi, vim quod tritani moderatius cu, oporteat persecuti sit no.</p>', '1', 0x585f84c673c711e38a90fcc5e93f7ebc, '', '', 'a:3:{i:0;s:3:"480";i:1;s:0:"";i:2;s:12:"proportional";}', '', '1', '', 'right', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 182, 45, 'tl_article', 128, 1358783707, 'module', '', NULL, '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 4, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 183, 45, 'tl_article', 64, 1388930321, 'headline', 'a:2:{s:4:"unit";s:2:"h3";s:5:"value";s:22:"Nächste Veranstaltung";}', NULL, '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 357, 8, 'tl_article', 32, 1406644513, 'html', '', NULL, '', NULL, '', '', '', '', '', '', 'above', '<div class="logo">\n  <a href="/"><img src="files/dist/images/logo.svgz" width="200" height="125" alt="Logo"></a>\n</div>', '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 0, '', NULL, '', '', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 300, 59, 'tl_article', 128, 1389172342, 'headline', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:7:"#footer";}', '<p>Footer</p>', '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '1', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 391, 3, 'tl_article', 32, 1408711625, 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:10:"Headline 2";}', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>[nbsp]</p>', '1', 0x0176e0d6004a11e4b32f001c42f7180d, '', '', 'a:3:{i:0;s:3:"480";i:1;s:0:"";i:2;s:12:"proportional";}', '', '', '', 'right', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 326, 68, 'tl_article', 2048, 1363798310, 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:58:"Widerruf, Änderungen, Berichtigungen und Aktualisierungen";}', '<p><span>Der Nutzer hat das Recht, auf Antrag unentgeltlich Auskunft zu erhalten über die personenbezogenen Daten, die über ihn gespeichert wurden. Zusätzlich hat der Nutzer das Recht auf Berichtigung unrichtiger Daten, Sperrung und Löschung seiner personenbezogenen Daten, soweit dem keine gesetzliche Aufbewahrungspflicht entgegensteht.</span></p>', '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 332, 3, 'tl_article', 896, 1404134375, 'text', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', '1', 0xca204136004911e4b32f001c42f7180d, '', '', 'a:3:{i:0;s:3:"480";i:1;s:0:"";i:2;s:12:"proportional";}', '', '', '', 'left', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 331, 3, 'tl_article', 768, 1404135115, 'sliderStart', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:6:"Slider";}', NULL, '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 2000, 600, 0, '1', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 333, 3, 'tl_article', 1280, 1369646256, 'sliderStop', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', NULL, '', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', '', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 335, 3, 'tl_article', 1024, 1404134481, 'text', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', '1', 0xca204154004911e4b32f001c42f7180d, '', '', 'a:3:{i:0;s:3:"480";i:1;s:0:"";i:2;s:12:"proportional";}', '', '', '', 'left', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 337, 4, 'tl_article', 128, 1388674722, 'text', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', '<p>Page 4</p>', '', NULL, '', '', 'a:3:{i:0;s:3:"200";i:1;s:0:"";i:2;s:12:"proportional";}', '', '1', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0x613a313a7b693a303b733a31363a22657a8ff9716e11e3aafbdc262b65792f223b7d, 0x613a353a7b693a303b733a31363a22657a8ff8716e11e3aafbdc262b65792f223b693a313b733a31363a226a10dd7e716e11e3aafbdc262b65792f223b693a323b733a31363a226f4cdb95716e11e3aafbdc262b65792f223b693a333b733a31363a22746743c6716e11e3aafbdc262b65792f223b693a343b733a31363a2279e0af36716e11e3aafbdc262b65792f223b7d, '', 4, 0, 0, 'custom', 'gallery_default', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 341, 3, 'tl_article', 64, 1408710722, 'gallery', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:7:"Galerie";}', NULL, '', NULL, '', '', 'a:3:{i:0;s:3:"110";i:1;s:3:"110";i:2;s:13:"center_center";}', '', '1', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0x613a313a7b693a303b733a31363a223f2681fe004811e4b32f001c42f7180d223b7d, 0x613a31343a7b693a303b733a31363a22ca204154004911e4b32f001c42f7180d223b693a313b733a31363a22ca204140004911e4b32f001c42f7180d223b693a323b733a31363a22ca204136004911e4b32f001c42f7180d223b693a333b733a31363a220176e0f4004a11e4b32f001c42f7180d223b693a343b733a31363a220176e0e0004a11e4b32f001c42f7180d223b693a353b733a31363a220176e0d6004a11e4b32f001c42f7180d223b693a363b733a31363a220176e0cc004a11e4b32f001c42f7180d223b693a373b733a31363a22816e2ab0004a11e4b32f001c42f7180d223b693a383b733a31363a22816e2aa6004a11e4b32f001c42f7180d223b693a393b733a31363a22816e2a9c004a11e4b32f001c42f7180d223b693a31303b733a31363a22423d6212004911e4b32f001c42f7180d223b693a31313b733a31363a22423d61fe004911e4b32f001c42f7180d223b693a31323b733a31363a22423d61f4004911e4b32f001c42f7180d223b693a31333b733a31363a22ca20415e004911e4b32f001c42f7180d223b7d, '', 5, 0, 0, 'name_asc', 'gallery_default', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 348, 3, 'tl_article', 384, 1404134375, 'accordionSingle', '', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', '1', 0x816e2ab0004a11e4b32f001c42f7180d, '', '', 'a:3:{i:0;s:3:"480";i:1;s:0:"";i:2;s:12:"proportional";}', '', '', '', 'left', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'Akkordeon', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 346, 3, 'tl_article', 128, 1408709087, 'accordionSingle', '', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', '1', 0x423d6212004911e4b32f001c42f7180d, '', '', 'a:3:{i:0;s:3:"480";i:1;s:0:"";i:2;s:12:"proportional";}', '', '1', '', 'left', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'Akkordeon', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 347, 3, 'tl_article', 256, 1404134375, 'accordionSingle', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:9:"Akkordeon";}', '<h2>Headline</h2>\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', '1', 0x0176e0f4004a11e4b32f001c42f7180d, '', '', 'a:3:{i:0;s:3:"480";i:1;s:0:"";i:2;s:12:"proportional";}', '', '', '', 'right', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', 'Akkordeon', '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 359, 3, 'tl_article', 1152, 1404134375, 'text', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', '1', 0xca204140004911e4b32f001c42f7180d, '', '', 'a:3:{i:0;s:3:"480";i:1;s:0:"";i:2;s:12:"proportional";}', '', '', '', 'right', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 373, 73, 'tl_article', 128, 1388939422, 'module', '', NULL, '', NULL, '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 36, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 374, 1, 'tl_article', 64, 1388939617, 'headline', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:20:"Aktuelle Nachrichten";}', NULL, '', NULL, '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 375, 72, 'tl_article', 128, 1388939784, 'headline', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:18:"Nachrichten Archiv";}', NULL, '', NULL, '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 376, 72, 'tl_article', 256, 1388939801, 'module', '', NULL, '', NULL, '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 37, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 356, 60, 'tl_article', 32, 1408718130, 'module', '', NULL, '', NULL, '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 21, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:9:"nav_aside";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 358, 59, 'tl_article', 256, 1389171856, 'module', '', NULL, '', NULL, '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 33, '', NULL, '', 'a:2:{i:0;s:10:"nav_footer";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 361, 16, 'tl_news', 896, 1427661547, 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:0:"";}', '<p>Lorem ipsum dolor sit amet, et simul minimum reprimique qui. Ei eum liber vituperata definitionem. Mea scripta maluisset dissentiunt id, in mundi habemus duo, cum justo integre et. Qui ea saepe ancillae explicari, no pro corpora intellegat incorrupte. Quaestio delicata reformidans mel ad, cum ei viderer integre. Cu quo mutat feugiat, in pri nominavi honestatis, at duo utinam oporteat perfecto.</p>\n<p>Ne graece prompta pro, et qui nisl integre consequat. Sit nibh omnis partem te, mentitum delectus intellegat id vel. Facer aeterno eligendi no duo, vel te falli nihil maiorum. Ut mel noster inimicus, assum minimum qui an, eam an mollis placerat. Stet purto assueverit qui ut.</p>\n<p>Meliore vituperatoribus cu eos, solum mollis ut pri. Suas reque diceret ut mei, an eam suas habemus adipiscing, id vim sumo dicam molestiae. His vitae utroque atomorum no, quo fugit virtute epicurei ea, qui scripta eligendi praesent ex. Inani appareat invidunt at eos. No has esse dicta temporibus, mea id vidit iudico, postea aliquam eu mel. Ex illud ornatus mea, pri audiam prompta nostrud id.</p>\n<p>Est ei essent latine, ea cum elitr voluptua intellegam. Nostrud rationibus eu quo, per ne eripuit postulant. Nec facilis fuisset tractatos id. Id persius detraxit per.</p>\n<p>At vix commodo veritus verterem. Cu feugait fabellas nam, facer aperiam corpora ut per, vix ei clita argumentum. Ex has inermis detraxit omittantur, ex est blandit aliquando. An eum postea facilisi, vim quod tritani moderatius cu, oporteat persecuti sit no.</p>', '1', 0xb438b60b7f9811e39d9fb12ed291633a, '', '', 'a:3:{i:0;s:3:"480";i:1;s:0:"";i:2;s:12:"proportional";}', '', '1', '', 'right', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 362, 17, 'tl_news', 896, 1390036558, 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:0:"";}', '<p>Lorem ipsum dolor sit amet, et simul minimum reprimique qui. Ei eum liber vituperata definitionem. Mea scripta maluisset dissentiunt id, in mundi habemus duo, cum justo integre et. Qui ea saepe ancillae explicari, no pro corpora intellegat incorrupte. Quaestio delicata reformidans mel ad, cum ei viderer integre. Cu quo mutat feugiat, in pri nominavi honestatis, at duo utinam oporteat perfecto.</p>\n<p>Ne graece prompta pro, et qui nisl integre consequat. Sit nibh omnis partem te, mentitum delectus intellegat id vel. Facer aeterno eligendi no duo, vel te falli nihil maiorum. Ut mel noster inimicus, assum minimum qui an, eam an mollis placerat. Stet purto assueverit qui ut.</p>\n<p>Meliore vituperatoribus cu eos, solum mollis ut pri. Suas reque diceret ut mei, an eam suas habemus adipiscing, id vim sumo dicam molestiae. His vitae utroque atomorum no, quo fugit virtute epicurei ea, qui scripta eligendi praesent ex. Inani appareat invidunt at eos. No has esse dicta temporibus, mea id vidit iudico, postea aliquam eu mel. Ex illud ornatus mea, pri audiam prompta nostrud id.</p>\n<p>Est ei essent latine, ea cum elitr voluptua intellegam. Nostrud rationibus eu quo, per ne eripuit postulant. Nec facilis fuisset tractatos id. Id persius detraxit per.</p>\n<p>At vix commodo veritus verterem. Cu feugait fabellas nam, facer aperiam corpora ut per, vix ei clita argumentum. Ex has inermis detraxit omittantur, ex est blandit aliquando. An eum postea facilisi, vim quod tritani moderatius cu, oporteat persecuti sit no.</p>', '1', 0xb438b6147f9811e39d9fb12ed291633a, '', '', 'a:3:{i:0;s:3:"480";i:1;s:0:"";i:2;s:12:"proportional";}', '', '1', '', 'right', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 363, 18, 'tl_news', 896, 1390036484, 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:0:"";}', '<p>Lorem ipsum dolor sit amet, et simul minimum reprimique qui. Ei eum liber vituperata definitionem. Mea scripta maluisset dissentiunt id, in mundi habemus duo, cum justo integre et. Qui ea saepe ancillae explicari, no pro corpora intellegat incorrupte. Quaestio delicata reformidans mel ad, cum ei viderer integre. Cu quo mutat feugiat, in pri nominavi honestatis, at duo utinam oporteat perfecto.</p>\n<p>Ne graece prompta pro, et qui nisl integre consequat. Sit nibh omnis partem te, mentitum delectus intellegat id vel. Facer aeterno eligendi no duo, vel te falli nihil maiorum. Ut mel noster inimicus, assum minimum qui an, eam an mollis placerat. Stet purto assueverit qui ut.</p>\n<p>Meliore vituperatoribus cu eos, solum mollis ut pri. Suas reque diceret ut mei, an eam suas habemus adipiscing, id vim sumo dicam molestiae. His vitae utroque atomorum no, quo fugit virtute epicurei ea, qui scripta eligendi praesent ex. Inani appareat invidunt at eos. No has esse dicta temporibus, mea id vidit iudico, postea aliquam eu mel. Ex illud ornatus mea, pri audiam prompta nostrud id.</p>\n<p>Est ei essent latine, ea cum elitr voluptua intellegam. Nostrud rationibus eu quo, per ne eripuit postulant. Nec facilis fuisset tractatos id. Id persius detraxit per.</p>\n<p>At vix commodo veritus verterem. Cu feugait fabellas nam, facer aperiam corpora ut per, vix ei clita argumentum. Ex has inermis detraxit omittantur, ex est blandit aliquando. An eum postea facilisi, vim quod tritani moderatius cu, oporteat persecuti sit no.</p>', '1', 0xb438b61e7f9811e39d9fb12ed291633a, '', '', 'a:3:{i:0;s:3:"480";i:1;s:0:"";i:2;s:12:"proportional";}', '', '1', '', 'right', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 364, 19, 'tl_news', 896, 1390036585, 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:0:"";}', '<p>Lorem ipsum dolor sit amet, et simul minimum reprimique qui. Ei eum liber vituperata definitionem. Mea scripta maluisset dissentiunt id, in mundi habemus duo, cum justo integre et. Qui ea saepe ancillae explicari, no pro corpora intellegat incorrupte. Quaestio delicata reformidans mel ad, cum ei viderer integre. Cu quo mutat feugiat, in pri nominavi honestatis, at duo utinam oporteat perfecto.</p>\n<p>Ne graece prompta pro, et qui nisl integre consequat. Sit nibh omnis partem te, mentitum delectus intellegat id vel. Facer aeterno eligendi no duo, vel te falli nihil maiorum. Ut mel noster inimicus, assum minimum qui an, eam an mollis placerat. Stet purto assueverit qui ut.</p>\n<p>Meliore vituperatoribus cu eos, solum mollis ut pri. Suas reque diceret ut mei, an eam suas habemus adipiscing, id vim sumo dicam molestiae. His vitae utroque atomorum no, quo fugit virtute epicurei ea, qui scripta eligendi praesent ex. Inani appareat invidunt at eos. No has esse dicta temporibus, mea id vidit iudico, postea aliquam eu mel. Ex illud ornatus mea, pri audiam prompta nostrud id.</p>\n<p>Est ei essent latine, ea cum elitr voluptua intellegam. Nostrud rationibus eu quo, per ne eripuit postulant. Nec facilis fuisset tractatos id. Id persius detraxit per.</p>\n<p>At vix commodo veritus verterem. Cu feugait fabellas nam, facer aperiam corpora ut per, vix ei clita argumentum. Ex has inermis detraxit omittantur, ex est blandit aliquando. An eum postea facilisi, vim quod tritani moderatius cu, oporteat persecuti sit no.</p>', '1', 0xb438b60a7f9811e39d9fb12ed291633a, '', '', 'a:3:{i:0;s:3:"480";i:1;s:0:"";i:2;s:12:"proportional";}', '', '1', '', 'right', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 365, 45, 'tl_article', 384, 1388930264, 'module', '', NULL, '', NULL, '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 9, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 366, 45, 'tl_article', 256, 1388930309, 'headline', 'a:2:{s:4:"unit";s:2:"h3";s:5:"value";s:21:"Veranstaltungs Archiv";}', NULL, '', NULL, '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '{{link_url::26}}', '', '', 'Veranstaltungs Archiv', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 368, 71, 'tl_article', 256, 1388929371, 'module', '', NULL, '', NULL, '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 34, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 369, 18, 'tl_calendar_events', 32, 1404136917, 'text', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', '<p>Lorem ipsum dolor sit amet, et simul minimum reprimique qui. Ei eum liber vituperata definitionem. Mea scripta maluisset dissentiunt id, in mundi habemus duo, cum justo integre et. Qui ea saepe ancillae explicari, no pro corpora intellegat incorrupte. Quaestio delicata reformidans mel ad, cum ei viderer integre. Cu quo mutat feugiat, in pri nominavi honestatis, at duo utinam oporteat perfecto.</p>\n<p>Ne graece prompta pro, et qui nisl integre consequat. Sit nibh omnis partem te, mentitum delectus intellegat id vel. Facer aeterno eligendi no duo, vel te falli nihil maiorum. Ut mel noster inimicus, assum minimum qui an, eam an mollis placerat. Stet purto assueverit qui ut.</p>\n<p>Meliore vituperatoribus cu eos, solum mollis ut pri. Suas reque diceret ut mei, an eam suas habemus adipiscing, id vim sumo dicam molestiae. His vitae utroque atomorum no, quo fugit virtute epicurei ea, qui scripta eligendi praesent ex. Inani appareat invidunt at eos. No has esse dicta temporibus, mea id vidit iudico, postea aliquam eu mel. Ex illud ornatus mea, pri audiam prompta nostrud id.</p>\n<p>Est ei essent latine, ea cum elitr voluptua intellegam. Nostrud rationibus eu quo, per ne eripuit postulant. Nec facilis fuisset tractatos id. Id persius detraxit per.</p>\n<p>At vix commodo veritus verterem. Cu feugait fabellas nam, facer aperiam corpora ut per, vix ei clita argumentum. Ex has inermis detraxit omittantur, ex est blandit aliquando. An eum postea facilisi, vim quod tritani moderatius cu, oporteat persecuti sit no.</p>', '1', 0x0176e0e0004a11e4b32f001c42f7180d, '', '', 'a:3:{i:0;s:3:"480";i:1;s:0:"";i:2;s:12:"proportional";}', '', '', '', 'right', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 370, 2, 'tl_article', 64, 1388931242, 'headline', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:24:"nächste Veranstaltungen";}', NULL, '', NULL, '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 372, 71, 'tl_article', 128, 1388937835, 'headline', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:21:"Veranstaltungs Archiv";}', NULL, '', NULL, '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 377, 45, 'tl_article', 512, 1404128590, 'hyperlink', 'a:2:{s:4:"unit";s:2:"h3";s:5:"value";s:18:"Nachrichten Archiv";}', NULL, '', NULL, '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '{{link_url::27}}', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 378, 72, 'tl_article', 192, 1388940016, 'module', '', NULL, '', NULL, '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 38, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 380, 3, 'tl_article', 1664, 1388942010, 'list', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', NULL, '', NULL, '', '', '', '', '', '', 'above', NULL, 'unordered', 0x613a353a7b693a303b733a33383a224c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73657465747572223b693a313b733a33383a224c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73657465747572223b693a323b733a33383a224c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73657465747572223b693a333b733a33383a224c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73657465747572223b693a343b733a33383a224c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e73657465747572223b7d, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 381, 3, 'tl_article', 1792, 1388942822, 'text', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', '<ul>\n<li>Lorem ipsum dolor sit amet, consetetur</li>\n<li>Lorem ipsum dolor sit amet, consetetur</li>\n<li>Lorem ipsum dolor sit amet, consetetur</li>\n</ul>\n<ol>\n<li>Lorem ipsum dolor sit amet, consetetur</li>\n<li>Lorem ipsum dolor sit amet, consetetur</li>\n<li>Lorem ipsum dolor sit amet, consetetur</li>\n</ol>', '', NULL, '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 382, 75, 'tl_article', 128, 1389014281, 'text', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', '<p>Page 4</p>', '', NULL, '', '', 'a:3:{i:0;s:3:"200";i:1;s:0:"";i:2;s:12:"proportional";}', '', '1', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0x613a313a7b693a303b733a31363a22657a8ff9716e11e3aafbdc262b65792f223b7d, 0x613a353a7b693a303b733a31363a22657a8ff8716e11e3aafbdc262b65792f223b693a313b733a31363a226a10dd7e716e11e3aafbdc262b65792f223b693a323b733a31363a226f4cdb95716e11e3aafbdc262b65792f223b693a333b733a31363a22746743c6716e11e3aafbdc262b65792f223b693a343b733a31363a2279e0af36716e11e3aafbdc262b65792f223b7d, '', 4, 0, 0, 'custom', 'gallery_default', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 383, 76, 'tl_article', 128, 1392735240, 'form', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:15:"Kontaktformular";}', '<p>Page 4</p>', '', NULL, '', '', 'a:3:{i:0;s:3:"200";i:1;s:0:"";i:2;s:12:"proportional";}', '', '1', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 0x613a313a7b693a303b733a31363a22657a8ff9716e11e3aafbdc262b65792f223b7d, 0x613a353a7b693a303b733a31363a22657a8ff8716e11e3aafbdc262b65792f223b693a313b733a31363a226a10dd7e716e11e3aafbdc262b65792f223b693a323b733a31363a226f4cdb95716e11e3aafbdc262b65792f223b693a333b733a31363a22746743c6716e11e3aafbdc262b65792f223b693a343b733a31363a2279e0af36716e11e3aafbdc262b65792f223b7d, '', 4, 0, 0, 'custom', 'gallery_default', NULL, '', 0x00000000000000000000000000000000, '', '', 0, 0, 0, 1, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 384, 1, 'tl_article', 32, 1453306646, 'text', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:20:"Was ist Lorem ipsum?";}', '<p style="text-align: center;"><span class="text-intro">Lorem ipsum ist Text, der gerne als Platzhalter genommen wird, wenn es noch keinen "richtigen" Text gibt. Der Grund dafür ist ein angenehmer Zeilenfall, der einen guten Eindruck von dem finalen Layout vermittelt.</span></p>\n<p>Wenn man <a href="#">beispielsweise</a> eine Broschüre oder Buch entwirft, so kann der Designer auf Lorem ipsum Text zurückgreifen, wenn noch kein Text vorhanden ist. Lorem ipsum Text kommt dem Endprodukt so nahe, das das Buch fertig aussieht. Das Buch oder Broschüre kann so dem Kunden zur Abnahme des Designs vorgelegt werden.</p>\n<p>Der wichtigste Faktor beim Gebrauch von Lorem ipsum Text ist, das der Text realistisch wirkt, andernfalls wird das Layout des Buches oder der Broschüre nicht gut wirken. Lorem ipsum ist also ein Blindtext ohne Bedeutung, der aber dennoch "echtem" Text täuschend ähnlich sieht.</p>\n<p>Andere Namen für Lorem ipsum Text sind:</p>\n<p>- Blindtext<br>- Dummytext<br>- Platzhaltertext<br>- Nachahmungstext<br>- Fülltext</p>\n<p><br>dummy text layout</p>\n<p><br> <br>Woher kommt Lorem ipsum?</p>\n<p>In einem Design Magazin "Before and After Magazine" Ausgabe 4 Nummer 2, schrieb ein Journalist das folgende:</p>\n<p>Nachdem ich jedem erzählt hatte das Lorem ipsum ein Text ist, der von PageMaker mitgeliefert wird, aussieht wie Latein, aber keinen Sinn ergibt, habe ich folgendes von Richard McClintock, Chefredakteur am Hampden-Sydney College in Virginia, erfahren:</p>\n<p>Lorem Ipsum ist Latein - leicht verdreht - ein Teil einer Passage von Cicero´s "De finibus bonorum et malorum" 1.10.32 beginnt so: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..." (Es gibt niemanden der sich selbst in Liebeskummer begibt, der danach sucht oder danach verlagt, einfach weil es schmerzt.). "De Finibus Bonorum et Malorum" wurde 45 vor Chr. verfasst, es ist eine theoretische moralische Abhandlung, welche in der Renaissance sehr populär war.</p>\n<p>Was ich daran bemerkenswert finde ist, das dieser Platzhaltertext als Industriestandard seit dem im 15ten Jhh verwendet wird. Damals wurde ein Setzkasten genommen die Buchstaben durchmischt und ein Druckpobe der Schrift angefertigt; er hat nicht nur fünf Jahrhunderte Schriftsatz überlebt, sondern auch den Photosatz und ist grundlegend unverändert geblieben, bis auf einer gelegentlichen Änderung bei einer Endung wie "ing" oder "y". Die Ironie des ganzen ist, das wenn man das verdrehte Latein versteht, so wird es so unverständlich wie griechisch und die Phrase "es hört sich für mich wie Griechisch an" sowie das Englische "greeking" haben die gleiche semantische Herkunft.</p>\n<p>Rick Pali stellte diesen Artikel "alt.fonts faqs" zur Verfügung, da niemand bisher wusste woher Lorem ipsum ursprünglich kam.</p>', '', NULL, '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 385, 81, 'tl_article', 128, 1389171544, 'text', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:27:"Newsletter Anfrage gesendet";}', '<p>Eine Bestätigungs E-Mail wurde ihnen zugesendet.</p>\n<p>Um die Newsletter Bestellung anzuschließen, folgen sie bitte dem Link in der Bestätigungsmail.</p>', '', NULL, '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 386, 82, 'tl_article', 128, 1389171585, 'text', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:21:"Newsletter abbestellt";}', '<p>Ihre E-Mail Adresse wurde aus unserem Verteiler entfernt.</p>', '', NULL, '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 387, 79, 'tl_article', 128, 1389171769, 'headline', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:21:"Newsletter abonnieren";}', NULL, '', NULL, '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 388, 79, 'tl_article', 256, 1389171788, 'module', '', NULL, '', NULL, '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 40, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 389, 80, 'tl_article', 128, 1389171806, 'headline', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:22:"Newsletter abbestellen";}', NULL, '', NULL, '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 390, 80, 'tl_article', 256, 1389171816, 'module', '', NULL, '', NULL, '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 41, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 397, 3, 'tl_article', 2048, 1404134463, 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:9:"Image Top";}', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', '1', 0x816e2aa6004a11e4b32f001c42f7180d, '', '', 'a:3:{i:0;s:3:"767";i:1;s:0:"";i:2;s:12:"proportional";}', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 398, 8, 'tl_article', 160, 1390066497, 'module', '', NULL, '', NULL, '', '', 'a:1:{i:0;i:480;}', '', '', '', 'a:1:{i:0;s:5:"right";}', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 1, '', NULL, '', 'a:2:{i:0;s:8:"nav_main";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 412, 83, 'tl_article', 384, 1453673590, 'text', 'a:2:{s:4:"unit";s:2:"h2";s:5:"value";s:11:"Lorem ipsum";}', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>', '', NULL, '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', 'ascending', 0, '', '', '', '', 'com_default', '', '' );
INSERT INTO `tl_content` VALUES ( 401, 83, 'tl_article', 128, 1408718167, 'module', '', NULL, '', NULL, '', '', 'a:1:{i:0;i:480;}', '', '', '', 'a:1:{i:0;s:5:"right";}', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 44, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:9:"nav_aside";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 405, 83, 'tl_article', 256, 1404128633, 'hyperlink', 'a:2:{s:4:"unit";s:2:"h3";s:5:"value";s:18:"Nachrichten Archiv";}', NULL, '', NULL, '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '{{link_url::27}}', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 407, 83, 'tl_article', 64, 1408717594, 'html', '', NULL, '', NULL, '', '', '', '', '', '', 'above', '<div class="logo">\n  <a href="/"><img src="files/dist/images/logo.svgz" width="200" height="125" alt="Logo"></a>\n</div>', '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 0, '', NULL, '', '', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );
INSERT INTO `tl_content` VALUES ( 411, 8, 'tl_article', 16, 1453494943, 'html', '', NULL, '', NULL, '', '', 'a:1:{i:0;i:480;}', '', '', '', 'a:1:{i:0;s:5:"right";}', '<div class="offcanvas-toggle">\n	<div class="menu-burger">\n	    <span class="burger-line bread top"></span>\n	    <span class="burger-line meat"></span>\n	    <span class="burger-line bread bottom"></span>\n	</div>\n</div>', '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', '', NULL, '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', NULL, '', NULL, '', '', 0, 0, 0, 0, 0, '', NULL, '', '', '', '', '', 0, 300, 0, '', '1', '', '', '', 0, '', '', '', '', '', '', '' );

#---------------------------------------------------------
# Table structure for table 'tl_cron'
#---------------------------------------------------------
CREATE TABLE `tl_cron` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(32) NULL,
  `value` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;


#
# Dumping data for table 'tl_cron'
#

INSERT INTO `tl_cron` VALUES ( 1, 'lastrun', '1453750260' );
INSERT INTO `tl_cron` VALUES ( 2, 'monthly', '201601' );
INSERT INTO `tl_cron` VALUES ( 3, 'weekly', '201604' );
INSERT INTO `tl_cron` VALUES ( 4, 'daily', '20160125' );
INSERT INTO `tl_cron` VALUES ( 5, 'hourly', '0' );
INSERT INTO `tl_cron` VALUES ( 6, 'minutely', '0' );

#---------------------------------------------------------
# Table structure for table 'tl_extension'
#---------------------------------------------------------
CREATE TABLE `tl_extension` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(64) NOT NULL default '',
  `folder` varchar(48) NOT NULL default '',
  `author` varchar(128) NOT NULL default '',
  `copyright` varchar(128) NOT NULL default '',
  `package` varchar(64) NOT NULL default '',
  `license` varchar(64) NOT NULL default '',
  `addBeMod` char(1) NOT NULL default '',
  `beClasses` varchar(255) NOT NULL default '',
  `beTables` varchar(255) NOT NULL default '',
  `beTemplates` varchar(255) NOT NULL default '',
  `addFeMod` char(1) NOT NULL default '',
  `feClasses` varchar(255) NOT NULL default '',
  `feTables` varchar(255) NOT NULL default '',
  `feTemplates` varchar(255) NOT NULL default '',
  `addLanguage` char(1) NOT NULL default '',
  `languages` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_extension' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_faq'
#---------------------------------------------------------
CREATE TABLE `tl_faq` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `sorting` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `question` varchar(255) NOT NULL default '',
  `alias` varchar(128) COLLATE utf8_bin NOT NULL default '',
  `author` int(10) unsigned NOT NULL default '0',
  `answer` text NULL,
  `addImage` char(1) NOT NULL default '',
  `singleSRC` binary(16) NULL,
  `alt` varchar(255) NOT NULL default '',
  `size` varchar(64) NOT NULL default '',
  `imagemargin` varchar(128) NOT NULL default '',
  `imageUrl` varchar(255) NOT NULL default '',
  `fullsize` char(1) NOT NULL default '',
  `caption` varchar(255) NOT NULL default '',
  `floating` varchar(12) NOT NULL default '',
  `addEnclosure` char(1) NOT NULL default '',
  `enclosure` blob NULL,
  `noComments` char(1) NOT NULL default '',
  `published` char(1) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `pid_published_sorting` (`pid`, `published`, `sorting`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_faq' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_faq_category'
#---------------------------------------------------------
CREATE TABLE `tl_faq_category` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `headline` varchar(255) NOT NULL default '',
  `jumpTo` int(10) unsigned NOT NULL default '0',
  `allowComments` char(1) NOT NULL default '',
  `notify` varchar(16) NOT NULL default '',
  `sortOrder` varchar(12) NOT NULL default '',
  `perPage` smallint(5) unsigned NOT NULL default '0',
  `moderate` char(1) NOT NULL default '',
  `bbcode` char(1) NOT NULL default '',
  `requireLogin` char(1) NOT NULL default '',
  `disableCaptcha` char(1) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_faq_category' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_files'
#---------------------------------------------------------
CREATE TABLE `tl_files` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` binary(16) NULL,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `type` varchar(16) NOT NULL default '',
  `path` varchar(1022) NOT NULL default '',
  `extension` varchar(16) NOT NULL default '',
  `hash` varchar(32) NOT NULL default '',
  `found` char(1) NOT NULL default '1',
  `name` varchar(255) NOT NULL default '',
  `meta` blob NULL,
  `uuid` binary(16) NULL,
  `importantPartX` int(10) NOT NULL default '0',
  `importantPartY` int(10) NOT NULL default '0',
  `importantPartWidth` int(10) NOT NULL default '0',
  `importantPartHeight` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `pid` (`pid`),
  KEY `extension` (`extension`),
  KEY `path` (`path`(333))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1007 ;


#
# Dumping data for table 'tl_files'
#

INSERT INTO `tl_files` VALUES ( 21, NULL, 1356181854, 'file', 'files/tinymce.css', 'css', 'e6cfd2993ed50341da010e66be287d2d', '1', 'tinymce.css', NULL, 0x801ca0626e5d11e39ddaa2b293cc47fa, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 256, 0xa7e9334070b911e3a68bd1f55be66f7b, 1390036002, 'folder', 'files/publisher/images/demo-slideshow', '', 'b14148f868698344df5aadc5ee27e64d', '1', 'demo-slideshow', 0x613a313a7b733a323a226465223b613a333a7b733a353a227469746c65223b733a303a22223b733a343a226c696e6b223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b7d7d, 0x801fede46e5d11e39ddaa2b293cc47fa, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 272, 0xa7e9334070b911e3a68bd1f55be66f7b, 1390035983, 'folder', 'files/publisher/images/demo-images', '', '413c86b5f8d15ad562a73a5d69e28672', '1', 'demo-images', 0x613a313a7b733a323a226465223b613a333a7b733a353a227469746c65223b733a303a22223b733a343a226c696e6b223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b7d7d, 0x80205ee66e5d11e39ddaa2b293cc47fa, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 350, NULL, 1388342843, 'folder', 'files/publisher', '', '41a338f1c8aff6b4b017b5ec7092ea53', '1', 'publisher', NULL, 0xa7e9336870b911e3a68bd1f55be66f7b, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 351, 0xa7e9336870b911e3a68bd1f55be66f7b, 1388342843, 'folder', 'files/publisher/downloads', '', '3ff6a6fd884ab02a1f661f401e4e1121', '1', 'downloads', NULL, 0xa7e9335e70b911e3a68bd1f55be66f7b, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 352, 0xa7e9335e70b911e3a68bd1f55be66f7b, 1388342843, 'file', 'files/publisher/downloads/info.txt', 'txt', '1258391677e4d2b9dc8d145cb66ff77e', '1', 'info.txt', NULL, 0xa7e9335470b911e3a68bd1f55be66f7b, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 353, 0xa7e9336870b911e3a68bd1f55be66f7b, 1388342843, 'folder', 'files/publisher/images', '', '6dc8f47797bc9b5144b4b157a26790e4', '1', 'images', NULL, 0xa7e9334070b911e3a68bd1f55be66f7b, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 354, 0xa7e9334070b911e3a68bd1f55be66f7b, 1388342843, 'file', 'files/publisher/images/info.txt', 'txt', '348214bf8155702ed50d44e525fcd35d', '1', 'info.txt', NULL, 0xa7e9333670b911e3a68bd1f55be66f7b, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 355, 0xa7e9336870b911e3a68bd1f55be66f7b, 1388342843, 'folder', 'files/publisher/uploads', '', 'd41d8cd98f00b204e9800998ecf8427e', '1', 'uploads', NULL, 0xa7e9332c70b911e3a68bd1f55be66f7b, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 1006, 0x7a7435e0c44511e5aa51001c42f7180d, 1453823839, 'file', 'files/AutoBackupDB/.htaccess', 'htaccess', 'bff88aa9f255706dd1e53e330cb1a7b7', '1', '.htaccess', NULL, 0x7a7435ccc44511e5aa51001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 390, NULL, 1388342844, 'file', 'files/tinymce_custom.css', 'css', 'a65ebbdc1470c2ef1852197a9b0ce307', '1', 'tinymce_custom.css', NULL, 0xa82898aa70b911e3a68bd1f55be66f7b, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 878, 0x80205ee66e5d11e39ddaa2b293cc47fa, 1401565391, 'file', 'files/publisher/images/demo-images/60-sydneycircularquay-huge.jpg', 'jpg', 'f3daf424a44b63fd3a281d53eb730ae7', '1', '60-sydneycircularquay-huge.jpg', NULL, 0xcc7c7522e8fb11e38ec3001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 879, NULL, 1401726960, 'folder', 'files/dist', '', '0845c0b39a786885176e3e9f03d3ab4e', '1', 'dist', NULL, 0xfae580ecea7311e38ec3001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 880, 0xfae580ecea7311e38ec3001c42f7180d, 1401726960, 'folder', 'files/dist/images', '', 'c40c11557cf6b502ff65be46a305c80d', '1', 'images', NULL, 0xfae580e2ea7311e38ec3001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 881, 0xfae580e2ea7311e38ec3001c42f7180d, 1401726960, 'file', 'files/dist/images/spritesheet.png', 'png', 'e97fb60c91faa84ce2a2f8dcc17e87ff', '1', 'spritesheet.png', NULL, 0xfae580d8ea7311e38ec3001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 882, 0xfae580e2ea7311e38ec3001c42f7180d, 1401726960, 'folder', 'files/dist/images/lightbox', '', 'af6468ccf4e9aa152c8294e03390e7f3', '1', 'lightbox', NULL, 0xfae580c4ea7311e38ec3001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 883, 0xfae580c4ea7311e38ec3001c42f7180d, 1401726960, 'file', 'files/dist/images/lightbox/border1.png', 'png', '416e964cc063395fc2db26e463987609', '1', 'border1.png', NULL, 0xfae580baea7311e38ec3001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 530, NULL, 1389977958, 'file', 'files/newsletter.css', '', 'd41d8cd98f00b204e9800998ecf8427e', '1', 'newsletter.css', NULL, 0xb44db4ba7f9811e39d9fb12ed291633a, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 961, 0xa7e9334070b911e3a68bd1f55be66f7b, 1404127102, 'folder', 'files/publisher/images/stockphotos-free', '', '7d8b36486a31fe32821e602f0bf7c1f5', '1', 'stockphotos-free', 0x613a313a7b733a323a226465223b613a333a7b733a353a227469746c65223b733a303a22223b733a343a226c696e6b223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b7d7d, 0x3f2681fe004811e4b32f001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 887, 0xfae580e2ea7311e38ec3001c42f7180d, 1401726960, 'file', 'files/dist/images/logo.svgz', 'svgz', '4478e9694e243c1ecf0ee7cee9e51242', '1', 'logo.svgz', NULL, 0xfae5807eea7311e38ec3001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 888, 0xfae580e2ea7311e38ec3001c42f7180d, 1401726960, 'file', 'files/dist/images/logo.png', 'png', '3c7ea5cb15c7eba822894c666c02df00', '1', 'logo.png', NULL, 0xfae58024ea7311e38ec3001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 890, 0xfae580e2ea7311e38ec3001c42f7180d, 1401726960, 'file', 'files/dist/images/logo.svg', 'svg', 'f07258dc4a9ff3702c4929ae19948509', '1', 'logo.svg', NULL, 0xfae979aeea7311e38ec3001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 892, 0xfae580ecea7311e38ec3001c42f7180d, 1401726960, 'folder', 'files/dist/js', '', 'd83abf9de168f5c3f4ea0eb08512f4d0', '1', 'js', NULL, 0xfae97990ea7311e38ec3001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 894, 0xfae97990ea7311e38ec3001c42f7180d, 1401726960, 'folder', 'files/dist/js/bower', '', 'afb1f0296e755884a8db059dcc9b2e9d', '1', 'bower', NULL, 0xfae97972ea7311e38ec3001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 896, 0xfae97990ea7311e38ec3001c42f7180d, 1401726960, 'folder', 'files/dist/js/lib', '', 'ced3e591f8a68e32db8df57151554a44', '1', 'lib', NULL, 0xfae9792cea7311e38ec3001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 898, 0xfae9792cea7311e38ec3001c42f7180d, 1401726960, 'file', 'files/dist/js/lib/modernizr-custom.js', 'js', 'ff51b3738f609384c8ec156328049b63', '1', 'modernizr-custom.js', NULL, 0xfae978c8ea7311e38ec3001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 995, 0x781505d444ef11e5aac1001c42f7180d, 1439823819, 'folder', 'files/publisher/multifileupload/tmp/8', '', 'd41d8cd98f00b204e9800998ecf8427e', '1', '8', NULL, 0x2448634044f111e5aac1001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 996, 0x781505d444ef11e5aac1001c42f7180d, 1439823829, 'folder', 'files/publisher/multifileupload/tmp/9', '', 'd41d8cd98f00b204e9800998ecf8427e', '1', '9', NULL, 0x2a7603e444f111e5aac1001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 990, 0x1a194ae444ef11e5aac1001c42f7180d, 1439823149, 'folder', 'files/publisher/multifileupload/7', '', '16f5451754f628d4f6d7f531d31c9e79', '1', '7', NULL, 0x950d042044ef11e5aac1001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 642, 0xa7e9334070b911e3a68bd1f55be66f7b, 1389977958, 'file', 'files/publisher/images/1040x360.png', 'png', '00c850b529b6d3f5de0271c4ba059621', '1', '1040x360.png', NULL, 0xb47222507f9811e39d9fb12ed291633a, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 645, 0x80205ee66e5d11e39ddaa2b293cc47fa, 1389977958, 'file', 'files/publisher/images/demo-images/60-sydneycircularquay.jpg', 'jpg', '80742b0caea10179fff588f742163ec6', '1', '60-sydneycircularquay.jpg', 0x613a313a7b733a323a226465223b613a333a7b733a353a227469746c65223b733a31363a2242696c64756e74657273636872696674223b733a343a226c696e6b223b733a303a22223b733a373a2263617074696f6e223b733a31363a2242696c64756e74657273636872696674223b7d7d, 0xb472223c7f9811e39d9fb12ed291633a, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 646, 0x80205ee66e5d11e39ddaa2b293cc47fa, 1389977958, 'file', 'files/publisher/images/demo-images/floodlighttree3966.jpg', 'jpg', '771799d85d62496586f7ff1dd9901420', '1', 'floodlighttree3966.jpg', 0x613a313a7b733a323a226465223b613a333a7b733a353a227469746c65223b733a353a22546974656c223b733a343a226c696e6b223b733a303a22223b733a373a2263617074696f6e223b733a31363a2242696c64756e74657273636872696674223b7d7d, 0xb472221e7f9811e39d9fb12ed291633a, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 647, 0x80205ee66e5d11e39ddaa2b293cc47fa, 1389977958, 'file', 'files/publisher/images/demo-images/glowingstones4003.jpg', 'jpg', '79e8261fd02a82a833f85a90194bfa48', '1', 'glowingstones4003.jpg', NULL, 0xb477895c7f9811e39d9fb12ed291633a, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 648, 0x80205ee66e5d11e39ddaa2b293cc47fa, 1389977958, 'file', 'files/publisher/images/demo-images/nature00872.jpg', 'jpg', '741f1a2ba18921d51325b2f73eb256cf', '1', 'nature00872.jpg', NULL, 0xb47789527f9811e39d9fb12ed291633a, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 649, 0x80205ee66e5d11e39ddaa2b293cc47fa, 1389977958, 'file', 'files/publisher/images/demo-images/nature01031.jpg', 'jpg', '8295f979ea41a59f89a7df45be4c0af7', '1', 'nature01031.jpg', NULL, 0xb47789497f9811e39d9fb12ed291633a, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 650, 0x80205ee66e5d11e39ddaa2b293cc47fa, 1389977958, 'file', 'files/publisher/images/demo-images/nature01103.jpg', 'jpg', 'c6bbe33ccbbb3c8e922fe053a6a1a4ef', '1', 'nature01103.jpg', NULL, 0xb47789487f9811e39d9fb12ed291633a, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 655, 0x801fede46e5d11e39ddaa2b293cc47fa, 1389977958, 'file', 'files/publisher/images/demo-slideshow/1040x360 2.png', 'png', '00c850b529b6d3f5de0271c4ba059621', '1', '1040x360 2.png', NULL, 0xb47789167f9811e39d9fb12ed291633a, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 656, 0x801fede46e5d11e39ddaa2b293cc47fa, 1389977958, 'file', 'files/publisher/images/demo-slideshow/1040x360 3.png', 'png', '00c850b529b6d3f5de0271c4ba059621', '1', '1040x360 3.png', NULL, 0xb47788f87f9811e39d9fb12ed291633a, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 657, 0x801fede46e5d11e39ddaa2b293cc47fa, 1389977958, 'file', 'files/publisher/images/demo-slideshow/1040x360 4.png', 'png', '00c850b529b6d3f5de0271c4ba059621', '1', '1040x360 4.png', NULL, 0xb47bfa967f9811e39d9fb12ed291633a, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 658, 0x801fede46e5d11e39ddaa2b293cc47fa, 1389977958, 'file', 'files/publisher/images/demo-slideshow/1040x360 5.png', 'png', '00c850b529b6d3f5de0271c4ba059621', '1', '1040x360 5.png', NULL, 0xb47bfa8d7f9811e39d9fb12ed291633a, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 659, 0x801fede46e5d11e39ddaa2b293cc47fa, 1389977958, 'file', 'files/publisher/images/demo-slideshow/1040x360 6.png', 'png', '00c850b529b6d3f5de0271c4ba059621', '1', '1040x360 6.png', NULL, 0xb47bfa8c7f9811e39d9fb12ed291633a, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 660, 0x801fede46e5d11e39ddaa2b293cc47fa, 1389977958, 'file', 'files/publisher/images/demo-slideshow/1040x360.png', 'png', '00c850b529b6d3f5de0271c4ba059621', '1', '1040x360.png', NULL, 0xb47bfa837f9811e39d9fb12ed291633a, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 987, 0x950d042044ef11e5aac1001c42f7180d, 1439823149, 'file', 'files/publisher/multifileupload/7/Mutti.jpg', 'jpg', '3060f139779630c9036b0fd72bef403a', '1', 'Mutti.jpg', NULL, 0x7bcf77ae44ef11e5aac1001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 988, 0x950d042044ef11e5aac1001c42f7180d, 1439823149, 'file', 'files/publisher/multifileupload/7/Passfoto_kind.jpg', 'jpg', '459b1564d64f63605c3f60f6bd1af2df', '1', 'Passfoto_kind.jpg', NULL, 0x7c06755644ef11e5aac1001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 989, 0x950d042044ef11e5aac1001c42f7180d, 1439823149, 'file', 'files/publisher/multifileupload/7/Mutti___Martin__o__.jpg', 'jpg', '5b120915b07a8f3a6557f1d5d1882be6', '1', 'Mutti___Martin__o__.jpg', NULL, 0x7c3a374244ef11e5aac1001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 958, 0xfaf64f3aea7311e38ec3001c42f7180d, 1401726960, 'file', 'files/dist/css/styles.prefixed.css.map', 'map', '8d270fab33bfdc4dab2ed250048ce7df', '1', 'styles.prefixed.css.map', NULL, 0xfaf64ef4ea7311e38ec3001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 966, 0x3f2681fe004811e4b32f001c42f7180d, 1404127765, 'file', 'files/publisher/images/stockphotos-free/stockphoto-12.jpg', 'jpg', 'cc7d96bc853dac49cdb692ab1c8e10b6', '1', 'stockphoto-12.jpg', NULL, 0xca204154004911e4b32f001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 1005, NULL, 1453823839, 'folder', 'files/AutoBackupDB', '', 'd41d8cd98f00b204e9800998ecf8427e', '1', 'AutoBackupDB', NULL, 0x7a7435e0c44511e5aa51001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 955, 0xfae580ecea7311e38ec3001c42f7180d, 1401726960, 'folder', 'files/dist/css', '', '13b7a275722b6947558603eaacf418bc', '1', 'css', NULL, 0xfaf64f3aea7311e38ec3001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 956, 0xfaf64f3aea7311e38ec3001c42f7180d, 1401726960, 'file', 'files/dist/css/styles.prefixed.css', 'css', '23b06dcbc77a15633fdec6d811bf2f7e', '1', 'styles.prefixed.css', NULL, 0xfaf64f30ea7311e38ec3001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 967, 0x3f2681fe004811e4b32f001c42f7180d, 1404127765, 'file', 'files/publisher/images/stockphotos-free/stockphoto-13.jpg', 'jpg', '121234a7ef5f2a960cea161f21c92815', '1', 'stockphoto-13.jpg', NULL, 0xca204140004911e4b32f001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 968, 0x3f2681fe004811e4b32f001c42f7180d, 1404127765, 'file', 'files/publisher/images/stockphotos-free/stockphoto-14.jpg', 'jpg', '55e61e4e7429527a33fd6f72d07f9a3f', '1', 'stockphoto-14.jpg', NULL, 0xca204136004911e4b32f001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 969, 0x3f2681fe004811e4b32f001c42f7180d, 1404127858, 'file', 'files/publisher/images/stockphotos-free/stockphoto-04.jpg', 'jpg', '3efd0e71e9c46bd5bbcad1c58cf074af', '1', 'stockphoto-04.jpg', NULL, 0x0176e0f4004a11e4b32f001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 970, 0x3f2681fe004811e4b32f001c42f7180d, 1404127858, 'file', 'files/publisher/images/stockphotos-free/stockphoto-05.jpg', 'jpg', '296ff0312803030554ddf3ee8063d86c', '1', 'stockphoto-05.jpg', NULL, 0x0176e0e0004a11e4b32f001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 971, 0x3f2681fe004811e4b32f001c42f7180d, 1404127858, 'file', 'files/publisher/images/stockphotos-free/stockphoto-06.jpg', 'jpg', 'ac143d8b23e2c5e2ccd4008447a06b28', '1', 'stockphoto-06.jpg', NULL, 0x0176e0d6004a11e4b32f001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 972, 0x3f2681fe004811e4b32f001c42f7180d, 1404127858, 'file', 'files/publisher/images/stockphotos-free/stockphoto-07.jpg', 'jpg', '8dad6a5fae3da04e72c37510adebc768', '1', 'stockphoto-07.jpg', NULL, 0x0176e0cc004a11e4b32f001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 973, 0x3f2681fe004811e4b32f001c42f7180d, 1404128072, 'file', 'files/publisher/images/stockphotos-free/stockphoto-08.jpg', 'jpg', '063e4799e97b69e0e36d637a06382578', '1', 'stockphoto-08.jpg', NULL, 0x816e2ab0004a11e4b32f001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 974, 0x3f2681fe004811e4b32f001c42f7180d, 1404128072, 'file', 'files/publisher/images/stockphotos-free/stockphoto-09.jpg', 'jpg', 'f47724e435259179682ac250383e9137', '1', 'stockphoto-09.jpg', NULL, 0x816e2aa6004a11e4b32f001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 975, 0x3f2681fe004811e4b32f001c42f7180d, 1404128072, 'file', 'files/publisher/images/stockphotos-free/stockphoto-10.jpg', 'jpg', '7704803520cbbd6374f64def914d0aec', '1', 'stockphoto-10.jpg', NULL, 0x816e2a9c004a11e4b32f001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 977, 0xa7e9336870b911e3a68bd1f55be66f7b, 1439822943, 'folder', 'files/publisher/multifileupload', '', '85839ef82ac141ac51d79b7a0719f06c', '1', 'multifileupload', 0x613a313a7b733a323a226465223b613a333a7b733a353a227469746c65223b733a303a22223b733a343a226c696e6b223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b7d7d, 0x1a194ae444ef11e5aac1001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 978, 0x1a194ae444ef11e5aac1001c42f7180d, 1439823100, 'folder', 'files/publisher/multifileupload/tmp', '', 'e71c779465880e697a07ba61f48da6a6', '1', 'tmp', NULL, 0x781505d444ef11e5aac1001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 979, 0x781505d444ef11e5aac1001c42f7180d, 1439823100, 'folder', 'files/publisher/multifileupload/tmp/7', '', 'd41d8cd98f00b204e9800998ecf8427e', '1', '7', NULL, 0x781505c044ef11e5aac1001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 980, 0x950d042044ef11e5aac1001c42f7180d, 1439823149, 'file', 'files/publisher/multifileupload/7/Mutti_und_Martin.jpg', 'jpg', 'cfa205b15ab01ef2a69ffa933ad15077', '1', 'Mutti_und_Martin.jpg', NULL, 0x7b81835a44ef11e5aac1001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 981, 0xfae580e2ea7311e38ec3001c42f7180d, 1439823106, 'folder', 'files/dist/images/loading-spinner', '', 'f68b6b6e9dbc3fed9828888665d0af32', '1', 'loading-spinner', NULL, 0x7b81835044ef11e5aac1001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 982, 0x7b81835044ef11e5aac1001c42f7180d, 1439823106, 'file', 'files/dist/images/loading-spinner/loading.gif', 'gif', 'b5e24db8f84eb4eac09c88f804f36df2', '1', 'loading.gif', NULL, 0x7b81833c44ef11e5aac1001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 983, 0xfae97972ea7311e38ec3001c42f7180d, 1439823106, 'file', 'files/dist/js/bower/modernizr.js', 'js', 'c1ff1650bba6e39089834e708129d723', '1', 'modernizr.js', NULL, 0x7b81833244ef11e5aac1001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 984, 0xfae9792cea7311e38ec3001c42f7180d, 1439823106, 'file', 'files/dist/js/lib/modernizr.js', 'js', 'cea343aed760a85ce611690112c842a1', '1', 'modernizr.js', NULL, 0x7b81832844ef11e5aac1001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 985, 0xfae97990ea7311e38ec3001c42f7180d, 1439823106, 'file', 'files/dist/js/1.bundle.js', 'js', '60afab36ca7f34f14fe1064dc9c5530f', '1', '1.bundle.js', NULL, 0x7b81831444ef11e5aac1001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 986, 0xfae97990ea7311e38ec3001c42f7180d, 1439823106, 'file', 'files/dist/js/bundle.js', 'js', '0ffdcb781fcc77751b6ae16b1245a432', '1', 'bundle.js', NULL, 0x7b81830a44ef11e5aac1001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 886, 0xfae580c4ea7311e38ec3001c42f7180d, 1401726960, 'file', 'files/dist/images/lightbox/loading.gif', 'gif', 'b5e24db8f84eb4eac09c88f804f36df2', '1', 'loading.gif', NULL, 0xfae58092ea7311e38ec3001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 962, 0x3f2681fe004811e4b32f001c42f7180d, 1404127537, 'file', 'files/publisher/images/stockphotos-free/stockphoto-01.jpg', 'jpg', 'fb46e09bfaef3ad25c12cb1ecd29d3a9', '1', 'stockphoto-01.jpg', NULL, 0x423d6212004911e4b32f001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 963, 0x3f2681fe004811e4b32f001c42f7180d, 1404127537, 'file', 'files/publisher/images/stockphotos-free/stockphoto-02.jpg', 'jpg', '81bf297f22b6b8e238adbb1a63e4b4e0', '1', 'stockphoto-02.jpg', NULL, 0x423d61fe004911e4b32f001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 964, 0x3f2681fe004811e4b32f001c42f7180d, 1404127537, 'file', 'files/publisher/images/stockphotos-free/stockphoto-03.jpg', 'jpg', 'be02980375d1ddd8a6cf5a26d5ef112c', '1', 'stockphoto-03.jpg', NULL, 0x423d61f4004911e4b32f001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 965, 0x3f2681fe004811e4b32f001c42f7180d, 1404127765, 'file', 'files/publisher/images/stockphotos-free/stockphoto-11.jpg', 'jpg', '80b85fe0dac0c6a73b78ff7d8f37f5ad', '1', 'stockphoto-11.jpg', NULL, 0xca20415e004911e4b32f001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 884, 0xfae580c4ea7311e38ec3001c42f7180d, 1401726960, 'file', 'files/dist/images/lightbox/fancybox.png', 'png', '11e57e492ee0311540967cc7a1e6e3e2', '1', 'fancybox.png', NULL, 0xfae580b0ea7311e38ec3001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 885, 0xfae580c4ea7311e38ec3001c42f7180d, 1401726960, 'file', 'files/dist/images/lightbox/border2.png', 'png', '50cdcf6bc41aeac05c43095f4074f6f4', '1', 'border2.png', NULL, 0xfae5809cea7311e38ec3001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 824, NULL, 1392642303, 'file', 'files/tinymce_defaults.css', 'css', '71216f7d0ee124740a1b339f7f8c15e4', '1', 'tinymce_defaults.css', NULL, 0x1d71891497d411e3b63d001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 862, NULL, 1392642304, 'folder', 'files/tiny_templates', '', 'eacf331f0ffc35d4b482f1d15a887d3b', '1', 'tiny_templates', NULL, 0x1dc2920a97d411e3b63d001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 863, 0x1dc2920a97d411e3b63d001c42f7180d, 1392642304, 'file', 'files/tiny_templates/index.html', 'html', 'aeebec42dc0335ea1e0853f4393259b4', '1', 'index.html', NULL, 0x1dc291a697d411e3b63d001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 997, 0xfae97990ea7311e38ec3001c42f7180d, 1453221238, 'file', 'files/dist/js/1.touchswipe.js.map', 'map', 'a51f80cc0d632409942ea1dc347d5c54', '1', '1.touchswipe.js.map', NULL, 0x70b85138beca11e5aa51001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 998, 0xfae97990ea7311e38ec3001c42f7180d, 1453221238, 'file', 'files/dist/js/main.js.map', 'map', '7a0601f015ce4c352b746df49de25474', '1', 'main.js.map', NULL, 0x70b8512ebeca11e5aa51001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 999, 0xfae97990ea7311e38ec3001c42f7180d, 1453221238, 'file', 'files/dist/js/1.touchswipe.js', 'js', 'e0e8a17fa16fcd626923e73b67fa7f9b', '1', '1.touchswipe.js', NULL, 0x70b8511abeca11e5aa51001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 1000, 0xfae97990ea7311e38ec3001c42f7180d, 1453221238, 'file', 'files/dist/js/main.js', 'js', 'efd65f29057419d3d2119490054a90e7', '1', 'main.js', NULL, 0x70b85110beca11e5aa51001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 1001, 0xfaf64f3aea7311e38ec3001c42f7180d, 1453221238, 'file', 'files/dist/css/styles.css.map', 'map', '4f39c64a6108108d7b8bce39e893da1b', '1', 'styles.css.map', NULL, 0x70b85106beca11e5aa51001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 1002, 0xfaf64f3aea7311e38ec3001c42f7180d, 1453221238, 'file', 'files/dist/css/styles.css', 'css', '4c8cb0c489b7a199a0cae5738e32ea7f', '1', 'styles.css', NULL, 0x70b850f2beca11e5aa51001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 1003, 0xfaf64f3aea7311e38ec3001c42f7180d, 1453221238, 'file', 'files/dist/css/tinymce_custom.css.map', 'map', '3845addee9b74d57c44c163f328e0aac', '1', 'tinymce_custom.css.map', NULL, 0x70b850e8beca11e5aa51001c42f7180d, 0, 0, 0, 0 );
INSERT INTO `tl_files` VALUES ( 1004, 0xfaf64f3aea7311e38ec3001c42f7180d, 1453221238, 'file', 'files/dist/css/tinymce_custom.css', 'css', '89ffd40c81c5b0118d25f6a95bac55b5', '1', 'tinymce_custom.css', NULL, 0x70b850debeca11e5aa51001c42f7180d, 0, 0, 0, 0 );

#---------------------------------------------------------
# Table structure for table 'tl_form'
#---------------------------------------------------------
CREATE TABLE `tl_form` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(128) COLLATE utf8_bin NOT NULL default '',
  `jumpTo` int(10) unsigned NOT NULL default '0',
  `sendViaEmail` char(1) NOT NULL default '',
  `recipient` varchar(1022) NOT NULL default '',
  `subject` varchar(255) NOT NULL default '',
  `format` varchar(12) NOT NULL default '',
  `skipEmpty` char(1) NOT NULL default '',
  `storeValues` char(1) NOT NULL default '',
  `targetTable` varchar(64) NOT NULL default '',
  `method` varchar(12) NOT NULL default '',
  `attributes` varchar(255) NOT NULL default '',
  `formID` varchar(64) NOT NULL default '',
  `tableless` char(1) NOT NULL default '',
  `allowTags` char(1) NOT NULL default '',
  `novalidate` char(1) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;


#
# Dumping data for table 'tl_form'
#

INSERT INTO `tl_form` VALUES ( 1, 1437643485, 'Kontakt', 'kontakt', 38, '1', 'martin.schwenzer@gmail.com', 'Kontakt anfrage per Website', 'raw', '', '', '', 'POST', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', '1', '', '1' );

#---------------------------------------------------------
# Table structure for table 'tl_form_field'
#---------------------------------------------------------
CREATE TABLE `tl_form_field` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `sorting` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `invisible` char(1) NOT NULL default '',
  `type` varchar(32) NOT NULL default '',
  `name` varchar(64) NOT NULL default '',
  `label` varchar(255) NOT NULL default '',
  `text` text NULL,
  `html` text NULL,
  `options` blob NULL,
  `mandatory` char(1) NOT NULL default '',
  `rgxp` varchar(32) NOT NULL default '',
  `placeholder` varchar(255) NOT NULL default '',
  `maxlength` int(10) unsigned NOT NULL default '0',
  `size` varchar(255) NOT NULL default '',
  `multiple` char(1) NOT NULL default '',
  `mSize` smallint(5) unsigned NOT NULL default '0',
  `extensions` varchar(255) NOT NULL default '',
  `storeFile` char(1) NOT NULL default '',
  `uploadFolder` binary(16) NULL,
  `useHomeDir` char(1) NOT NULL default '',
  `doNotOverwrite` char(1) NOT NULL default '',
  `fsType` varchar(32) NOT NULL default '',
  `class` varchar(255) NOT NULL default '',
  `value` varchar(255) NOT NULL default '',
  `accesskey` char(1) NOT NULL default '',
  `tabindex` smallint(5) unsigned NOT NULL default '0',
  `fSize` smallint(5) unsigned NOT NULL default '0',
  `addSubmit` char(1) NOT NULL default '',
  `slabel` varchar(255) NOT NULL default '',
  `imageSubmit` char(1) NOT NULL default '',
  `singleSRC` binary(16) NULL,
  `minlength` int(10) unsigned NOT NULL default '0',
  `customTpl` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;


#
# Dumping data for table 'tl_form_field'
#

INSERT INTO `tl_form_field` VALUES ( 1, 1, 128, 1392735453, '', 'text', 'Name', 'Name', NULL, NULL, NULL, '', '', '', 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', NULL, 0, '' );
INSERT INTO `tl_form_field` VALUES ( 2, 1, 256, 1392735465, '', 'text', 'E-Mail', 'E-Mail Adresse', NULL, NULL, NULL, '1', 'email', '', 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', NULL, 0, '' );
INSERT INTO `tl_form_field` VALUES ( 3, 1, 384, 1392735480, '', 'textarea', 'Anfrage', 'Anfrage Text', NULL, NULL, NULL, '1', '', '', 0, 'a:2:{i:0;s:1:"4";i:1;s:2:"40";}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', NULL, 0, '' );
INSERT INTO `tl_form_field` VALUES ( 4, 1, 512, 1392735426, '', 'captcha', '', 'Sicherheitsfrage', NULL, NULL, NULL, '', '', '', 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', NULL, 0, '' );
INSERT INTO `tl_form_field` VALUES ( 5, 1, 640, 1392735437, '', 'submit', '', '', NULL, NULL, NULL, '', '', '', 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', 'Senden', '', NULL, 0, '' );
INSERT INTO `tl_form_field` VALUES ( 6, 1, 448, 1439823835, '1', 'multifileupload', 'Dateiupload', 'Dateiupload', NULL, NULL, NULL, '1', '', '', 0, 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', 'fsStart', '', '', '', 0, 0, '', '', '', NULL, 0, '' );

#---------------------------------------------------------
# Table structure for table 'tl_image_size'
#---------------------------------------------------------
CREATE TABLE `tl_image_size` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `name` varchar(64) NULL,
  `sizes` varchar(255) NOT NULL default '',
  `densities` varchar(255) NOT NULL default '',
  `width` int(10) NULL,
  `height` int(10) NULL,
  `resizeMode` varchar(255) NOT NULL default '',
  `zoom` int(10) NULL,
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_image_size' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_image_size_item'
#---------------------------------------------------------
CREATE TABLE `tl_image_size_item` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `sorting` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `media` varchar(255) NOT NULL default '',
  `sizes` varchar(255) NOT NULL default '',
  `densities` varchar(255) NOT NULL default '',
  `width` int(10) NULL,
  `height` int(10) NULL,
  `resizeMode` varchar(255) NOT NULL default '',
  `zoom` int(10) NULL,
  `invisible` char(1) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_image_size_item' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_layout'
#---------------------------------------------------------
CREATE TABLE `tl_layout` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `rows` varchar(8) NOT NULL default '',
  `headerHeight` varchar(255) NOT NULL default '',
  `footerHeight` varchar(255) NOT NULL default '',
  `cols` varchar(8) NOT NULL default '',
  `widthLeft` varchar(255) NOT NULL default '',
  `widthRight` varchar(255) NOT NULL default '',
  `sections` varchar(1022) NOT NULL default '',
  `sPosition` varchar(32) NOT NULL default '',
  `framework` varchar(255) NOT NULL default '',
  `stylesheet` blob NULL,
  `external` blob NULL,
  `orderExt` blob NULL,
  `newsfeeds` blob NULL,
  `calendarfeeds` blob NULL,
  `modules` blob NULL,
  `template` varchar(64) NOT NULL default '',
  `doctype` varchar(32) NOT NULL default '',
  `webfonts` varchar(255) NOT NULL default '',
  `cssClass` varchar(255) NOT NULL default '',
  `onload` varchar(255) NOT NULL default '',
  `head` text NULL,
  `addJQuery` char(1) NOT NULL default '',
  `jSource` varchar(16) NOT NULL default '',
  `jquery` text NULL,
  `addMooTools` char(1) NOT NULL default '',
  `mooSource` varchar(16) NOT NULL default '',
  `mootools` text NULL,
  `analytics` text NULL,
  `script` text NULL,
  `static` char(1) NOT NULL default '',
  `width` varchar(255) NOT NULL default '',
  `align` varchar(32) NOT NULL default '',
  `viewport` varchar(255) NOT NULL default '',
  `loadingOrder` varchar(16) NOT NULL default '',
  `picturefill` char(1) NOT NULL default '',
  `titleTag` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;


#
# Dumping data for table 'tl_layout'
#

INSERT INTO `tl_layout` VALUES ( 1, 2, 1453495039, 'standard', '3rw', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', '3cl', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', 'a:2:{s:4:"unit";s:0:"";s:5:"value";s:0:"";}', 'offcanvas sidebar, offcanvas navbar', 'top', '', '', NULL, 0x613a313a7b693a303b733a303a22223b7d, '', '', 0x613a363a7b693a303b613a333a7b733a333a226d6f64223b733a323a223136223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a313b613a333a7b733a333a226d6f64223b733a323a223137223b733a333a22636f6c223b733a343a226c656674223b733a363a22656e61626c65223b733a313a2231223b7d693a323b613a333a7b733a333a226d6f64223b733a323a223133223b733a333a22636f6c223b733a353a227269676874223b733a363a22656e61626c65223b733a313a2231223b7d693a333b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d693a343b613a333a7b733a333a226d6f64223b733a323a223138223b733a333a22636f6c223b733a363a22666f6f746572223b733a363a22656e61626c65223b733a313a2231223b7d693a353b613a333a7b733a333a226d6f64223b733a323a223432223b733a333a22636f6c223b733a31373a226f666663616e7661732073696465626172223b733a363a22656e61626c65223b733a313a2231223b7d7d, 'fe_page', 'html5', '', '', '', '', '1', 'j_fallback', 'a:4:{i:0;s:10:"j_colorbox";i:1;s:11:"j_accordion";i:2;s:8:"j_slider";i:3;s:14:"j_mediaelement";}', '', 'moo_local', NULL, 'a:1:{i:0;s:16:"analytics_google";}', '', '', 'a:2:{s:4:"unit";s:2:"em";s:5:"value";s:2:"60";}', 'center', 'width=device-width, initial-scale=1', 'external_first', '', '' );

#---------------------------------------------------------
# Table structure for table 'tl_log'
#---------------------------------------------------------
CREATE TABLE `tl_log` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `source` varchar(32) NOT NULL default '',
  `action` varchar(32) NOT NULL default '',
  `username` varchar(64) NOT NULL default '',
  `text` text NULL,
  `func` varchar(255) NOT NULL default '',
  `ip` varchar(64) NOT NULL default '',
  `browser` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;


#---------------------------------------------------------
# Table structure for table 'tl_member'
#---------------------------------------------------------
CREATE TABLE `tl_member` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `firstname` varchar(255) NOT NULL default '',
  `lastname` varchar(255) NOT NULL default '',
  `dateOfBirth` varchar(11) NOT NULL default '',
  `gender` varchar(32) NOT NULL default '',
  `company` varchar(255) NOT NULL default '',
  `street` varchar(255) NOT NULL default '',
  `postal` varchar(32) NOT NULL default '',
  `city` varchar(255) NOT NULL default '',
  `state` varchar(64) NOT NULL default '',
  `country` varchar(2) NOT NULL default '',
  `phone` varchar(64) NOT NULL default '',
  `mobile` varchar(64) NOT NULL default '',
  `fax` varchar(64) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `website` varchar(255) NOT NULL default '',
  `language` varchar(5) NOT NULL default '',
  `groups` blob NULL,
  `login` char(1) NOT NULL default '',
  `username` varchar(64) COLLATE utf8_bin NULL,
  `password` varchar(128) NOT NULL default '',
  `assignDir` char(1) NOT NULL default '',
  `homeDir` binary(16) NULL,
  `disable` char(1) NOT NULL default '',
  `start` varchar(10) NOT NULL default '',
  `stop` varchar(10) NOT NULL default '',
  `dateAdded` int(10) unsigned NOT NULL default '0',
  `lastLogin` int(10) unsigned NOT NULL default '0',
  `currentLogin` int(10) unsigned NOT NULL default '0',
  `loginCount` smallint(5) unsigned NOT NULL default '3',
  `locked` int(10) unsigned NOT NULL default '0',
  `session` blob NULL,
  `autologin` varchar(32) NULL,
  `createdOn` int(10) unsigned NOT NULL default '0',
  `activation` varchar(32) NOT NULL default '',
  `newsletter` blob NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `autologin` (`autologin`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `activation` (`activation`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;


#
# Dumping data for table 'tl_member'
#

INSERT INTO `tl_member` VALUES ( 1, 1362140414, 'Martin', 'Schwenzer', '', '', '', '', '', '', '', '', '491772366751', '491772366751', '', 'mail@martinschwenzer.de', '', '', 0x613a313a7b693a303b733a313a2231223b7d, '1', 'schwenzer', '$6$143d9cabe3ee7cf1$lGjj0KkXNwPXgMCTLKNKxMxUB2JXahPKx2w00t/sH.XZRBwxYIz38cKcypaaQZNG2SEJ3xspaRRWRGmTDQJNc/', '', 0x00000000000000000000000000000000, '', '', '', 1362140385, 1362141269, 1362141397, 3, 0, 0x613a313a7b733a373a2272656665726572223b613a323a7b733a343a226c617374223b733a31353a222f7363686c6575646572747261756d223b733a373a2263757272656e74223b733a313a222f223b7d7d, NULL, 0, '', NULL );

#---------------------------------------------------------
# Table structure for table 'tl_member_group'
#---------------------------------------------------------
CREATE TABLE `tl_member_group` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `redirect` char(1) NOT NULL default '',
  `jumpTo` int(10) unsigned NOT NULL default '0',
  `disable` char(1) NOT NULL default '',
  `start` varchar(10) NOT NULL default '',
  `stop` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;


#
# Dumping data for table 'tl_member_group'
#

INSERT INTO `tl_member_group` VALUES ( 1, 1362140404, 'member group', '', 0, '', '', '' );

#---------------------------------------------------------
# Table structure for table 'tl_module'
#---------------------------------------------------------
CREATE TABLE `tl_module` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `headline` varchar(255) NOT NULL default '',
  `type` varchar(64) NOT NULL default '',
  `levelOffset` smallint(5) unsigned NOT NULL default '0',
  `showLevel` smallint(5) unsigned NOT NULL default '0',
  `hardLimit` char(1) NOT NULL default '',
  `showProtected` char(1) NOT NULL default '',
  `defineRoot` char(1) NOT NULL default '',
  `rootPage` int(10) unsigned NOT NULL default '0',
  `navigationTpl` varchar(64) NOT NULL default '',
  `pages` blob NULL,
  `showHidden` char(1) NOT NULL default '',
  `customLabel` varchar(64) NOT NULL default '',
  `autologin` char(1) NOT NULL default '',
  `jumpTo` int(10) unsigned NOT NULL default '0',
  `redirectBack` char(1) NOT NULL default '',
  `cols` varchar(32) NOT NULL default '',
  `editable` blob NULL,
  `memberTpl` varchar(64) NOT NULL default '',
  `tableless` char(1) NOT NULL default '',
  `form` int(10) unsigned NOT NULL default '0',
  `queryType` varchar(32) NOT NULL default '',
  `fuzzy` char(1) NOT NULL default '',
  `contextLength` smallint(5) unsigned NOT NULL default '0',
  `totalLength` smallint(5) unsigned NOT NULL default '0',
  `perPage` smallint(5) unsigned NOT NULL default '0',
  `searchType` varchar(32) NOT NULL default '',
  `searchTpl` varchar(64) NOT NULL default '',
  `inColumn` varchar(32) NOT NULL default '',
  `skipFirst` smallint(5) unsigned NOT NULL default '0',
  `loadFirst` char(1) NOT NULL default '',
  `size` varchar(64) NOT NULL default '',
  `transparent` char(1) NOT NULL default '',
  `flashvars` varchar(255) NOT NULL default '',
  `altContent` text NULL,
  `source` varchar(32) NOT NULL default '',
  `singleSRC` binary(16) NULL,
  `url` varchar(255) NOT NULL default '',
  `interactive` char(1) NOT NULL default '',
  `flashID` varchar(64) NOT NULL default '',
  `flashJS` text NULL,
  `imgSize` varchar(64) NOT NULL default '',
  `useCaption` char(1) NOT NULL default '',
  `fullsize` char(1) NOT NULL default '',
  `multiSRC` blob NULL,
  `orderSRC` blob NULL,
  `html` text NULL,
  `rss_cache` int(10) unsigned NOT NULL default '0',
  `rss_feed` text NULL,
  `rss_template` varchar(32) NOT NULL default '',
  `numberOfItems` smallint(5) unsigned NOT NULL default '0',
  `disableCaptcha` char(1) NOT NULL default '',
  `reg_groups` blob NULL,
  `reg_allowLogin` char(1) NOT NULL default '',
  `reg_skipName` char(1) NOT NULL default '',
  `reg_close` varchar(32) NOT NULL default '',
  `reg_assignDir` char(1) NOT NULL default '',
  `reg_homeDir` binary(16) NULL,
  `reg_activate` char(1) NOT NULL default '',
  `reg_jumpTo` int(10) unsigned NOT NULL default '0',
  `reg_text` text NULL,
  `reg_password` text NULL,
  `protected` char(1) NOT NULL default '',
  `groups` blob NULL,
  `guests` char(1) NOT NULL default '',
  `cssID` varchar(255) NOT NULL default '',
  `cal_calendar` blob NULL,
  `cal_noSpan` char(1) NOT NULL default '',
  `cal_startDay` smallint(5) unsigned NOT NULL default '1',
  `cal_format` varchar(32) NOT NULL default '',
  `cal_ignoreDynamic` char(1) NOT NULL default '',
  `cal_order` varchar(32) NOT NULL default '',
  `cal_readerModule` int(10) unsigned NOT NULL default '0',
  `cal_limit` smallint(5) unsigned NOT NULL default '0',
  `cal_template` varchar(32) NOT NULL default '',
  `cal_ctemplate` varchar(32) NOT NULL default '',
  `cal_showQuantity` char(1) NOT NULL default '',
  `list_table` varchar(64) NOT NULL default '',
  `list_fields` varchar(255) NOT NULL default '',
  `list_where` varchar(255) NOT NULL default '',
  `list_search` varchar(255) NOT NULL default '',
  `list_sort` varchar(255) NOT NULL default '',
  `list_info` varchar(255) NOT NULL default '',
  `list_info_where` varchar(255) NOT NULL default '',
  `list_layout` varchar(32) NOT NULL default '',
  `list_info_layout` varchar(32) NOT NULL default '',
  `news_archives` blob NULL,
  `news_featured` varchar(16) NOT NULL default '',
  `news_jumpToCurrent` varchar(16) NOT NULL default '',
  `news_readerModule` int(10) unsigned NOT NULL default '0',
  `news_metaFields` varchar(255) NOT NULL default '',
  `news_template` varchar(32) NOT NULL default '',
  `news_format` varchar(32) NOT NULL default '',
  `news_startDay` smallint(5) unsigned NOT NULL default '0',
  `news_order` varchar(255) NOT NULL default '',
  `news_showQuantity` char(1) NOT NULL default '',
  `newsletters` blob NULL,
  `nl_channels` blob NULL,
  `nl_hideChannels` char(1) NOT NULL default '',
  `nl_subscribe` text NULL,
  `nl_unsubscribe` text NULL,
  `nl_template` varchar(32) NOT NULL default '',
  `orderPages` blob NULL,
  `com_order` varchar(32) NOT NULL default '',
  `com_moderate` char(1) NOT NULL default '',
  `com_bbcode` char(1) NOT NULL default '',
  `com_requireLogin` char(1) NOT NULL default '',
  `com_disableCaptcha` char(1) NOT NULL default '',
  `com_template` varchar(32) NOT NULL default '',
  `faq_categories` blob NULL,
  `faq_readerModule` int(10) unsigned NOT NULL default '0',
  `customTpl` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;


#
# Dumping data for table 'tl_module'
#

INSERT INTO `tl_module` VALUES ( 1, 2, 1408717401, 'nav &#35;nav_main', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'navigation', 0, 1, '1', '', '1', 1, 'nav_default', 0x613a363a7b693a303b693a333b693a313b693a343b693a323b693a353b693a333b693a363b693a343b693a373b693a353b693a383b7d, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', 0x00000000000000000000000000000000, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', 0x00000000000000000000000000000000, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:8:"nav_main";}', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, '', NULL, '', '', '', '', '', '', NULL, 0, '' );
INSERT INTO `tl_module` VALUES ( 4, 2, 1388928981, 'Eventliste event_upcoming', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'eventlist', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', 0x00000000000000000000000000000000, '', '', '', NULL, 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:12:"proportional";}', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', 0x00000000000000000000000000000000, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 0x613a313a7b693a303b733a313a2233223b7d, '1', 0, 'next_all', '', 'ascending', 0, 4, 'event_upcoming', 'cal_default', '', '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, '', NULL, '', '', '', '', '', '', NULL, 0, '' );
INSERT INTO `tl_module` VALUES ( 5, 2, 1357753847, 'Eventleser', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'eventreader', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', 0x00000000000000000000000000000000, '', '', '', NULL, 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:12:"proportional";}', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', 0x00000000000000000000000000000000, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 0x613a333a7b693a303b733a313a2233223b693a313b733a313a2231223b693a323b733a313a2234223b7d, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, '', NULL, '', '', '', '', '', '', NULL, 0, '' );
INSERT INTO `tl_module` VALUES ( 9, 2, 1404130694, 'Eventliste-Menü', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'eventmenu', 0, 0, '', '', '', 0, '', NULL, '', '', '', 26, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 2, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', 0x00000000000000000000000000000000, '', '', '', NULL, 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:12:"proportional";}', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', 0x00000000000000000000000000000000, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 0x613a313a7b693a303b733a313a2233223b7d, '1', 0, 'cal_year', '', 'descending', 0, 0, 'event_full', 'cal_default', '1', '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, '', NULL, '', '', '', '', '', '', NULL, 0, '' );
INSERT INTO `tl_module` VALUES ( 8, 2, 1404136760, 'Nachrichtenliste newl_latest', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'newslist', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 2, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', 0x00000000000000000000000000000000, '', '', '', NULL, 'a:3:{i:0;s:3:"480";i:1;s:0:"";i:2;s:12:"proportional";}', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 0, '', NULL, '', '', '', '', 0x00000000000000000000000000000000, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', '', '', '', '', '', '', '', 'list_default', 'info_default', 0x613a313a7b693a303b733a313a2232223b7d, 'all_items', '', 0, 'a:1:{i:0;s:4:"date";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, '', NULL, '', '', '', '', '', '', NULL, 0, '' );
INSERT INTO `tl_module` VALUES ( 13, 2, 1453219353, 'include &#35;right', '', 'html', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', 0x00000000000000000000000000000000, '', '', '', NULL, '', '', '', NULL, NULL, '{{insert_article::45}}', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', 0x00000000000000000000000000000000, '', 0, NULL, NULL, '', NULL, '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, '', NULL, '', '', '', '', '', '', NULL, 0, '' );
INSERT INTO `tl_module` VALUES ( 16, 2, 1453664088, 'include &#35;header', '', 'html', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', 0x00000000000000000000000000000000, '', '', '', NULL, '', '', '', NULL, NULL, '{{insert_article::8}}', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', 0x00000000000000000000000000000000, '', 0, NULL, NULL, '', NULL, '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, '', NULL, '', '', '', '', '', '', NULL, 0, '' );
INSERT INTO `tl_module` VALUES ( 17, 2, 1453219353, 'include &#35;left', '', 'html', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', 0x00000000000000000000000000000000, '', '', '', NULL, '', '', '', NULL, NULL, '{{insert_article::60}}', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', 0x00000000000000000000000000000000, '', 0, NULL, NULL, '', NULL, '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, '', NULL, '', '', '', '', '', '', NULL, 0, '' );
INSERT INTO `tl_module` VALUES ( 18, 2, 1453219353, 'include &#35;footer', '', 'html', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', 0x00000000000000000000000000000000, '', '', '', NULL, '', '', '', NULL, NULL, '{{insert_article::59}}', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', 0x00000000000000000000000000000000, '', 0, NULL, NULL, '', NULL, '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, '', NULL, '', '', '', '', '', '', NULL, 0, '' );
INSERT INTO `tl_module` VALUES ( 19, 2, 1453219353, 'include &#35;main', '', 'html', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', 0x00000000000000000000000000000000, '', '', '', NULL, '', '', '', NULL, NULL, '{{insert_article::65}}', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', 0x00000000000000000000000000000000, '', 0, NULL, NULL, '', NULL, '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, '', NULL, '', '', '', '', '', '', NULL, 0, '' );
INSERT INTO `tl_module` VALUES ( 21, 2, 1388413681, 'nav &#35;nav_sub', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'navigation', 1, 0, '', '', '', 0, 'nav_default', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', 0x00000000000000000000000000000000, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', 0x00000000000000000000000000000000, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:7:"nav_sub";i:1;s:0:"";}', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', NULL, '', '', '', '', '', '', NULL, 0, '' );
INSERT INTO `tl_module` VALUES ( 33, 2, 1389171850, 'nav &#35;nav_footer', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'customnav', 1, 0, '', '', '', 0, 'nav_default', 0x613a333a7b693a303b693a31353b693a313b693a32343b693a323b693a33333b7d, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', 0x00000000000000000000000000000000, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', 0x00000000000000000000000000000000, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:10:"nav_footer";i:1;s:0:"";}', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', 0x613a333a7b693a303b733a323a223135223b693a313b733a323a223234223b693a323b733a323a223333223b7d, '', '', '', '', '', '', NULL, 0, '' );
INSERT INTO `tl_module` VALUES ( 34, 2, 1404137189, 'Eventliste event_teaser Archiv', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'eventlist', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 10, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', 0x00000000000000000000000000000000, '', '', '', NULL, 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:12:"proportional";}', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', 0x00000000000000000000000000000000, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 0x613a313a7b693a303b733a313a2233223b7d, '', 0, 'cal_year', '', 'ascending', 0, 0, 'event_teaser', 'cal_default', '', '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, '', NULL, '', '', '', '', '', '', NULL, 0, '' );
INSERT INTO `tl_module` VALUES ( 35, 2, 1453823066, 'Eventliste event_teaser upcomming', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'eventlist', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 10, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', 0x00000000000000000000000000000000, '', '', '', NULL, 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:12:"proportional";}', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', 0x00000000000000000000000000000000, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', 0x613a313a7b693a303b733a313a2233223b7d, '', 0, 'next_all', '', 'ascending', 0, 0, 'event_teaser', 'cal_default', '', '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, '', NULL, '', '', '', '', '', '', NULL, 0, '' );
INSERT INTO `tl_module` VALUES ( 36, 2, 1388940220, 'Nachrichtenleser', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'newsreader', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:12:"proportional";}', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', '', '', '', '', '', '', '', 'list_default', 'info_default', 0x613a313a7b693a303b733a313a2232223b7d, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:8:"comments";}', 'news_full', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, 'nl_simple', NULL, '', '', '', '', '', '', NULL, 0, '' );
INSERT INTO `tl_module` VALUES ( 37, 2, 1404128494, 'Nachrichtenarchiv news_simple', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'newsarchive', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', 0x00000000000000000000000000000000, '', '', '', NULL, 'a:3:{i:0;s:3:"160";i:1;s:0:"";i:2;s:12:"proportional";}', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 0, '', NULL, '', '', '', '', 0x00000000000000000000000000000000, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', '', '', '', '', '', '', '', 'list_default', 'info_default', 0x613a313a7b693a303b733a313a2232223b7d, 'all_items', 'show_current', 0, 'a:1:{i:0;s:4:"date";}', 'news_simple', 'news_year', 0, 'descending', '', NULL, NULL, '', NULL, NULL, '', NULL, '', '', '', '', '', '', NULL, 0, '' );
INSERT INTO `tl_module` VALUES ( 41, 2, 1389171725, 'Newsletter kündigen', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'unsubscribe', 0, 0, '', '', '', 0, '', NULL, '', '', '', 37, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, 0x613a313a7b693a303b733a313a2231223b7d, '1', 'Sie haben folgende Verteiler auf ##domain## abonniert:\n\n##channels##\n\nBitte klicken Sie ##link## um Ihr Abonnement zu aktivieren. Falls Sie die Bestellung nicht selbst getätigt haben, bitte ignorieren Sie diese E-Mail.', 'Sie haben folgende Abonnements auf ##domain## gekündigt:\n\n##channels##', 'nl_default', NULL, '', '', '', '', '', '', NULL, 0, '' );
INSERT INTO `tl_module` VALUES ( 38, 2, 1388940134, 'Nachrichtenarchiv Menu', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'newsmenu', 0, 0, '', '', '', 0, '', NULL, '', '', '', 27, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', '', '', '', '', '', '', '', 'list_default', 'info_default', 0x613a313a7b693a303b733a313a2232223b7d, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_year', 0, 'descending', '1', NULL, NULL, '', NULL, NULL, 'nl_simple', NULL, '', '', '', '', '', '', NULL, 0, '' );
INSERT INTO `tl_module` VALUES ( 40, 2, 1389171682, 'Newsletter abonnieren', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'subscribe', 0, 0, '', '', '', 0, '', NULL, '', '', '', 36, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', NULL, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', NULL, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:0:"";}', NULL, '', 1, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, 0x613a313a7b693a303b733a313a2231223b7d, '1', 'Sie haben folgende Verteiler auf ##domain## abonniert:\n\n##channels##\n\nBitte klicken Sie ##link## um Ihr Abonnement zu aktivieren. Falls Sie die Bestellung nicht selbst getätigt haben, bitte ignorieren Sie diese E-Mail.', NULL, 'nl_default', NULL, '', '', '', '', '', '', NULL, 0, '' );
INSERT INTO `tl_module` VALUES ( 42, 2, 1453219353, 'include Offcanvas Sidebar', '', 'html', 0, 0, '', '', '', 0, '', NULL, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', 0x00000000000000000000000000000000, '', '', '', NULL, '', '', '', NULL, NULL, '{{insert_article::83}}', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', 0x00000000000000000000000000000000, '', 0, NULL, NULL, '', NULL, '', '', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, '', NULL, '', '', '', '', '', '', NULL, 0, '' );
INSERT INTO `tl_module` VALUES ( 44, 2, 1408717394, 'nav &#35;nav_main offcanvas', 'a:2:{s:4:"unit";s:2:"h1";s:5:"value";s:0:"";}', 'navigation', 0, 0, '1', '', '1', 1, 'nav_default', 0x613a363a7b693a303b693a333b693a313b693a343b693a323b693a353b693a333b693a363b693a343b693a373b693a353b693a383b7d, '', '', '', 0, '', '2cl', NULL, '', '', 0, 'and', '', 48, 1000, 0, 'simple', '', 'main', 0, '', '', '', '', NULL, 'internal', 0x00000000000000000000000000000000, '', '', '', NULL, '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', 0x00000000000000000000000000000000, '', 0, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:"";i:1;s:8:"nav_main";}', NULL, '', 0, 'cal_month', '', 'ascending', 0, 0, 'event_full', 'cal_default', '', '', '', '', '', '', '', '', 'list_default', 'info_default', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}', 'news_latest', 'news_month', 0, 'descending', '', NULL, NULL, '', NULL, NULL, '', NULL, '', '', '', '', '', '', NULL, 0, '' );

#---------------------------------------------------------
# Table structure for table 'tl_news'
#---------------------------------------------------------
CREATE TABLE `tl_news` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `headline` varchar(255) NOT NULL default '',
  `alias` varchar(128) COLLATE utf8_bin NOT NULL default '',
  `author` int(10) unsigned NOT NULL default '0',
  `date` int(10) unsigned NOT NULL default '0',
  `time` int(10) unsigned NOT NULL default '0',
  `subheadline` varchar(255) NOT NULL default '',
  `teaser` text NULL,
  `addImage` char(1) NOT NULL default '',
  `singleSRC` binary(16) NULL,
  `alt` varchar(255) NOT NULL default '',
  `size` varchar(64) NOT NULL default '',
  `imageUrl` varchar(255) NOT NULL default '',
  `fullsize` char(1) NOT NULL default '',
  `caption` varchar(255) NOT NULL default '',
  `floating` varchar(12) NOT NULL default '',
  `addEnclosure` char(1) NOT NULL default '',
  `enclosure` blob NULL,
  `source` varchar(12) NOT NULL default '',
  `jumpTo` int(10) unsigned NOT NULL default '0',
  `articleId` int(10) unsigned NOT NULL default '0',
  `url` varchar(255) NOT NULL default '',
  `target` char(1) NOT NULL default '',
  `cssClass` varchar(255) NOT NULL default '',
  `noComments` char(1) NOT NULL default '',
  `featured` char(1) NOT NULL default '',
  `published` char(1) NOT NULL default '',
  `start` varchar(10) NOT NULL default '',
  `stop` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `alias` (`alias`),
  KEY `pid_start_stop_published` (`pid`, `start`, `stop`, `published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;


#
# Dumping data for table 'tl_news'
#

INSERT INTO `tl_news` VALUES ( 15, 2, 1404128296, 'Nachricht 1 Titel', 'nachricht-1-titel-15', 1, 1357145700, 1357145700, '', '<p>Lorem ipsum dolor sit amet, et simul minimum reprimique qui. Ei eum liber vituperata definitionem. Mea scripta maluisset dissentiunt id, in mundi habemus duo, cum justo integre et.</p>', '1', 0x0176e0e0004a11e4b32f001c42f7180d, '', 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:12:"proportional";}', '', '', '', 'right', '', NULL, 'default', 0, 0, '', '', '', '', '', '1', '', '' );
INSERT INTO `tl_news` VALUES ( 16, 2, 1404128110, 'Nachricht 1 Titel', 'nachricht-1-titel-16', 1, 1388681760, 1388681760, '', '<p>Lorem ipsum dolor sit amet, et simul minimum reprimique qui. Ei eum liber vituperata definitionem. Mea scripta maluisset dissentiunt id, in mundi habemus duo, cum justo integre et.</p>', '1', 0x423d6212004911e4b32f001c42f7180d, '', 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:12:"proportional";}', '', '', '', 'right', '', NULL, 'default', 0, 0, '', '', '', '', '', '1', '', '' );
INSERT INTO `tl_news` VALUES ( 17, 2, 1404128278, 'Nachricht 1 Titel', 'nachricht-1-titel-17', 1, 1388681760, 1388681760, '', '<p>Lorem ipsum dolor sit amet, et simul minimum reprimique qui. Ei eum liber vituperata definitionem. Mea scripta maluisset dissentiunt id, in mundi habemus duo, cum justo integre et.</p>', '1', 0x423d61fe004911e4b32f001c42f7180d, '', 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:12:"proportional";}', '', '', '', 'right', '', NULL, 'default', 0, 0, '', '', '', '', '', '1', '', '' );
INSERT INTO `tl_news` VALUES ( 18, 2, 1404128273, 'Nachricht 1 Titel', 'nachricht-1-titel-18', 1, 1388681760, 1388681760, '', '<p>Lorem ipsum dolor sit amet, et simul minimum reprimique qui. Ei eum liber vituperata definitionem. Mea scripta maluisset dissentiunt id, in mundi habemus duo, cum justo integre et.</p>', '1', 0x423d61f4004911e4b32f001c42f7180d, '', 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:12:"proportional";}', '', '', '', 'right', '', NULL, 'default', 0, 0, '', '', '', '', '', '1', '', '' );
INSERT INTO `tl_news` VALUES ( 19, 2, 1404128512, 'Nachricht 1 Titel', 'nachricht-1-titel-19', 1, 1357145760, 1357145760, '', '<p>Lorem ipsum dolor sit amet, et simul minimum reprimique qui. Ei eum liber vituperata definitionem. Mea scripta maluisset dissentiunt id, in mundi habemus duo, cum justo integre et.</p>', '1', 0x0176e0f4004a11e4b32f001c42f7180d, '', 'a:3:{i:0;s:0:"";i:1;s:0:"";i:2;s:12:"proportional";}', '', '', '', 'right', '', NULL, 'default', 0, 0, '', '', '', '', '', '1', '', '' );

#---------------------------------------------------------
# Table structure for table 'tl_news_archive'
#---------------------------------------------------------
CREATE TABLE `tl_news_archive` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `jumpTo` int(10) unsigned NOT NULL default '0',
  `protected` char(1) NOT NULL default '',
  `groups` blob NULL,
  `allowComments` char(1) NOT NULL default '',
  `notify` varchar(16) NOT NULL default '',
  `sortOrder` varchar(32) NOT NULL default '',
  `perPage` smallint(5) unsigned NOT NULL default '0',
  `moderate` char(1) NOT NULL default '',
  `bbcode` char(1) NOT NULL default '',
  `requireLogin` char(1) NOT NULL default '',
  `disableCaptcha` char(1) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;


#
# Dumping data for table 'tl_news_archive'
#

INSERT INTO `tl_news_archive` VALUES ( 2, 1388939563, 'Nachrichten Feed', 28, '', NULL, '', 'notify_admin', 'ascending', 0, '', '', '', '' );

#---------------------------------------------------------
# Table structure for table 'tl_news_feed'
#---------------------------------------------------------
CREATE TABLE `tl_news_feed` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(128) COLLATE utf8_bin NOT NULL default '',
  `language` varchar(32) NOT NULL default '',
  `archives` blob NULL,
  `format` varchar(32) NOT NULL default '',
  `source` varchar(32) NOT NULL default '',
  `maxItems` smallint(5) unsigned NOT NULL default '0',
  `feedBase` varchar(255) NOT NULL default '',
  `description` text NULL,
  PRIMARY KEY  (`id`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_news_feed' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_newsletter'
#---------------------------------------------------------
CREATE TABLE `tl_newsletter` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `subject` varchar(255) NOT NULL default '',
  `alias` varchar(128) COLLATE utf8_bin NOT NULL default '',
  `content` mediumtext NULL,
  `text` mediumtext NULL,
  `addFile` char(1) NOT NULL default '',
  `files` blob NULL,
  `template` varchar(32) NOT NULL default '',
  `sendText` char(1) NOT NULL default '',
  `externalImages` char(1) NOT NULL default '',
  `sender` varchar(128) NOT NULL default '',
  `senderName` varchar(128) NOT NULL default '',
  `sent` char(1) NOT NULL default '',
  `date` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;


#
# Dumping data for table 'tl_newsletter'
#

INSERT INTO `tl_newsletter` VALUES ( 1, 1, 1389170910, 'Newsletter Nr1', 'newsletter-nr1', '', '', '', NULL, 'mail_default', '', '', '', '', '', '' );

#---------------------------------------------------------
# Table structure for table 'tl_newsletter_channel'
#---------------------------------------------------------
CREATE TABLE `tl_newsletter_channel` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `jumpTo` int(10) unsigned NOT NULL default '0',
  `useSMTP` char(1) NOT NULL default '',
  `smtpHost` varchar(64) NOT NULL default '',
  `smtpUser` varchar(128) NOT NULL default '',
  `smtpPass` varchar(32) NOT NULL default '',
  `smtpEnc` varchar(3) NOT NULL default '',
  `smtpPort` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;


#
# Dumping data for table 'tl_newsletter_channel'
#

INSERT INTO `tl_newsletter_channel` VALUES ( 1, 1388413561, 'Newsletter', 0, '', '', '', '', '', 25 );

#---------------------------------------------------------
# Table structure for table 'tl_newsletter_recipients'
#---------------------------------------------------------
CREATE TABLE `tl_newsletter_recipients` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `email` varchar(255) NOT NULL default '',
  `active` char(1) NOT NULL default '',
  `addedOn` varchar(10) NOT NULL default '',
  `ip` varchar(64) NOT NULL default '',
  `token` varchar(32) NOT NULL default '',
  `confirmed` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_newsletter_recipients' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_page'
#---------------------------------------------------------
CREATE TABLE `tl_page` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `sorting` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(128) COLLATE utf8_bin NOT NULL default '',
  `type` varchar(32) NOT NULL default '',
  `pageTitle` varchar(255) NOT NULL default '',
  `language` varchar(5) NOT NULL default '',
  `robots` varchar(32) NOT NULL default '',
  `description` text NULL,
  `redirect` varchar(32) NOT NULL default '',
  `jumpTo` int(10) unsigned NOT NULL default '0',
  `url` varchar(255) NOT NULL default '',
  `target` char(1) NOT NULL default '',
  `dns` varchar(255) NOT NULL default '',
  `staticFiles` varchar(255) NOT NULL default '',
  `staticPlugins` varchar(255) NOT NULL default '',
  `fallback` char(1) NOT NULL default '',
  `adminEmail` varchar(255) NOT NULL default '',
  `dateFormat` varchar(32) NOT NULL default '',
  `timeFormat` varchar(32) NOT NULL default '',
  `datimFormat` varchar(32) NOT NULL default '',
  `createSitemap` char(1) NOT NULL default '',
  `sitemapName` varchar(32) NOT NULL default '',
  `useSSL` char(1) NOT NULL default '',
  `autoforward` char(1) NOT NULL default '',
  `protected` char(1) NOT NULL default '',
  `groups` blob NULL,
  `includeLayout` char(1) NOT NULL default '',
  `layout` int(10) unsigned NOT NULL default '0',
  `mobileLayout` int(10) unsigned NOT NULL default '0',
  `includeCache` char(1) NOT NULL default '',
  `cache` int(10) unsigned NOT NULL default '0',
  `includeChmod` char(1) NOT NULL default '',
  `cuser` int(10) unsigned NOT NULL default '0',
  `cgroup` int(10) unsigned NOT NULL default '0',
  `chmod` varchar(255) NOT NULL default '',
  `noSearch` char(1) NOT NULL default '',
  `cssClass` varchar(64) NOT NULL default '',
  `sitemap` varchar(32) NOT NULL default '',
  `hide` char(1) NOT NULL default '',
  `guests` char(1) NOT NULL default '',
  `tabindex` smallint(5) unsigned NOT NULL default '0',
  `accesskey` char(1) NOT NULL default '',
  `published` char(1) NOT NULL default '',
  `start` varchar(10) NOT NULL default '',
  `stop` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `alias` (`alias`),
  KEY `pid_type_start_stop_published` (`pid`, `type`, `start`, `stop`, `published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;


#
# Dumping data for table 'tl_page'
#

INSERT INTO `tl_page` VALUES ( 1, 0, 128, 1453316965, 'Seitenname', 'seitenname', 'root', '', 'de', '', NULL, 'permanent', 0, '', '', '', '', '', '1', '', '', '', '', '1', 'sitemap', '', '', '', NULL, '1', 1, 1, '', 2592000, '', 1, 2, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', '', '', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 3, 1, 128, 1405759226, 'Nachrichten', 'index', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 4, 1, 256, 1405676826, 'Veranstaltungen', 'veranstaltungen', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 5, 1, 384, 1405676826, 'Page 3', 'page-3', 'regular', '', '', 'index,follow', NULL, 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 6, 1, 512, 1405676826, 'Page 4', 'page-4', 'regular', '', '', 'index,follow', NULL, 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 34, 33, 128, 1389171305, 'Newsletter Abonnieren', 'newsletter/newsletter-abonnieren', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 2, 'a:11:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g1";i:7;s:2:"g2";i:8;s:2:"g4";i:9;s:2:"g5";i:10;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 26, 4, 256, 1388931166, 'Event Archiv', 'event-archiv', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 2, 'a:11:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g1";i:7;s:2:"g2";i:8;s:2:"g4";i:9;s:2:"g5";i:10;s:2:"g6";}', '', '', 'map_default', '1', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 10, 1, 1280, 1363699560, 'Standard Inhalte', 'standard-inhalte', 'regular', '', '', 'index,follow', NULL, 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '1', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 11, 1, 1408, 1388345106, '403 - Zugriff verweigert', 'id-403-zugriff-verweigert', 'error_403', '', '', 'index,follow', '403 - Zugriff verweigert', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', '', '', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 12, 1, 1536, 1388345111, '404 - Seite nicht gefunden', 'id-404-seite-nicht-gefunden', 'error_404', '', '', 'index,follow', '404 - Seite konnte nicht gefunden werden.', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', '', '', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 13, 4, 128, 1388930027, 'Eventleser', 'eventleser', 'regular', '', '', 'index,follow', NULL, 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '1', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 15, 1, 896, 1363689574, 'Impressum', 'impressum', 'regular', '', '', 'index,follow', NULL, 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '1', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 20, 3, 128, 1388668832, 'subpage 1', 'subpage-1', 'regular', '', '', 'index,follow', NULL, 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 2, 'a:11:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g1";i:7;s:2:"g2";i:8;s:2:"g4";i:9;s:2:"g5";i:10;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 21, 3, 256, 1388668832, 'subpage 2', 'subpage-2', 'regular', '', '', 'index,follow', NULL, 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 2, 'a:11:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g1";i:7;s:2:"g2";i:8;s:2:"g4";i:9;s:2:"g5";i:10;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 22, 3, 384, 1388668832, 'subpage 3', 'subpage-3', 'regular', '', '', 'index,follow', NULL, 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 2, 'a:11:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g1";i:7;s:2:"g2";i:8;s:2:"g4";i:9;s:2:"g5";i:10;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 23, 3, 512, 1388668832, 'subpage 4', 'subpage-4', 'regular', '', '', 'index,follow', NULL, 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 2, 'a:11:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g1";i:7;s:2:"g2";i:8;s:2:"g4";i:9;s:2:"g5";i:10;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 24, 1, 928, 1388413297, 'Datenschutz', 'datenschutz', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 2, 'a:11:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g1";i:7;s:2:"g2";i:8;s:2:"g4";i:9;s:2:"g5";i:10;s:2:"g6";}', '', '', 'map_default', '1', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 27, 3, 64, 1388931141, 'Nachrichten Archiv', 'nachrichten-archiv', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 2, 'a:11:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g1";i:7;s:2:"g2";i:8;s:2:"g4";i:9;s:2:"g5";i:10;s:2:"g6";}', '', '', 'map_default', '1', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 28, 3, 32, 1388939499, 'Nachrichten Leser', 'nachrichten-leser', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 2, 'a:11:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g1";i:7;s:2:"g2";i:8;s:2:"g4";i:9;s:2:"g5";i:10;s:2:"g6";}', '', '', 'map_default', '1', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 30, 1, 704, 1405676827, 'Page 5', 'page-5', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 31, 1, 800, 1392734906, 'Kontakt', 'kontakt', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g4";i:7;s:2:"g5";i:8;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 33, 1, 1344, 1389171863, 'Newsletter', 'newsletter', 'forward', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 2, 'a:11:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g1";i:7;s:2:"g2";i:8;s:2:"g4";i:9;s:2:"g5";i:10;s:2:"g6";}', '', '', 'map_default', '1', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 35, 33, 256, 1389171319, 'Newsletter abbestellen', 'newsletter/newsletter-abbestellen', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 2, 'a:11:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g1";i:7;s:2:"g2";i:8;s:2:"g4";i:9;s:2:"g5";i:10;s:2:"g6";}', '', '', 'map_default', '', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 36, 34, 128, 1402141149, 'Newsletter Bestellbestätigung', 'newsletter/newsletter-abonnieren/newsletter-bestellbestaetigung', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 2, 'a:11:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g1";i:7;s:2:"g2";i:8;s:2:"g4";i:9;s:2:"g5";i:10;s:2:"g6";}', '', '', 'map_default', '1', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 37, 35, 128, 1402141157, 'Newsletter Kündigungsbestätigung', 'newsletter/newsletter-abbestellen/newsletter-kuendigungsbestaetigung', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 2, 'a:11:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g1";i:7;s:2:"g2";i:8;s:2:"g4";i:9;s:2:"g5";i:10;s:2:"g6";}', '', '', 'map_default', '1', '', 0, '', '1', '', '' );
INSERT INTO `tl_page` VALUES ( 38, 31, 128, 1392734941, 'Kontakt - Anfrage versendet', 'kontakt/kontakt-anfrage-versendet', 'regular', '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0, '', 0, '', 0, 2, 'a:11:{i:0;s:2:"u1";i:1;s:2:"u2";i:2;s:2:"u3";i:3;s:2:"u4";i:4;s:2:"u5";i:5;s:2:"u6";i:6;s:2:"g1";i:7;s:2:"g2";i:8;s:2:"g4";i:9;s:2:"g5";i:10;s:2:"g6";}', '', '', 'map_default', '1', '', 0, '', '1', '', '' );

#---------------------------------------------------------
# Table structure for table 'tl_repository_installs'
#---------------------------------------------------------
CREATE TABLE `tl_repository_installs` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `extension` varchar(32) NOT NULL default '',
  `version` int(9) NOT NULL default '0',
  `build` int(9) NOT NULL default '0',
  `alpha` char(1) NOT NULL default '',
  `beta` char(1) NOT NULL default '',
  `rc` char(1) NOT NULL default '',
  `stable` char(1) NOT NULL default '1',
  `lickey` varchar(255) NOT NULL default '',
  `delprot` char(1) NOT NULL default '',
  `updprot` char(1) NOT NULL default '',
  `error` char(1) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;


#
# Dumping data for table 'tl_repository_installs'
#

INSERT INTO `tl_repository_installs` VALUES ( 23, 1453197848, 'm17-sticky-backend-footer', 20000059, 8, '0', '0', '0', '1', '', '', '', '' );
INSERT INTO `tl_repository_installs` VALUES ( 24, 1439822669, 'mobilecontent', 10010039, 3, '0', '0', '0', '1', '', '', '', '' );
INSERT INTO `tl_repository_installs` VALUES ( 27, 1453823839, 'BackupDB', 30020029, 13, '0', '0', '0', '1', '', '', '', '' );

#---------------------------------------------------------
# Table structure for table 'tl_repository_instfiles'
#---------------------------------------------------------
CREATE TABLE `tl_repository_instfiles` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `filename` varchar(255) NOT NULL default '',
  `filetype` char(1) NOT NULL default 'F',
  `flag` char(1) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1435 ;


#
# Dumping data for table 'tl_repository_instfiles'
#

INSERT INTO `tl_repository_instfiles` VALUES ( 1421, 27, 1453823839, 'system/modules/BackupDB/languages/ja/modules.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1414, 27, 1453823839, 'system/modules/BackupDB/languages/it', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1415, 27, 1453823839, 'system/modules/BackupDB/languages/it/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1416, 27, 1453823839, 'system/modules/BackupDB/languages/it/default.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1417, 27, 1453823839, 'system/modules/BackupDB/languages/it/modules.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1413, 27, 1453823839, 'system/modules/BackupDB/languages/fr/tl_settings.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1396, 27, 1453823839, 'system/modules/BackupDB/languages/en/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1397, 27, 1453823839, 'system/modules/BackupDB/languages/en/default.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1398, 27, 1453823839, 'system/modules/BackupDB/languages/en/modules.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1399, 27, 1453823839, 'system/modules/BackupDB/languages/en/tl_settings.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1400, 27, 1453823839, 'system/modules/BackupDB/languages/es', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1401, 27, 1453823839, 'system/modules/BackupDB/languages/es/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1402, 27, 1453823839, 'system/modules/BackupDB/languages/es/default.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1403, 27, 1453823839, 'system/modules/BackupDB/languages/es/modules.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1404, 27, 1453823839, 'system/modules/BackupDB/languages/fa', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1405, 27, 1453823839, 'system/modules/BackupDB/languages/fa/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1406, 27, 1453823839, 'system/modules/BackupDB/languages/fa/default.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1407, 27, 1453823839, 'system/modules/BackupDB/languages/fa/modules.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1408, 27, 1453823839, 'system/modules/BackupDB/languages/fa/tl_settings.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1409, 27, 1453823839, 'system/modules/BackupDB/languages/fr', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1410, 27, 1453823839, 'system/modules/BackupDB/languages/fr/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1411, 27, 1453823839, 'system/modules/BackupDB/languages/fr/default.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1412, 27, 1453823839, 'system/modules/BackupDB/languages/fr/modules.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1260, 24, 1392734719, 'system/modules/mobilecontent', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1247, 23, 1388925703, 'system/modules/m17StickyBEFooter/assets', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1248, 23, 1388925703, 'system/modules/m17StickyBEFooter', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1249, 23, 1453197848, 'system/modules/m17StickyBEFooter/assets/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1250, 23, 1453197848, 'system/modules/m17StickyBEFooter/assets/m17StickyBeFooter.css', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1251, 23, 1453197848, 'system/modules/m17StickyBEFooter/assets/m17StickyBeFooter.js', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1252, 23, 1453197848, 'system/modules/m17StickyBEFooter/assets/m17StickyBeFooter_uncompressed.css', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1253, 23, 1453197848, 'system/modules/m17StickyBEFooter/assets/m17StickyBeFooter_uncompressed.js', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1254, 23, 1388925703, 'system/modules/m17StickyBEFooter/config', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1255, 23, 1453197848, 'system/modules/m17StickyBEFooter/config/config.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1261, 24, 1439822669, 'system/modules/mobilecontent/.gitignore', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1262, 24, 1439822669, 'system/modules/mobilecontent/LICENSE.md', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1263, 24, 1439822669, 'system/modules/mobilecontent/README.md', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1264, 24, 1392734719, 'system/modules/mobilecontent/classes', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1265, 24, 1439822669, 'system/modules/mobilecontent/classes/MobileArticle.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1266, 24, 1439822669, 'system/modules/mobilecontent/classes/MobileContent.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1267, 24, 1439822669, 'system/modules/mobilecontent/classes/MobileInsertTag.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1268, 24, 1392734719, 'system/modules/mobilecontent/config', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1269, 24, 1439822669, 'system/modules/mobilecontent/config/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1270, 24, 1439822669, 'system/modules/mobilecontent/config/autoload.ini', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1271, 24, 1439822669, 'system/modules/mobilecontent/config/autoload.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1272, 24, 1439822669, 'system/modules/mobilecontent/config/config.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1273, 24, 1439822669, 'system/modules/mobilecontent/config/database.sql', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1274, 24, 1392734719, 'system/modules/mobilecontent/dca', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1275, 24, 1439822669, 'system/modules/mobilecontent/dca/tl_article.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1276, 24, 1439822669, 'system/modules/mobilecontent/dca/tl_content.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1277, 24, 1392734719, 'system/modules/mobilecontent/languages/de', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1278, 24, 1392734719, 'system/modules/mobilecontent/languages', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1279, 24, 1439822669, 'system/modules/mobilecontent/languages/de/default.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1280, 24, 1439822669, 'system/modules/mobilecontent/languages/de/modules.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1281, 24, 1439822669, 'system/modules/mobilecontent/languages/de/tl_article.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1282, 24, 1439822669, 'system/modules/mobilecontent/languages/de/tl_content.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1283, 24, 1392734719, 'system/modules/mobilecontent/languages/en', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1284, 24, 1439822669, 'system/modules/mobilecontent/languages/en/default.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1285, 24, 1439822669, 'system/modules/mobilecontent/languages/en/modules.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1286, 24, 1439822669, 'system/modules/mobilecontent/languages/en/tl_article.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1287, 24, 1439822669, 'system/modules/mobilecontent/languages/en/tl_content.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1420, 27, 1453823839, 'system/modules/BackupDB/languages/ja/default.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1418, 27, 1453823839, 'system/modules/BackupDB/languages/ja', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1419, 27, 1453823839, 'system/modules/BackupDB/languages/ja/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1369, 27, 1453823839, 'files/AutoBackupDB', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1370, 27, 1453823839, 'files/AutoBackupDB/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1371, 27, 1453823839, 'system/modules/BackupDB', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1372, 27, 1453823839, 'system/modules/BackupDB/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1373, 27, 1453823839, 'system/modules/BackupDB/AutoBackupDB.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1374, 27, 1453823839, 'system/modules/BackupDB/BackupDbCommon.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1375, 27, 1453823839, 'system/modules/BackupDB/BackupDbRun.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1376, 27, 1453823839, 'system/modules/BackupDB/CHANGELOG.txt', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1377, 27, 1453823839, 'system/modules/BackupDB/MakeWsTemplateRun.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1378, 27, 1453823839, 'system/modules/BackupDB/ModuleBackupDB.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1379, 27, 1453823839, 'system/modules/BackupDB/config', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1380, 27, 1453823839, 'system/modules/BackupDB/config/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1381, 27, 1453823839, 'system/modules/BackupDB/config/autoload.ini', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1382, 27, 1453823839, 'system/modules/BackupDB/config/autoload.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1383, 27, 1453823839, 'system/modules/BackupDB/config/config.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1384, 27, 1453823839, 'system/modules/BackupDB/dca', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1385, 27, 1453823839, 'system/modules/BackupDB/dca/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1386, 27, 1453823839, 'system/modules/BackupDB/dca/tl_settings.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1387, 27, 1453823839, 'system/modules/BackupDB/htacc', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1388, 27, 1453823839, 'system/modules/BackupDB/iconBackup.gif', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1389, 27, 1453823839, 'system/modules/BackupDB/languages/de', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1390, 27, 1453823839, 'system/modules/BackupDB/languages', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1391, 27, 1453823839, 'system/modules/BackupDB/languages/de/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1392, 27, 1453823839, 'system/modules/BackupDB/languages/de/default.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1393, 27, 1453823839, 'system/modules/BackupDB/languages/de/modules.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1394, 27, 1453823839, 'system/modules/BackupDB/languages/de/tl_settings.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1395, 27, 1453823839, 'system/modules/BackupDB/languages/en', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1422, 27, 1453823839, 'system/modules/BackupDB/languages/ja/tl_settings.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1423, 27, 1453823839, 'system/modules/BackupDB/languages/pl', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1424, 27, 1453823839, 'system/modules/BackupDB/languages/pl/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1425, 27, 1453823839, 'system/modules/BackupDB/languages/pl/default.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1426, 27, 1453823839, 'system/modules/BackupDB/languages/pl/modules.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1427, 27, 1453823839, 'system/modules/BackupDB/languages/ru', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1428, 27, 1453823839, 'system/modules/BackupDB/languages/ru/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1429, 27, 1453823839, 'system/modules/BackupDB/languages/ru/default.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1430, 27, 1453823839, 'system/modules/BackupDB/languages/ru/modules.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1431, 27, 1453823839, 'system/modules/BackupDB/languages/ru/tl_settings.php', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1432, 27, 1453823839, 'system/modules/BackupDB/templates', 'D', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1433, 27, 1453823839, 'system/modules/BackupDB/templates/.htaccess', 'F', '' );
INSERT INTO `tl_repository_instfiles` VALUES ( 1434, 27, 1453823839, 'system/modules/BackupDB/templates/mod_backup_db.html5', 'F', '' );

#---------------------------------------------------------
# Table structure for table 'tl_search'
#---------------------------------------------------------
CREATE TABLE `tl_search` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `text` mediumtext NULL,
  `filesize` double unsigned NOT NULL default '0',
  `checksum` varchar(32) NOT NULL default '',
  `protected` char(1) NOT NULL default '',
  `groups` blob NULL,
  `language` varchar(5) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`),
  KEY `url` (`url`),
  FULLTEXT KEY `text` (`text`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#---------------------------------------------------------
# Table structure for table 'tl_search_index'
#---------------------------------------------------------
CREATE TABLE `tl_search_index` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `word` varchar(64) COLLATE utf8_bin NOT NULL default '',
  `relevance` smallint(5) unsigned NOT NULL default '0',
  `language` varchar(5) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`),
  KEY `word` (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#---------------------------------------------------------
# Table structure for table 'tl_session'
#---------------------------------------------------------
CREATE TABLE `tl_session` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `sessionID` varchar(128) NOT NULL default '',
  `hash` varchar(40) NULL,
  `ip` varchar(64) NOT NULL default '',
  `su` char(1) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `hash` (`hash`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=130 ;


#---------------------------------------------------------
# Table structure for table 'tl_style'
#---------------------------------------------------------
CREATE TABLE `tl_style` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `sorting` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `invisible` char(1) NOT NULL default '',
  `selector` varchar(1022) NOT NULL default '',
  `category` varchar(32) NOT NULL default '',
  `comment` varchar(255) NOT NULL default '',
  `size` char(1) NOT NULL default '',
  `width` varchar(64) NOT NULL default '',
  `height` varchar(64) NOT NULL default '',
  `minwidth` varchar(64) NOT NULL default '',
  `minheight` varchar(64) NOT NULL default '',
  `maxwidth` varchar(64) NOT NULL default '',
  `maxheight` varchar(64) NOT NULL default '',
  `positioning` char(1) NOT NULL default '',
  `trbl` varchar(128) NOT NULL default '',
  `position` varchar(32) NOT NULL default '',
  `floating` varchar(32) NOT NULL default '',
  `clear` varchar(32) NOT NULL default '',
  `overflow` varchar(32) NOT NULL default '',
  `display` varchar(32) NOT NULL default '',
  `alignment` char(1) NOT NULL default '',
  `margin` varchar(128) NOT NULL default '',
  `padding` varchar(128) NOT NULL default '',
  `align` varchar(32) NOT NULL default '',
  `verticalalign` varchar(32) NOT NULL default '',
  `textalign` varchar(32) NOT NULL default '',
  `background` char(1) NOT NULL default '',
  `bgcolor` varchar(64) NOT NULL default '',
  `bgimage` varchar(255) NOT NULL default '',
  `bgposition` varchar(32) NOT NULL default '',
  `bgrepeat` varchar(32) NOT NULL default '',
  `shadowsize` varchar(128) NOT NULL default '',
  `shadowcolor` varchar(64) NOT NULL default '',
  `gradientAngle` varchar(32) NOT NULL default '',
  `gradientColors` varchar(128) NOT NULL default '',
  `border` char(1) NOT NULL default '',
  `borderwidth` varchar(128) NOT NULL default '',
  `borderstyle` varchar(32) NOT NULL default '',
  `bordercolor` varchar(64) NOT NULL default '',
  `borderradius` varchar(128) NOT NULL default '',
  `bordercollapse` varchar(32) NOT NULL default '',
  `borderspacing` varchar(64) NOT NULL default '',
  `font` char(1) NOT NULL default '',
  `fontfamily` varchar(255) NOT NULL default '',
  `fontsize` varchar(64) NOT NULL default '',
  `fontcolor` varchar(64) NOT NULL default '',
  `lineheight` varchar(64) NOT NULL default '',
  `fontstyle` varchar(255) NOT NULL default '',
  `whitespace` varchar(8) NOT NULL default '',
  `texttransform` varchar(32) NOT NULL default '',
  `textindent` varchar(64) NOT NULL default '',
  `letterspacing` varchar(64) NOT NULL default '',
  `wordspacing` varchar(64) NOT NULL default '',
  `list` char(1) NOT NULL default '',
  `liststyletype` varchar(32) NOT NULL default '',
  `liststyleimage` varchar(255) NOT NULL default '',
  `own` text NULL,
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_style' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_style_sheet'
#---------------------------------------------------------
CREATE TABLE `tl_style_sheet` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `name` varchar(64) NULL,
  `embedImages` int(10) unsigned NOT NULL default '0',
  `cc` varchar(32) NOT NULL default '',
  `media` varchar(255) NOT NULL default '',
  `mediaQuery` text NULL,
  `vars` text NULL,
  `disablePie` char(1) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#
# Dumping data for table 'tl_style_sheet' - no entries
#


#---------------------------------------------------------
# Table structure for table 'tl_theme'
#---------------------------------------------------------
CREATE TABLE `tl_theme` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `name` varchar(128) NOT NULL default '',
  `author` varchar(128) NOT NULL default '',
  `folders` blob NULL,
  `screenshot` binary(16) NULL,
  `templates` varchar(255) NOT NULL default '',
  `vars` text NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;


#
# Dumping data for table 'tl_theme'
#

INSERT INTO `tl_theme` VALUES ( 2, 1453823511, 'Theme', 'Martin Schwenzer', 0x613a323a7b693a303b733a31363a22fae580ecea7311e38ec3001c42f7180d223b693a313b733a31363a22a7e9336870b911e3a68bd1f55be66f7b223b7d, 0xfae58024ea7311e38ec3001c42f7180d, '', 'a:0:{}' );

#---------------------------------------------------------
# Table structure for table 'tl_undo'
#---------------------------------------------------------
CREATE TABLE `tl_undo` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `fromTable` varchar(255) NOT NULL default '',
  `query` text NULL,
  `affectedRows` smallint(5) unsigned NOT NULL default '0',
  `data` mediumblob NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


#---------------------------------------------------------
# Table structure for table 'tl_user'
#---------------------------------------------------------
CREATE TABLE `tl_user` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `username` varchar(64) COLLATE utf8_bin NULL,
  `name` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `language` varchar(5) NOT NULL default '',
  `backendTheme` varchar(32) NOT NULL default '',
  `uploader` varchar(32) NOT NULL default '',
  `showHelp` char(1) NOT NULL default '',
  `thumbnails` char(1) NOT NULL default '',
  `useRTE` char(1) NOT NULL default '',
  `useCE` char(1) NOT NULL default '',
  `password` varchar(128) NOT NULL default '',
  `pwChange` char(1) NOT NULL default '',
  `admin` char(1) NOT NULL default '',
  `groups` blob NULL,
  `inherit` varchar(12) NOT NULL default '',
  `modules` blob NULL,
  `themes` blob NULL,
  `pagemounts` blob NULL,
  `alpty` blob NULL,
  `filemounts` blob NULL,
  `fop` blob NULL,
  `forms` blob NULL,
  `formp` blob NULL,
  `disable` char(1) NOT NULL default '',
  `start` varchar(10) NOT NULL default '',
  `stop` varchar(10) NOT NULL default '',
  `session` blob NULL,
  `dateAdded` int(10) unsigned NOT NULL default '0',
  `lastLogin` int(10) unsigned NOT NULL default '0',
  `currentLogin` int(10) unsigned NOT NULL default '0',
  `loginCount` smallint(5) unsigned NOT NULL default '3',
  `locked` int(10) unsigned NOT NULL default '0',
  `calendars` blob NULL,
  `calendarp` blob NULL,
  `calendarfeeds` blob NULL,
  `calendarfeedp` blob NULL,
  `news` blob NULL,
  `newp` blob NULL,
  `newsfeeds` blob NULL,
  `newsfeedp` blob NULL,
  `newsletters` blob NULL,
  `newsletterp` blob NULL,
  `faqs` blob NULL,
  `faqp` blob NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;


#---------------------------------------------------------
# Table structure for table 'tl_user_group'
#---------------------------------------------------------
CREATE TABLE `tl_user_group` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tstamp` int(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `modules` blob NULL,
  `themes` blob NULL,
  `pagemounts` blob NULL,
  `alpty` blob NULL,
  `filemounts` blob NULL,
  `fop` blob NULL,
  `forms` blob NULL,
  `formp` blob NULL,
  `alexf` blob NULL,
  `disable` char(1) NOT NULL default '',
  `start` varchar(10) NOT NULL default '',
  `stop` varchar(10) NOT NULL default '',
  `calendars` blob NULL,
  `calendarp` blob NULL,
  `calendarfeeds` blob NULL,
  `calendarfeedp` blob NULL,
  `news` blob NULL,
  `newp` blob NULL,
  `newsfeeds` blob NULL,
  `newsfeedp` blob NULL,
  `newsletters` blob NULL,
  `newsletterp` blob NULL,
  `faqs` blob NULL,
  `faqp` blob NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;


#
# Dumping data for table 'tl_user_group'
#

INSERT INTO `tl_user_group` VALUES ( 2, 1408706183, 'Editor', 0x613a353a7b693a303b733a373a2261727469636c65223b693a313b733a343a226e657773223b693a323b733a383a2263616c656e646172223b693a333b733a343a2270616765223b693a343b733a353a2266696c6573223b7d, NULL, 0x613a313a7b693a303b693a313b7d, 0x613a343a7b693a303b733a373a22726567756c6172223b693a313b733a373a22666f7277617264223b693a323b733a383a227265646972656374223b693a333b733a343a22726f6f74223b7d, 0x613a313a7b693a303b733a31363a22a7e9336870b911e3a68bd1f55be66f7b223b7d, 0x613a333a7b693a303b733a323a226631223b693a313b733a323a226632223b693a323b733a323a226633223b7d, NULL, NULL, 0x613a3132393a7b693a303b733a31373a22746c5f61727469636c653a3a7469746c65223b693a313b733a32303a22746c5f61727469636c653a3a696e436f6c756d6e223b693a323b733a32303a22746c5f61727469636c653a3a6b6579776f726473223b693a333b733a31373a22746c5f61727469636c653a3a6373734944223b693a343b733a32313a22746c5f61727469636c653a3a7075626c6973686564223b693a353b733a31373a22746c5f61727469636c653a3a7374617274223b693a363b733a31363a22746c5f61727469636c653a3a73746f70223b693a373b733a32343a22746c5f61727469636c653a3a73686f776174646576696365223b693a383b733a32353a22746c5f63616c656e6461725f6576656e74733a3a7469746c65223b693a393b733a32353a22746c5f63616c656e6461725f6576656e74733a3a616c696173223b693a31303b733a32373a22746c5f63616c656e6461725f6576656e74733a3a61646454696d65223b693a31313b733a32393a22746c5f63616c656e6461725f6576656e74733a3a737461727454696d65223b693a31323b733a32373a22746c5f63616c656e6461725f6576656e74733a3a656e6454696d65223b693a31333b733a32393a22746c5f63616c656e6461725f6576656e74733a3a737461727444617465223b693a31343b733a32373a22746c5f63616c656e6461725f6576656e74733a3a656e6444617465223b693a31353b733a32383a22746c5f63616c656e6461725f6576656e74733a3a6c6f636174696f6e223b693a31363b733a32363a22746c5f63616c656e6461725f6576656e74733a3a746561736572223b693a31373b733a32393a22746c5f63616c656e6461725f6576656e74733a3a726563757272696e67223b693a31383b733a33303a22746c5f63616c656e6461725f6576656e74733a3a72657065617445616368223b693a31393b733a33313a22746c5f63616c656e6461725f6576656e74733a3a726563757272656e636573223b693a32303b733a32393a22746c5f63616c656e6461725f6576656e74733a3a61727469636c654964223b693a32313b733a32393a22746c5f63616c656e6461725f6576656e74733a3a7075626c6973686564223b693a32323b733a32353a22746c5f63616c656e6461725f6576656e74733a3a7374617274223b693a32333b733a32343a22746c5f63616c656e6461725f6576656e74733a3a73746f70223b693a32343b733a31363a22746c5f636f6e74656e743a3a74797065223b693a32353b733a32303a22746c5f636f6e74656e743a3a686561646c696e65223b693a32363b733a31363a22746c5f636f6e74656e743a3a74657874223b693a32373b733a32303a22746c5f636f6e74656e743a3a616464496d616765223b693a32383b733a32313a22746c5f636f6e74656e743a3a73696e676c65535243223b693a32393b733a31353a22746c5f636f6e74656e743a3a616c74223b693a33303b733a31373a22746c5f636f6e74656e743a3a7469746c65223b693a33313b733a31363a22746c5f636f6e74656e743a3a73697a65223b693a33323b733a32303a22746c5f636f6e74656e743a3a696d61676555726c223b693a33333b733a32303a22746c5f636f6e74656e743a3a66756c6c73697a65223b693a33343b733a31393a22746c5f636f6e74656e743a3a63617074696f6e223b693a33353b733a32303a22746c5f636f6e74656e743a3a666c6f6174696e67223b693a33363b733a31363a22746c5f636f6e74656e743a3a68746d6c223b693a33373b733a32303a22746c5f636f6e74656e743a3a6c69737474797065223b693a33383b733a32313a22746c5f636f6e74656e743a3a6c6973746974656d73223b693a33393b733a32323a22746c5f636f6e74656e743a3a7461626c656974656d73223b693a34303b733a31393a22746c5f636f6e74656e743a3a73756d6d617279223b693a34313b733a31373a22746c5f636f6e74656e743a3a7468656164223b693a34323b733a31373a22746c5f636f6e74656e743a3a74666f6f74223b693a34333b733a31373a22746c5f636f6e74656e743a3a746c656674223b693a34343b733a32303a22746c5f636f6e74656e743a3a736f727461626c65223b693a34353b733a32313a22746c5f636f6e74656e743a3a736f7274496e646578223b693a34363b733a32313a22746c5f636f6e74656e743a3a736f72744f72646572223b693a34373b733a32333a22746c5f636f6e74656e743a3a6d6f6f486561646c696e65223b693a34383b733a32303a22746c5f636f6e74656e743a3a6d6f6f5374796c65223b693a34393b733a32323a22746c5f636f6e74656e743a3a6d6f6f436c6173736573223b693a35303b733a32313a22746c5f636f6e74656e743a3a686967686c69676874223b693a35313b733a31393a22746c5f636f6e74656e743a3a7368436c617373223b693a35323b733a31363a22746c5f636f6e74656e743a3a636f6465223b693a35333b733a31353a22746c5f636f6e74656e743a3a75726c223b693a35343b733a31383a22746c5f636f6e74656e743a3a746172676574223b693a35353b733a32313a22746c5f636f6e74656e743a3a7469746c6554657874223b693a35363b733a32313a22746c5f636f6e74656e743a3a6c696e6b5469746c65223b693a35373b733a31373a22746c5f636f6e74656e743a3a656d626564223b693a35383b733a31353a22746c5f636f6e74656e743a3a72656c223b693a35393b733a32303a22746c5f636f6e74656e743a3a757365496d616765223b693a36303b733a32303a22746c5f636f6e74656e743a3a6d756c7469535243223b693a36313b733a32323a22746c5f636f6e74656e743a3a757365486f6d65446972223b693a36323b733a31383a22746c5f636f6e74656e743a3a706572526f77223b693a36333b733a31393a22746c5f636f6e74656e743a3a70657250616765223b693a36343b733a32353a22746c5f636f6e74656e743a3a6e756d6265724f664974656d73223b693a36353b733a31383a22746c5f636f6e74656e743a3a736f72744279223b693a36363b733a32323a22746c5f636f6e74656e743a3a67616c6c65727954706c223b693a36373b733a32313a22746c5f636f6e74656e743a3a706c61796572535243223b693a36383b733a31393a22746c5f636f6e74656e743a3a796f7574756265223b693a36393b733a32313a22746c5f636f6e74656e743a3a706f73746572535243223b693a37303b733a32323a22746c5f636f6e74656e743a3a706c6179657253697a65223b693a37313b733a32303a22746c5f636f6e74656e743a3a6175746f706c6179223b693a37323b733a32333a22746c5f636f6e74656e743a3a736c6964657244656c6179223b693a37333b733a32333a22746c5f636f6e74656e743a3a736c696465725370656564223b693a37343b733a32383a22746c5f636f6e74656e743a3a736c696465725374617274536c696465223b693a37353b733a32383a22746c5f636f6e74656e743a3a736c69646572436f6e74696e756f7573223b693a37363b733a32303a22746c5f636f6e74656e743a3a637465416c696173223b693a37373b733a32343a22746c5f636f6e74656e743a3a61727469636c65416c696173223b693a37383b733a31393a22746c5f636f6e74656e743a3a61727469636c65223b693a37393b733a31363a22746c5f636f6e74656e743a3a666f726d223b693a38303b733a31383a22746c5f636f6e74656e743a3a6d6f64756c65223b693a38313b733a32313a22746c5f636f6e74656e743a3a70726f746563746564223b693a38323b733a31383a22746c5f636f6e74656e743a3a67726f757073223b693a38333b733a31383a22746c5f636f6e74656e743a3a677565737473223b693a38343b733a31373a22746c5f636f6e74656e743a3a6373734944223b693a38353b733a32313a22746c5f636f6e74656e743a3a696e76697369626c65223b693a38363b733a31373a22746c5f636f6e74656e743a3a7374617274223b693a38373b733a31363a22746c5f636f6e74656e743a3a73746f70223b693a38383b733a32313a22746c5f636f6e74656e743a3a636f6d5f6f72646572223b693a38393b733a32333a22746c5f636f6e74656e743a3a636f6d5f70657250616765223b693a39303b733a32343a22746c5f636f6e74656e743a3a636f6d5f6d6f646572617465223b693a39313b733a32323a22746c5f636f6e74656e743a3a636f6d5f6262636f6465223b693a39323b733a33303a22746c5f636f6e74656e743a3a636f6d5f64697361626c6543617074636861223b693a39333b733a32383a22746c5f636f6e74656e743a3a636f6d5f726571756972654c6f67696e223b693a39343b733a32343a22746c5f636f6e74656e743a3a636f6d5f74656d706c617465223b693a39353b733a32343a22746c5f636f6e74656e743a3a73686f776174646576696365223b693a39363b733a31373a22746c5f6e6577733a3a686561646c696e65223b693a39373b733a31343a22746c5f6e6577733a3a616c696173223b693a39383b733a31333a22746c5f6e6577733a3a64617465223b693a39393b733a32303a22746c5f6e6577733a3a737562686561646c696e65223b693a3130303b733a31353a22746c5f6e6577733a3a746561736572223b693a3130313b733a31373a22746c5f6e6577733a3a616464496d616765223b693a3130323b733a31383a22746c5f6e6577733a3a73696e676c65535243223b693a3130333b733a31323a22746c5f6e6577733a3a616c74223b693a3130343b733a31333a22746c5f6e6577733a3a73697a65223b693a3130353b733a31373a22746c5f6e6577733a3a696d61676555726c223b693a3130363b733a31373a22746c5f6e6577733a3a6665617475726564223b693a3130373b733a31383a22746c5f6e6577733a3a7075626c6973686564223b693a3130383b733a31343a22746c5f6e6577733a3a7374617274223b693a3130393b733a31333a22746c5f6e6577733a3a73746f70223b693a3131303b733a31343a22746c5f706167653a3a7469746c65223b693a3131313b733a31343a22746c5f706167653a3a616c696173223b693a3131323b733a31333a22746c5f706167653a3a74797065223b693a3131333b733a31383a22746c5f706167653a3a706167655469746c65223b693a3131343b733a32303a22746c5f706167653a3a6465736372697074696f6e223b693a3131353b733a31373a22746c5f706167653a3a7265646972656374223b693a3131363b733a31353a22746c5f706167653a3a6a756d70546f223b693a3131373b733a31323a22746c5f706167653a3a75726c223b693a3131383b733a31353a22746c5f706167653a3a746172676574223b693a3131393b733a32303a22746c5f706167653a3a6175746f666f7277617264223b693a3132303b733a31383a22746c5f706167653a3a70726f746563746564223b693a3132313b733a31353a22746c5f706167653a3a67726f757073223b693a3132323b733a31343a22746c5f706167653a3a63686d6f64223b693a3132333b733a31373a22746c5f706167653a3a6e6f536561726368223b693a3132343b733a31333a22746c5f706167653a3a68696465223b693a3132353b733a31353a22746c5f706167653a3a677565737473223b693a3132363b733a31383a22746c5f706167653a3a7075626c6973686564223b693a3132373b733a31343a22746c5f706167653a3a7374617274223b693a3132383b733a31333a22746c5f706167653a3a73746f70223b7d, '', '', '', 0x613a313a7b693a303b733a313a2233223b7d, NULL, NULL, NULL, 0x613a313a7b693a303b733a313a2232223b7d, NULL, NULL, NULL, NULL, NULL, NULL, NULL );

#---------------------------------------------------------
# Table structure for table 'tl_version'
#---------------------------------------------------------
CREATE TABLE `tl_version` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `pid` int(10) unsigned NOT NULL default '0',
  `tstamp` int(10) unsigned NOT NULL default '0',
  `version` smallint(5) unsigned NOT NULL default '1',
  `fromTable` varchar(255) NOT NULL default '',
  `userid` int(10) unsigned NOT NULL default '0',
  `username` varchar(64) NULL,
  `description` varchar(255) NOT NULL default '',
  `editUrl` varchar(255) NOT NULL default '',
  `active` char(1) NOT NULL default '',
  `data` mediumblob NULL,
  PRIMARY KEY  (`id`),
  KEY `pid` (`pid`),
  KEY `fromTable` (`fromTable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

# --- End of Backup ---
