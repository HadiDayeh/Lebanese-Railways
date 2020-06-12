-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `most_sold_ticket`
--

DROP TABLE IF EXISTS `most_sold_ticket`;
/*!50001 DROP VIEW IF EXISTS `most_sold_ticket`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `most_sold_ticket` AS SELECT 
 1 AS `type`,
 1 AS `tickets_sold`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `trains_of_date`
--

DROP TABLE IF EXISTS `trains_of_date`;
/*!50001 DROP VIEW IF EXISTS `trains_of_date`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `trains_of_date` AS SELECT 
 1 AS `id_train`,
 1 AS `chassis`,
 1 AS `max_capacity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `emp_current_positions`
--

DROP TABLE IF EXISTS `emp_current_positions`;
/*!50001 DROP VIEW IF EXISTS `emp_current_positions`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `emp_current_positions` AS SELECT 
 1 AS `id_employee`,
 1 AS `employee_name`,
 1 AS `position`,
 1 AS `from_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `trip_track`
--

DROP TABLE IF EXISTS `trip_track`;
/*!50001 DROP VIEW IF EXISTS `trip_track`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `trip_track` AS SELECT 
 1 AS `id_station`,
 1 AS `station_location`,
 1 AS `time`,
 1 AS `order`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `trip_team`
--

DROP TABLE IF EXISTS `trip_team`;
/*!50001 DROP VIEW IF EXISTS `trip_team`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `trip_team` AS SELECT 
 1 AS `id_employee`,
 1 AS `employee_name`,
 1 AS `position`,
 1 AS `id_captain`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tickets_of_date`
--

DROP TABLE IF EXISTS `tickets_of_date`;
/*!50001 DROP VIEW IF EXISTS `tickets_of_date`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `tickets_of_date` AS SELECT 
 1 AS `id_ticket`,
 1 AS `type`,
 1 AS `passenger_name`,
 1 AS `id_trip`,
 1 AS `from`,
 1 AS `to`,
 1 AS `sold_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `most_sold_ticket`
--

/*!50001 DROP VIEW IF EXISTS `most_sold_ticket`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `most_sold_ticket` AS select `types_tickets`.`type` AS `type`,count(`tickets`.`id_type`) AS `tickets_sold` from (`tickets` join `types_tickets` on((`tickets`.`id_type` = `types_tickets`.`id_type`))) group by `tickets`.`id_type` order by `tickets_sold` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `trains_of_date`
--

/*!50001 DROP VIEW IF EXISTS `trains_of_date`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `trains_of_date` AS select `trains`.`id_train` AS `id_train`,`trains`.`chassis` AS `chassis`,`trains`.`max_capacity` AS `max_capacity` from (`trips` join `trains`) where ((`trips`.`id_train` = `trains`.`id_train`) and (`trips`.`date` >= '2019-05-04 00:01:34')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `emp_current_positions`
--

/*!50001 DROP VIEW IF EXISTS `emp_current_positions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `emp_current_positions` AS select `employees`.`id_employee` AS `id_employee`,concat(`employees`.`first_name`,' ',`employees`.`last_name`) AS `employee_name`,`positions`.`position` AS `position`,`log_emp_positions`.`from_date` AS `from_date` from ((`log_emp_positions` left join `employees` on((`employees`.`id_employee` = `log_emp_positions`.`id_employee`))) left join `positions` on((`positions`.`id_position` = `log_emp_positions`.`id_position`))) where isnull(`log_emp_positions`.`to_date`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `trip_track`
--

/*!50001 DROP VIEW IF EXISTS `trip_track`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `trip_track` AS select `stations`.`id_station` AS `id_station`,concat(`cities`.`city`,', ',`addresses`.`line1`) AS `station_location`,`log_track_stations`.`time` AS `time`,`log_track_stations`.`order` AS `order` from (((`stations` join (`addresses` join `cities` on((`cities`.`id_city` = `addresses`.`id_city`))) on((`stations`.`id_address` = `addresses`.`id_address`))) join `log_track_stations` on((`stations`.`id_station` = `log_track_stations`.`id_station`))) join `trips`) where ((`trips`.`id_trip` = 2) and (`log_track_stations`.`id_track` = `trips`.`id_track`)) order by `log_track_stations`.`order` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `trip_team`
--

/*!50001 DROP VIEW IF EXISTS `trip_team`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `trip_team` AS select `emp_current_positions`.`id_employee` AS `id_employee`,`emp_current_positions`.`employee_name` AS `employee_name`,`emp_current_positions`.`position` AS `position`,`trips`.`id_captain` AS `id_captain` from ((`emp_current_positions` join `log_trips_teams`) join `trips`) where ((`trips`.`id_trip` = 3) and (`log_trips_teams`.`id_trip` = 3) and (`log_trips_teams`.`id_employee` = `emp_current_positions`.`id_employee`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tickets_of_date`
--

/*!50001 DROP VIEW IF EXISTS `tickets_of_date`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tickets_of_date` AS select `tickets`.`id_ticket` AS `id_ticket`,`types_tickets`.`type` AS `type`,concat(`passengers`.`first_name`,' ',`passengers`.`last_name`) AS `passenger_name`,`tickets`.`id_trip` AS `id_trip`,concat(`stations_location_from`.`station_location`) AS `from`,concat(`stations_location_to`.`station_location`) AS `to`,`tickets`.`sold_price` AS `sold_price` from ((((`tickets` join `types_tickets` on((`tickets`.`id_type` = `types_tickets`.`id_type`))) join `passengers` on((`tickets`.`id_passenger` = `passengers`.`id_passenger`))) left join (select `stations`.`id_station` AS `id_station`,concat(`cities`.`city`,', ',`addresses`.`line1`) AS `station_location` from (`stations` join (`addresses` join `cities` on((`cities`.`id_city` = `addresses`.`id_city`))) on((`stations`.`id_address` = `addresses`.`id_address`)))) `stations_location_from` on((`tickets`.`id_station_from` = `stations_location_from`.`id_station`))) left join (select `stations`.`id_station` AS `id_station`,concat(`cities`.`city`,', ',`addresses`.`line1`) AS `station_location` from (`stations` join (`addresses` join `cities` on((`cities`.`id_city` = `addresses`.`id_city`))) on((`stations`.`id_address` = `addresses`.`id_address`)))) `stations_location_to` on((`tickets`.`id_station_to` = `stations_location_to`.`id_station`))) where (`tickets`.`date_time` >= '2019-05-04') order by `tickets`.`id_ticket`,`types_tickets`.`type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-09  0:10:22
