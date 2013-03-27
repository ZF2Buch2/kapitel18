DROP TABLE IF EXISTS crusts;
CREATE TABLE crusts (
  id smallint NOT NULL,
  name varchar(32) DEFAULT NULL,
  cost decimal(4,2) DEFAULT NULL,

  CONSTRAINT crusts_id PRIMARY KEY(id)
);

INSERT INTO crusts VALUES (1,'Pizzaboden aus Weizenmehl','2.0');
INSERT INTO crusts VALUES (2,'Pizzaboden aus Vollkornmehl','2.5');


DROP TABLE IF EXISTS pizzas;
CREATE TABLE pizzas (
  id smallint NOT NULL,
  status varchar(8) DEFAULT NULL,
  name varchar(32) DEFAULT NULL,
  description text DEFAULT NULL,
  price decimal(5,2) DEFAULT NULL,
  url varchar(32) DEFAULT NULL,
  crust_id smallint DEFAULT NULL,

  CONSTRAINT pizzas_id PRIMARY KEY(id)
);



CREATE INDEX pizzas_crust_id ON pizzas
  USING btree (crust_id);

INSERT INTO pizzas VALUES (1,'approved','Pizza Salami','<p>Die Pizza Salami ist Valentinas Spezialit&auml;t. Sie l&auml;sst die Salami extra aus Mailand von Ihrem Vater Giacomo herstellen, der Metzger aus Leidenschaft ist. Die Salami wird nur von Valentina geschnitten, Alessandro muss bei der Herstellung immer Abstand halten.</p><p>Die Pizza Salami wird mit einem knusprigen Boden aus Weizenmehl gebacken und mit Tomatenpampe, K&auml;se und leckerer Mail&auml;nder Salami belegt.</p>','4.95','pizza-salami',1);
INSERT INTO pizzas VALUES (2,'approved','Pizza Salami Vollkorn','<p>Die Pizza Salami Vollkorn ist Valentinas Spezialit&auml;t. Sie l&auml;sst die Salami extra aus Mailand von Ihrem Vater Giacomo herstellen, der Metzger aus Leidenschaft ist. Die Salami wird nur von Valentina geschnitten, Alessandro muss bei der Herstellung immer Abstand halten.</p><p>Die Pizza Salami Vollkorn&nbsp;wird mit einem knusprigen Boden aus Vollkornmehl gebacken und mit Tomatenpampe, K&auml;se und leckerer Mail&auml;nder Salami belegt.</p>','5.95','pizza-salami-vollkorn',2);
INSERT INTO pizzas VALUES (3,'approved','Pizza Schinken','<p>Die Pizza Schinken ist Alessandros Spezialit&auml;t. Den Prosciutto Cotto besorgt er direkt aus Parma und schneidet ihn hauchd&uuml;nn bei jeder Herstellung frisch vom ganzen Schinken ab. Schinken aus der Packung kommt Alessandro nicht auf die Pizza.</p><p>Die Pizza Schinken&nbsp;wird mit einem knusprigen Boden aus Weizenmehl gebacken und mit Tomatenpampe, K&auml;se und frischem Kochschinken aus Parma belegt.</p>','4.95','pizza-schinken',1);
INSERT INTO pizzas VALUES (4,'approved','Pizza Schinken Vollkorn','<p>Die Pizza Schinken&nbsp;Vollkorn ist Alessandros Spezialit&auml;t. Den Prosciutto Cotto besorgt er direkt aus Parma und schneidet ihn hauchd&uuml;nn bei jeder Herstellung frisch vom ganzen Schinken ab. Schinken aus der Packung kommt Alessandro nicht auf die Pizza.</p><p>Die Pizza Schinken&nbsp;Vollkorn&nbsp;wird mit einem knusprigen Boden aus&nbsp;Vollkornmehl gebacken und mit Tomatenpampe, K&auml;se und frischem Kochschinken aus Parma belegt.</p>','5.95','pizza-schinken-vollkorn',2);
INSERT INTO pizzas VALUES (5,'approved','Pizza Melone','<p>Die Pizza Melone ist die extravagante Spezialit&auml;t von Luigis Pizza-Service. Sie ist eine Erfindung von Alessandro, der sie einst auf eigenes Risiko in die Pizzakarte einbrachte. Zuerst waren die Kunden skeptisch, doch dann wandelte sie sich zu einem Dauerbrenner.</p><p>Die Pizza Melone wird mit einem knusprigen Boden aus Weizenmehl gebacken und mit Tomatenpampe, K&auml;se, Schinken und fruchtiger Honigmelone belegt.</p>','6.95','pizza-melone',1);
INSERT INTO pizzas VALUES (6,'approved','Pizza Melone Vollkorn','<p>Die Pizza Melone&nbsp;Vollkorn ist die extravagante Spezialit&auml;t von Luigis Pizza-Service. Sie ist eine Erfindung von Alessandro, der sie einst auf eigenes Risiko in die Pizzakarte einbrachte. Zuerst waren die Kunden skeptisch, doch dann wandelte sie sich zu einem Dauerbrenner.</p><p>Die Pizza Melone Vollkorn wird mit einem knusprigen Boden aus Vollkornmehl gebacken und mit Tomatenpampe, K&auml;se, Schinken und fruchtiger Honigmelone belegt.</p>','7.95','pizza-melone-vollkorn',2);
INSERT INTO pizzas VALUES (7,'approved','Pizza Speciale','<p>Die Pizza Speciale ist echte Teamarbeit. Auf der Pizza treffen Valentinas Salami aus Mailand, Alessandros Kochschinken aus Parma und frischen Champignons aufeinander. Dabei ist die Menge an Salami und Schinken optimal aufeinander abgestimmt.</p><p>Die Pizza Speciale&nbsp;wird mit einem knusprigen Boden aus Weizenmehl gebacken und mit Tomatenpampe, K&auml;se, Salami aus Mailand, Kochschinken aus Parma und frischen&nbsp;Champignons belegt.</p>','6.95','pizza-speciale',1);
INSERT INTO pizzas VALUES (8,'approved','Pizza Speciale Vollkorn','<p>Die Pizza Speciale Vollkorn ist echte Teamarbeit. Auf der Pizza treffen Valentinas Salami aus Mailand, Alessandros Kochschinken aus Parma und frischen Champignons aufeinander. Dabei ist die Menge an Salami und Schinken optimal aufeinander abgestimmt.</p><p>Die Pizza Speciale&nbsp;Vollkorn wird mit einem knusprigen Boden aus Vollkornmehl gebacken und mit Tomatenpampe, K&auml;se, Salami aus Mailand, Kochschinken aus Parma und frischen&nbsp;Champignons belegt.</p>','7.95','pizza-speciale-vollkorn',2);
INSERT INTO pizzas VALUES (9,'blocked','Pizza Thunfisch','<p>Die Pizza Thunfisch ist Luigis Leibspeise. Als Kind besuchte er jedes Jahr seinen Opa auf Sizilien, um ihn bei der Mattanza zuzuschauen. Trotz des blutigen Spektakels liebt Luigi auch heute noch seinen Thunfisch wie am ersten Tag.</p><p>Die Pizza Thunfisch wird mit einem knusprigen Boden aus Weizenmehl gebacken und mit Tomatenpampe, K&auml;se, Zwiebeln und Thunfisch belegt.</p>','7.95','pizza-thunfisch',1);
INSERT INTO pizzas VALUES (10,'blocked','Pizza Thunfisch Vollkorn','<p>Die Pizza Thunfisch&nbsp;Vollkorn ist Luigis Leibspeise. Als Kind besuchte er jedes Jahr seinen Opa auf Sizilien, um ihn bei der Mattanza zuzuschauen. Trotz des blutigen Spektakels liebt Luigi auch heute noch seinen Thunfisch wie am ersten Tag.</p><p>Die Pizza Thunfisch Vollkorn wird mit einem knusprigen Boden aus Vollkornmehl gebacken und mit Tomatenpampe, K&auml;se, Zwiebeln und Thunfisch belegt.</p>','8.95','pizza-thunfisch-vollkorn',2);
INSERT INTO pizzas VALUES (11,'approved','Pizza Spinaci','<p>Die Pizza Spinaci ist Francescas Lieblingspizza. Sie a&szlig; als Kind schon ihren Br&uuml;dern immer den Spinat weg, um gro&szlig; und stark zu werden. Da ist es wenig &uuml;berraschend, dass sie diese Pizzakomposition gegen die Einw&auml;nde von Luigi dauerhaft auf der Karte platzieren konnte.</p><p>Die Pizza Spinaci wird mit einem knusprigen Boden aus Weizenmehl gebacken und mit Tomatenpampe, K&auml;se, Fetak&auml;se und frischem Spinat belegt.</p>','7.95','pizza-spinaci',1);
INSERT INTO pizzas VALUES (12,'approved','Pizza Spinaci Vollkorn','<p>Die Pizza Spinaci&nbsp;Vollkorn ist Francescas Lieblingspizza. Sie a&szlig; als Kind schon ihren Br&uuml;dern immer den Spinat weg, um gro&szlig; und stark zu werden. Da ist es wenig &uuml;berraschend, dass sie diese Pizzakomposition gegen die Einw&auml;nde von Luigi dauerhaft auf der Karte platzieren konnte.</p><p>Die Pizza Spinaci&nbsp;Vollkorn wird mit einem knusprigen Boden aus Vollkornmehl gebacken und mit Tomatenpampe, K&auml;se, Fetak&auml;se und frischem Spinat belegt.</p>','8.95','pizza-spinaci-vollkorn',2);
INSERT INTO pizzas VALUES (13,'approved','Pizza Mexicana','<p>Die Pizza Mexicana l&auml;sst die Herzen von Freunden der deftigen K&uuml;che h&ouml;her schlagen. Eigentlich hat Italien wenig mit Mexiko zu tun, dennoch verlangten immer mehr Kunden nach einer soliden Pizza mit Hackfleisch und deftigem Gem&uuml;se.</p><p>Die Pizza Mexicana wird mit einem knusprigen Boden aus Weizenmehl gebacken und mit Tomatenpampe, K&auml;se, Zwiebeln, Peperoni, Mais und extra viel Hackfleisch belegt.</p>','8.95','pizza-mexicana',1);
INSERT INTO pizzas VALUES (14,'approved','Pizza Mexicana Vollkorn','<p>Die Pizza Mexicana&nbsp;Vollkorn l&auml;sst die Herzen von Freunden der deftigen K&uuml;che h&ouml;her schlagen. Eigentlich hat Italien wenig mit Mexiko zu tun, dennoch verlangten immer mehr Kunden nach einer soliden Pizza mit Hackfleisch und deftigem Gem&uuml;se.</p><p>Die Pizza Mexicana Vollkorn wird mit einem knusprigen Boden aus Vollkornmehl gebacken und mit Tomatenpampe, K&auml;se, Zwiebeln, Peperoni, Mais und extra viel Hackfleisch belegt.</p>','9.95','pizza-mexicana-vollkorn',2);

