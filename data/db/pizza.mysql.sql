SET FOREIGN_KEY_CHECKS=0;
SET AUTOCOMMIT=0;
START TRANSACTION;

DROP TABLE IF EXISTS `crusts`;
CREATE TABLE IF NOT EXISTS `crusts` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `costs` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

INSERT INTO `crusts` (`id`, `name`, `costs`) VALUES
(1,'Pizzaboden aus Weizenmehl','2.0'),
(2,'Pizzaboden aus Vollkornmehl','2.5');

DROP TABLE IF EXISTS `pizzas`;
CREATE TABLE IF NOT EXISTS `pizzas` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `status` varchar(8) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `url` varchar(32) DEFAULT NULL,
  `crust_id` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pizzas_crust_id` (`crust_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

INSERT INTO `pizzas` (`id`, `status`, `name`, `description`, `price`, `url`, `crust_id`) VALUES
(1,'approved','Pizza Salami','<p>Die Pizza Salami ist Valentinas Spezialit&auml;t. Sie l&auml;sst die Salami extra aus Mailand von Ihrem Vater Giacomo herstellen, der Metzger aus Leidenschaft ist. Die Salami wird nur von Valentina geschnitten, Alessandro muss bei der Herstellung immer Abstand halten.</p><p>Die Pizza Salami wird mit einem knusprigen Boden aus Weizenmehl gebacken und mit Tomatenpampe, K&auml;se und leckerer Mail&auml;nder Salami belegt.</p>','4.95','pizza-salami',1),
(2,'approved','Pizza Salami Vollkorn','<p>Die Pizza Salami Vollkorn ist Valentinas Spezialit&auml;t. Sie l&auml;sst die Salami extra aus Mailand von Ihrem Vater Giacomo herstellen, der Metzger aus Leidenschaft ist. Die Salami wird nur von Valentina geschnitten, Alessandro muss bei der Herstellung immer Abstand halten.</p><p>Die Pizza Salami Vollkorn&nbsp;wird mit einem knusprigen Boden aus Vollkornmehl gebacken und mit Tomatenpampe, K&auml;se und leckerer Mail&auml;nder Salami belegt.</p>','5.95','pizza-salami-vollkorn',2),
(3,'approved','Pizza Schinken','<p>Die Pizza Schinken ist Alessandros Spezialit&auml;t. Den Prosciutto Cotto besorgt er direkt aus Parma und schneidet ihn hauchd&uuml;nn bei jeder Herstellung frisch vom ganzen Schinken ab. Schinken aus der Packung kommt Alessandro nicht auf die Pizza.</p><p>Die Pizza Schinken&nbsp;wird mit einem knusprigen Boden aus Weizenmehl gebacken und mit Tomatenpampe, K&auml;se und frischem Kochschinken aus Parma belegt.</p>','4.95','pizza-schinken',1),
(4,'approved','Pizza Schinken Vollkorn','<p>Die Pizza Schinken&nbsp;Vollkorn ist Alessandros Spezialit&auml;t. Den Prosciutto Cotto besorgt er direkt aus Parma und schneidet ihn hauchd&uuml;nn bei jeder Herstellung frisch vom ganzen Schinken ab. Schinken aus der Packung kommt Alessandro nicht auf die Pizza.</p><p>Die Pizza Schinken&nbsp;Vollkorn&nbsp;wird mit einem knusprigen Boden aus&nbsp;Vollkornmehl gebacken und mit Tomatenpampe, K&auml;se und frischem Kochschinken aus Parma belegt.</p>','5.95','pizza-schinken-vollkorn',2),
(5,'approved','Pizza Melone','<p>Die Pizza Melone ist die extravagante Spezialit&auml;t von Luigis Pizza-Service. Sie ist eine Erfindung von Alessandro, der sie einst auf eigenes Risiko in die Pizzakarte einbrachte. Zuerst waren die Kunden skeptisch, doch dann wandelte sie sich zu einem Dauerbrenner.</p><p>Die Pizza Melone wird mit einem knusprigen Boden aus Weizenmehl gebacken und mit Tomatenpampe, K&auml;se, Schinken und fruchtiger Honigmelone belegt.</p>','6.95','pizza-melone',1),
(6,'approved','Pizza Melone Vollkorn','<p>Die Pizza Melone&nbsp;Vollkorn ist die extravagante Spezialit&auml;t von Luigis Pizza-Service. Sie ist eine Erfindung von Alessandro, der sie einst auf eigenes Risiko in die Pizzakarte einbrachte. Zuerst waren die Kunden skeptisch, doch dann wandelte sie sich zu einem Dauerbrenner.</p><p>Die Pizza Melone Vollkorn wird mit einem knusprigen Boden aus Vollkornmehl gebacken und mit Tomatenpampe, K&auml;se, Schinken und fruchtiger Honigmelone belegt.</p>','7.95','pizza-melone-vollkorn',2),
(7,'approved','Pizza Speciale','<p>Die Pizza Speciale ist echte Teamarbeit. Auf der Pizza treffen Valentinas Salami aus Mailand, Alessandros Kochschinken aus Parma und frischen Champignons aufeinander. Dabei ist die Menge an Salami und Schinken optimal aufeinander abgestimmt.</p><p>Die Pizza Speciale&nbsp;wird mit einem knusprigen Boden aus Weizenmehl gebacken und mit Tomatenpampe, K&auml;se, Salami aus Mailand, Kochschinken aus Parma und frischen&nbsp;Champignons belegt.</p>','6.95','pizza-speciale',1),
(8,'approved','Pizza Speciale Vollkorn','<p>Die Pizza Speciale Vollkorn ist echte Teamarbeit. Auf der Pizza treffen Valentinas Salami aus Mailand, Alessandros Kochschinken aus Parma und frischen Champignons aufeinander. Dabei ist die Menge an Salami und Schinken optimal aufeinander abgestimmt.</p><p>Die Pizza Speciale&nbsp;Vollkorn wird mit einem knusprigen Boden aus Vollkornmehl gebacken und mit Tomatenpampe, K&auml;se, Salami aus Mailand, Kochschinken aus Parma und frischen&nbsp;Champignons belegt.</p>','7.95','pizza-speciale-vollkorn',2),
(9,'blocked','Pizza Thunfisch','<p>Die Pizza Thunfisch ist Luigis Leibspeise. Als Kind besuchte er jedes Jahr seinen Opa auf Sizilien, um ihn bei der Mattanza zuzuschauen. Trotz des blutigen Spektakels liebt Luigi auch heute noch seinen Thunfisch wie am ersten Tag.</p><p>Die Pizza Thunfisch wird mit einem knusprigen Boden aus Weizenmehl gebacken und mit Tomatenpampe, K&auml;se, Zwiebeln und Thunfisch belegt.</p>','7.95','pizza-thunfisch',1),
(10,'blocked','Pizza Thunfisch Vollkorn','<p>Die Pizza Thunfisch&nbsp;Vollkorn ist Luigis Leibspeise. Als Kind besuchte er jedes Jahr seinen Opa auf Sizilien, um ihn bei der Mattanza zuzuschauen. Trotz des blutigen Spektakels liebt Luigi auch heute noch seinen Thunfisch wie am ersten Tag.</p><p>Die Pizza Thunfisch Vollkorn wird mit einem knusprigen Boden aus Vollkornmehl gebacken und mit Tomatenpampe, K&auml;se, Zwiebeln und Thunfisch belegt.</p>','8.95','pizza-thunfisch-vollkorn',2),
(11,'approved','Pizza Spinaci','<p>Die Pizza Spinaci ist Francescas Lieblingspizza. Sie a&szlig; als Kind schon ihren Br&uuml;dern immer den Spinat weg, um gro&szlig; und stark zu werden. Da ist es wenig &uuml;berraschend, dass sie diese Pizzakomposition gegen die Einw&auml;nde von Luigi dauerhaft auf der Karte platzieren konnte.</p><p>Die Pizza Spinaci wird mit einem knusprigen Boden aus Weizenmehl gebacken und mit Tomatenpampe, K&auml;se, Fetak&auml;se und frischem Spinat belegt.</p>','7.95','pizza-spinaci',1),
(12,'approved','Pizza Spinaci Vollkorn','<p>Die Pizza Spinaci&nbsp;Vollkorn ist Francescas Lieblingspizza. Sie a&szlig; als Kind schon ihren Br&uuml;dern immer den Spinat weg, um gro&szlig; und stark zu werden. Da ist es wenig &uuml;berraschend, dass sie diese Pizzakomposition gegen die Einw&auml;nde von Luigi dauerhaft auf der Karte platzieren konnte.</p><p>Die Pizza Spinaci&nbsp;Vollkorn wird mit einem knusprigen Boden aus Vollkornmehl gebacken und mit Tomatenpampe, K&auml;se, Fetak&auml;se und frischem Spinat belegt.</p>','8.95','pizza-spinaci-vollkorn',2),
(13,'approved','Pizza Mexicana','<p>Die Pizza Mexicana l&auml;sst die Herzen von Freunden der deftigen K&uuml;che h&ouml;her schlagen. Eigentlich hat Italien wenig mit Mexiko zu tun, dennoch verlangten immer mehr Kunden nach einer soliden Pizza mit Hackfleisch und deftigem Gem&uuml;se.</p><p>Die Pizza Mexicana wird mit einem knusprigen Boden aus Weizenmehl gebacken und mit Tomatenpampe, K&auml;se, Zwiebeln, Peperoni, Mais und extra viel Hackfleisch belegt.</p>','8.95','pizza-mexicana',1),
(14,'approved','Pizza Mexicana Vollkorn','<p>Die Pizza Mexicana&nbsp;Vollkorn l&auml;sst die Herzen von Freunden der deftigen K&uuml;che h&ouml;her schlagen. Eigentlich hat Italien wenig mit Mexiko zu tun, dennoch verlangten immer mehr Kunden nach einer soliden Pizza mit Hackfleisch und deftigem Gem&uuml;se.</p><p>Die Pizza Mexicana Vollkorn wird mit einem knusprigen Boden aus Vollkornmehl gebacken und mit Tomatenpampe, K&auml;se, Zwiebeln, Peperoni, Mais und extra viel Hackfleisch belegt.</p>','9.95','pizza-mexicana-vollkorn',2);

