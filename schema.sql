

CREATE TABLE IF NOT EXISTS disciplines (
	id SERIAL PRIMARY KEY,
	code VARCHAR(255) UNIQUE NOT NULL,
	name VARCHAR(255) NOT NULL,
	class_credit integer NOT NULL,
	work_credit integer NOT NULL
);

INSERT INTO disciplines (code, name, class_credit, work_credit) VALUES
('MAC0218', 'Técnicas de Programação 2', 4, 2),
('MAC0499', 'Trabalho de Formatura Supervisionado', 0 , 16);
