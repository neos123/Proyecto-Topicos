select * from segumientoprogramatico2.Materia;
select * from segumientoprogramatico2.Temas;
select * from segumientoprogramatico2.fecha_pract;
select * from segumientoprogramatico2.visitas;
select * from segumientoprogramatico2.programa;

update segumientoprogramatico2.programa set Unidad = 1,
TP = "sfasf",
TR = "564",
EP = "84",
ER = "2423",
FS = "agasfa"


select count(*) from segumientoprogramatico2.programa where grupo = "asfasf" and Semana = 2;



insert into segumientoprogramatico2.Materia values ("Programacion Orientada a Objetos","Cirino Silva Tovar","ISCX","ISC-0234","8:45","10:25","","","8:45","10:25","","","8:45","10:25",30,5,0,0,0);
insert into segumientoprogramatico2.Temas values ("ISC-0234", 1, "Programacion por Métodos","4","6","9","60%","4","6","9","60%");
insert into segumientoprogramatico2.Temas values ("ISC-0234", 2, "Polimorfismo","4","6","9","60%","4","6","9","60%");
insert into segumientoprogramatico2.Temas values ("ISC-0234", 3, "Herencia","4","6","9","60%","4","6","9","60%");
insert into segumientoprogramatico2.Temas values ("ISC-0234", 4, "Programacion por Métodos","4","6","9","60%","4","6","9","60%");
insert into segumientoprogramatico2.Temas values ("ISC-0234", 5, "Polimorfismo","4","6","9","60%","4","6","9","60%");
insert into segumientoprogramatico2.Temas values ("ISC-0234", 6, "Herencia","4","6","9","60%","4","6","9","60%");
insert into segumientoprogramatico2.Temas values ("ISC-0234", 7, "Programacion por Métodos","4","6","9","60%","4","6","9","60%");
insert into segumientoprogramatico2.Temas values ("ISC-0234", 8, "Polimorfismo","4","6","9","60%","4","6","9","60%");
insert into segumientoprogramatico2.Temas values ("ISC-0234", 9, "Herencia","4","6","9","60%","4","6","9","60%");
insert into segumientoprogramatico2.Temas values ("ISC-0234", 10, "Herencia","4","6","9","60%","4","6","9","60%");

insert into segumientoprogramatico2.fecha_pract values ("ISC-0234", 1, "Practica 1", "1°", current_date(), current_date());
insert into segumientoprogramatico2.fecha_pract values ("ISC-0234", 2, "Practica 2", "3°", current_date(), current_date());
insert into segumientoprogramatico2.fecha_pract values ("ISC-0234", 3, "Practica 3", "4°", current_date(), current_date());
insert into segumientoprogramatico2.fecha_pract values ("ISC-0234", 4, "Practica 4", "5°", current_date(), current_date());

insert into segumientoprogramatico2.visitas values ("ISC-0234", "Fabrica Patito", "Unidad 4", current_date(), current_date());

insert into segumientoprogramatico2.programa values ("ISC-0234", 1, 1, "60","54","78","54", current_date());
insert into segumientoprogramatico2.programa values ("ISC-0234", 2, 1, "60","54","78","54", current_date());
insert into segumientoprogramatico2.programa values ("ISC-0234", 3, 3, "60","54","78","54", current_date());
insert into segumientoprogramatico2.programa values ("ISC-0234", 4, 3, "60","54","78","54", current_date());
insert into segumientoprogramatico2.programa values ("ISC-0234", 5, 3, "60","54","78","54", current_date());
insert into segumientoprogramatico2.programa values ("ISC-0234", 6, 3, "60","54","78","54", current_date());
insert into segumientoprogramatico2.programa values ("ISC-0234", 7, 3, "60","54","78","54", current_date());
insert into segumientoprogramatico2.programa values ("ISC-0234", 8, 3, "60","54","78","54", current_date());
insert into segumientoprogramatico2.programa values ("ISC-0234", 9, 3, "60","54","78","54", current_date());
insert into segumientoprogramatico2.programa values ("ISC-0234", 10, 3, "60","54","78","54", current_date());
insert into segumientoprogramatico2.programa values ("ISC-0234", 11, 3, "60","54","78","54", current_date());
insert into segumientoprogramatico2.programa values ("ISC-0234", 12, 3, "60","54","78","54", current_date());
insert into segumientoprogramatico2.programa values ("ISC-0234", 13, 3, "60","54","78","54", current_date());
insert into segumientoprogramatico2.programa values ("ISC-0234", 14, 3, "60","54","78","54", current_date());
insert into segumientoprogramatico2.programa values ("ISC-0234", 15, 3, "60","54","78","54", current_date());
insert into segumientoprogramatico2.programa values ("ISC-0234", 16, 3, "60","54","78","54", current_date());