DROP TABLE IF EXISTS `pizzas_toppings`;
CREATE TABLE IF NOT EXISTS `pizzas_toppings` (
  `pizza_id` smallint(6) DEFAULT NULL,
  `topping_id` smallint(6) DEFAULT NULL,
  KEY `pizzas_toppings_pizza_id` (`pizza_id`),
  KEY `pizzas_toppings_topping_id` (`topping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `pizzas_toppings` (`pizza_id`, `topping_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 4),
(4, 1),
(4, 2),
(4, 4),
(5, 1),
(5, 2),
(5, 4),
(5, 7),
(6, 1),
(6, 2),
(6, 4),
(6, 7),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 6),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 6),
(9, 1),
(9, 2),
(9, 8),
(9, 9),
(10, 1),
(10, 2),
(10, 8),
(10, 9),
(11, 1),
(11, 2),
(11, 10),
(11, 12),
(12, 1),
(12, 2),
(12, 10),
(12, 12),
(13, 1),
(13, 2),
(13, 8),
(13, 11),
(13, 13),
(13, 14),
(14, 1),
(14, 2),
(14, 8),
(14, 11),
(14, 13),
(14, 14);

DROP TABLE IF EXISTS `toppings`;
CREATE TABLE IF NOT EXISTS `toppings` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `costs` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

INSERT INTO `toppings` (`id`, `name`, `costs`) VALUES
(1,'Tomatenpampe','0.5'),
(2,'Käse','0.5'),
(3,'Salami','1.0'),
(4,'Schinken','1.0'),
(5,'Ananas','1.5'),
(6,'Champignons','1.0'),
(7,'Melone','1.5'),
(8,'Zwiebeln','0.5'),
(9,'Thunfisch','2.0'),
(10,'Spinat','1.5'),
(11,'Peperoni','1.0'),
(12,'Feta','1.5'),
(13,'Hackfleisch','2.0'),
(14,'Mais','1.0');

SET FOREIGN_KEY_CHECKS=1;
COMMIT;
