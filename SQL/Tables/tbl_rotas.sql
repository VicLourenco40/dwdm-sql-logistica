CREATE TABLE rotas (
	id_rota INT IDENTITY(1, 1) PRIMARY KEY,
	id_proposito INT FOREIGN KEY REFERENCES propositos(id_proposito) NOT NULL,
	id_planeador INT FOREIGN KEY REFERENCES trabalhadores(id_trabalhador) NOT NULL,
	id_condutor INT FOREIGN KEY REFERENCES trabalhadores(id_trabalhador) NOT NULL,
	id_camiao INT FOREIGN KEY REFERENCES camioes(id_camiao) NOT NULL
);