DROP TABLE IF EXISTS pizzas_toppings;
CREATE TABLE pizzas_toppings (
  pizza_id smallint DEFAULT NULL,
  topping_id smallint DEFAULT NULL
);

DROP INDEX IF EXISTS pizzas_toppings_pizza_id;
CREATE INDEX pizzas_toppings_pizza_id ON pizzas_toppings
  USING btree (pizza_id);

DROP INDEX IF EXISTS pizzas_toppings_topping_id;
CREATE INDEX pizzas_toppings_topping_id ON pizzas_toppings
  USING btree (topping_id);

INSERT INTO pizzas_toppings VALUES (1,1),(1,2),(1,3),(2,1),(2,2),(2,3),(3,1),(3,2),(3,4),(4,1),(4,2),(4,4),(5,1),(5,2),(5,4),(5,7),(6,1),(6,2),(6,4),(6,7),(7,1),(7,2),(7,3),(7,4),(7,6),(8,1),(8,2),(8,3),(8,4),(8,6),(9,1),(9,2),(9,8),(9,9),(10,1),(10,2),(10,8),(10,9),(11,1),(11,2),(11,10),(11,12),(12,1),(12,2),(12,10),(12,12),(13,1),(13,2),(13,8),(13,11),(13,13),(13,14),(14,1),(14,2),(14,8),(14,11),(14,13),(14,14);


