-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.2.3-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for procedure laravelstoredprocedure2.deletestudentbyid
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletestudentbyid`(id int)
BEGIN
	DELETE FROM students where students.id = id;
END//
DELIMITER ;

-- Dumping structure for procedure laravelstoredprocedure2.insertStudent
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertStudent`(name varchar(50))
BEGIN
	INSERT INTO students (name) VALUES(name);
END//
DELIMITER ;

-- Dumping structure for procedure laravelstoredprocedure2.insertStudent2
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertStudent2`(name varchar(50),sex varchar(50))
BEGIN
	INSERT INTO students (name,sex) VALUES(name,sex);
END//
DELIMITER ;

-- Dumping structure for table laravelstoredprocedure2.students
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '0',
  `sex` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table laravelstoredprocedure2.students: ~8 rows (approximately)
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` (`id`, `name`, `sex`) VALUES
	(3, 'santai', ''),
	(4, 'Gandul', ''),
	(6, 'sansa', 'M'),
	(7, 'dada', 'M'),
	(8, 'satu', 'L'),
	(9, 'ada', NULL),
	(10, 'sayur', 'M'),
	(11, 'sayur', 'M');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;

-- Dumping structure for procedure laravelstoredprocedure2.updateStudentbyid
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateStudentbyid`(name varchar(50),id int)
BEGIN
	UPDATE students SET students.name = name where students.id=id;
END//
DELIMITER ;

-- Dumping structure for procedure laravelstoredprocedure2.viewStudent
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `viewStudent`()
BEGIN
	SELECT * FROM students;
END//
DELIMITER ;

-- Dumping structure for procedure laravelstoredprocedure2.viewStudentbyid
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `viewStudentbyid`(
	IN `id` INT
)
BEGIN
	SELECT * FROM students WHERE students.id = id;
END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
