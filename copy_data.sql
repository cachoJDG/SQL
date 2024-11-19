SET datestyle = 'DMY';

COPY futbolista (nombre, posicion, edad, altura, pie, fichado, equipo_anterior, valor_mercado, equipo)
FROM '/Users/test/path/al/archivo/jugadores-2022.csv' DELIMITER ';' CSV HEADER;

truncate table dorsal;
select * from dorsal;

truncate table futbolista cascade;
select * from futbolista;

-- me va a pedir permiso de super user q no tengo, la consigna dice que luego de hacer las tablas si hago jugadores del 2030 no me tiene que mostrar ni los nombres de las columnas. Posible solucion cursores juanba dijo q estan bien
