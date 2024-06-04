CREATE TABLE camioes (
	id_camiao INT IDENTITY(1, 1) PRIMARY KEY,
	temperatura DECIMAL(3, 1) NOT NULL,
	max_paletes INT NOT NULL,
	id_armazem INT FOREIGN KEY REFERENCES armazens(id_armazem) NOT NULL
);
