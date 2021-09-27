CREATE TABLE doughnut_list
(doughnut_name VARCHAR(10) NOT NULL,
doughnut_type VARCHAR(8) NOT NULL,
doughnut_cost DEC(3,2) NOT NULL DEFAULT 1.0
);

INSERT INTO doughnut_list
(doughnut_name,doughnut_type)
VALUES
('Cinnamondo','ring');