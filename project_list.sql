CREATE TABLE projekts
(
number INT,
descriptionofproj VARCHAR(30),
contractoronjob VARCHAR(20)
);

INSERT INTO projekts
VALUES
(1, 'outside house painting', 'Murphy'),
(2, 'kitchen remodel', 'Valdez'),
(3, 'wood floor installation', 'Keller'),
(4, 'roofing', 'Jackson');


ALTER TABLE projekts
RENAME TO project_list;

ALTER TABLE project_list
CHANGE COLUMN number proj_id INT NOT NULL  AUTO_INCREMENT,
ADD PRIMARY KEY (proj_id);

ALTER TABLE project_list
CHANGE COLUMN descriptionofproj proj_desc VARCHAR(100),
CHANGE COLUMN contractoronjob con_name VARCHAR(30);


ALTER TABLE project_list
MODIFY COLUMN proj_desc VARCHAR(120);

ALTER TABLE project_list
ADD COLUMN con_phone VARCHAR(10),
ADD COLUMN start_date DATE,
ADD COLUMN est_cost DECIMAL(7,2);


ALTER TABLE project_list
DROP COLUMN start_date;