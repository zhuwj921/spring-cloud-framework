CREATE DATABASE /*!32312 IF NOT EXISTS*/`spring_cloud` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `spring_cloud`;

/*Table structure for table `oauth_client_details` */

DROP TABLE IF EXISTS `oauth_client_details`;

CREATE TABLE `oauth_client_details` (
  `client_id` varchar(128) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `oauth_client_details` */

insert  into `oauth_client_details`(`client_id`,`resource_ids`,`client_secret`,`scope`,`authorized_grant_types`,`web_server_redirect_uri`,`authorities`,`access_token_validity`,`refresh_token_validity`,`additional_information`,`autoapprove`) values ('webapp',NULL,'webapp','select,write','password,authorization_code,client_credentials,implicit,refresh_token',NULL,NULL,7200,72000,'后台管理系统',NULL);



/*Table structure for table `t_menu` */

DROP TABLE IF EXISTS `t_menu`;

CREATE TABLE `t_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(128) DEFAULT NULL,
  `redirect` varchar(64) DEFAULT NULL,
  `label` varchar(64) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '-1',
  `key` varchar(64) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT '0',
  `icon` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_menu` */

insert  into `t_menu`(`id`,`path`,`redirect`,`label`,`pid`,`key`,`hidden`,`icon`) values (1,NULL,NULL,'系统管理',-1,'system',0,NULL),(2,NULL,NULL,'三方管理',-1,'tpParty',0,NULL),(3,'system','/system/client','系统设置',1,'',0,'example'),(4,'tp','/tp/tree','客户端设置',2,'',0,'example'),(5,'tree',NULL,'树',4,NULL,0,NULL),(6,'client',NULL,'客户端管理',3,NULL,0,NULL),(7,'user',NULL,'用户管理',3,NULL,0,NULL),(8,'menu',NULL,'菜单管理',3,NULL,0,NULL),(9,NULL,NULL,'充电补贴',-1,'charge',0,NULL),(10,'apply','/apply/private','补贴申请情况',9,NULL,0,'example'),(11,'private',NULL,'个人车辆申请',10,NULL,0,NULL),(12,'allowance','/allowance/settlement','补贴发放',9,'',0,'example'),(13,'settlement',NULL,'充电运营商月结',12,NULL,0,NULL),(14,'chargeList','/chargeList/check','充电单流水',9,NULL,0,'example'),(15,'check',NULL,'日订单核算',14,NULL,0,NULL),(16,'query',NULL,'充电单查询',14,NULL,0,NULL),(17,'channel','','渠道管理',2,'',0,'example'),(18,'list','','渠道列表',17,'',0,'');

/*Table structure for table `t_role` */

DROP TABLE IF EXISTS `t_role`;

CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `menujson` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_role` */

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cteate_date` datetime DEFAULT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(128) NOT NULL,
  `enabled` tinyint(4) DEFAULT '1' COMMENT '0 禁止登入 1 可以登入',
  `rolejson` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`cteate_date`,`username`,`password`,`enabled`,`rolejson`) values (1,'2018-01-29 10:31:45','system','123456',1,NULL),(2,'2018-01-30 10:53:04','test','123456',1,NULL),(3,'2018-02-28 17:36:05','sysadmin','123456',1,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