DROP TABLE IF EXISTS toppings;
CREATE TABLE toppings (
  id smallint NOT NULL,
  name varchar(32) DEFAULT NULL,
  costs decimal(4,2) DEFAULT NULL,

  CONSTRAINT toppings_id PRIMARY KEY(id)
);

INSERT INTO toppings VALUES (1,'Tomatenpampe','0.5');
INSERT INTO toppings VALUES (2,'K�se','0.5');
INSERT INTO toppings VALUES (3,'Salami','1.0');
INSERT INTO toppings VALUES (4,'Schinken','1.0');
INSERT INTO toppings VALUES (5,'Ananas','1.5');
INSERT INTO toppings VALUES (6,'Champignons','1.0');
INSERT INTO toppings VALUES (7,'Melone','1.5');
INSERT INTO toppings VALUES (8,'Zwiebeln','0.5');
INSERT INTO toppings VALUES (9,'Thunfisch','2.0');
INSERT INTO toppings VALUES (10,'Spinat','1.5');
INSERT INTO toppings VALUES (11,'Peperoni','1.0');
INSERT INTO toppings VALUES (12,'Feta','1.5');
INSERT INTO toppings VALUES (13,'Hackfleisch','2.0');
INSERT INTO toppings VALUES (14,'Mais','1.0');
