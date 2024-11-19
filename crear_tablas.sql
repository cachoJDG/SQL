
CREATE TABLE futbolista (
    nombre VARCHAR(100) PRIMARY KEY,
    posicion VARCHAR(50) NOT NULL,
    edad INT CHECK (edad > 0),
    altura DECIMAL(3, 2) CHECK (altura > 0),
    pie VARCHAR(15) CHECK (pie IN ('derecho', 'izquierdo', 'ambidiestro')),
    fichado DATE,
    equipo_anterior VARCHAR(100),
    valor_mercado DECIMAL(15, 2) CHECK (valor_mercado >= 0),
    equipo VARCHAR(100) NOT NULL
);



CREATE TABLE dorsal (
    jugador VARCHAR(100) PRIMARY KEY,
    dorsal INT NOT NULL CHECK (dorsal > 0 AND dorsal <= 99),
    equipo VARCHAR(100) NOT NULL,
    CONSTRAINT fk_jugador FOREIGN KEY (jugador) REFERENCES futbolista(nombre),
    CONSTRAINT unique_equipo_dorsal UNIQUE (equipo, dorsal)
);

