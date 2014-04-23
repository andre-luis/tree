#!/bin/env ruby
# encoding: utf-8


def createRegister(id, name, surname, sex, id_father, id_mother, birth = 1900, picture = "", isMain = false)
	Node.create(id: id, name: name, surname: surname, sex: sex, id_father: id_father, id_mother: id_mother, birth: birth, picture: picture, isMain: isMain)
end

def clearDataBase
	if Node.all.count > 0
		puts "Limpando Banco de Dados..."
		Node.all.each do |n|
			n.destroy
		end
	end
	puts "Banco limpo..."
end

def populateDataBase

	# solucao: trocar Node.new por uma funçao e fazer essa função construir o Node.new e salvar
	puts "Iniciando população..."
	createRegister(0, "Andre", "Iasi Moura", Node::MASC, 6, 135, 1974, "imgs/andre.jpg", true) 
	createRegister(1, "Ricardo Luiz", "Iasi Moura", Node::MASC 	, 6, 135, 1976, "", true) 
	createRegister(2, "Danilo Luiz", "Iasi Moura", Node::MASC, 6, 135, 1980, "", true) 
	createRegister(3, "Fabiana Maria", "Iasi Moura", Node::FEM, 6, 135, 1986, "", true) 
	 	

	createRegister(5, "José Walter", "Machado Moura", Node::MASC, 160, 202, 1946)
	createRegister(6, "Arlindo Virgilio", "Machado Moura", Node::MASC, 160, 202, 1944)

	createRegister(13, "Julia", "Lange Moura", Node::FEM, 1, 16, 2011)
	createRegister(14, "Tiago", "Lange Moura", Node::MASC, 1, 16, 2009)

	createRegister(16, "Renata", "Lange Moura", Node::FEM, -1, -1, 1978)

	createRegister(18, "Caio", "Kudo Moura", Node::FEM, 2, 20, 2010)
	createRegister(19, "Luana", "Kudo Moura", Node::FEM, 2, 20, 2012)

	createRegister(20, "Agnes", "Kudo Moura", Node::FEM, -1, -1, 1980)




	createRegister(11, "Francisco", "Iasi", Node::MASC, 61, 62, 1879) 
	createRegister(12, "Josefina", "Della Mana", Node::FEM, 71, 72) 

	createRegister(21, "Giusepe", "Marmo", Node::MASC, -1, -1) 
	createRegister(22, "Raffaella", "Palladino", Node::FEM, -1, -1)
	createRegister(23, "Maria", "Cazzaneo", Node::FEM, -1, -1)

	createRegister(31, "Alessandro", "Rivera", Node::MASC, -1, -1) 
	createRegister(32, "Filomena", "De Meo", Node::FEM, -1, -1)

	createRegister(41, "Virgilio", "Machado", Node::MASC, -1, -1) 
	createRegister(42, "Primeira esposa", "Machado", Node::FEM, -1, -1)
	createRegister(43, "Segunda esposa", "Machado", Node::FEM, -1, -1)

	createRegister(51, "Bisvô", "Moura", Node::MASC, -1, -1) 
	createRegister(52, "Bisavó", "Noronha Moura", Node::FEM, -1, -1)

	createRegister(61, "Generoso", "Iasi", Node::MASC, -1, -1) 
	createRegister(62, "Angela", "Fusco", Node::FEM, -1, -1)

	createRegister(71, "Francisco", "Della Mana", Node::MASC, -1, -1) 
	createRegister(72, "Rosa", "Della Mana", Node::FEM, -1, -1)

	createRegister(81, "Italo", "Iasi", Node::MASC, 11, 12) 
	createRegister(82, "Umbelino", "Iasi", Node::MASC, 11, 12) 
	createRegister(83, "Albertino", "Iasi", Node::MASC, 11, 12) 
	createRegister(84, "Silvio", "Iasi", Node::MASC, 11, 12)
	createRegister(85, "Rosa (Sisina)", "Iasi", Node::FEM, 11, 12)
	createRegister(86, "Francisco", "Iasi", Node::MASC, 11, 12)
	createRegister(87, "Mariangela (Angelina)", "Iasi", Node::FEM, 11, 12)
	createRegister(88, "Aparecida (Cida)", "Iasi", Node::FEM, 11, 12)
	createRegister(890, "Gema", "Iasi", Node::FEM, 11, 12)

	createRegister(91, "Alberico", "Marmo", Node::MASC, 21, 23) 
	createRegister(92, "Americo", "Marmo", Node::MASC, 21, 23) 
	createRegister(93, "Maria", "Marmo", Node::FEM, 21, 23)
	createRegister(94, "Italia", "Marmo", Node::FEM, 21, 23)
	createRegister(95, "Josefina", "Marmo", Node::FEM, 21, 23)
	createRegister(96, "Lourenco", "Marmo", Node::MASC, 21, 23)
	createRegister(97, "Lucia", "Marmo", Node::FEM, 21, 23)
	createRegister(98, "Thereza", "Marmo", Node::FEM, 21, 23)
	createRegister(99, "Verginio", "Marmo", Node::MASC, 21, 23)
	createRegister(100, "Rosa Marta", "Marmo", Node::FEM, 21, 23)
	createRegister(1010, "Domingos", "Marmo", Node::MASC, 21, 23)

	createRegister(89, "Francesco", "Marmo", Node::MASC, 21, 22)
	createRegister(90, "Angelo", "Marmo", Node::MASC, 21, 22)



	createRegister(101, "Vitória", "Rivera", Node::FEM, 31, 32)
	createRegister(102, "João (I)", "Rivera", Node::MASC, 31, 32)
	createRegister(103, "Felicia", "Rivera", Node::FEM, 31, 32)
	createRegister(104, "João (II)", "Rivera", Node::MASC, 31, 32)
	createRegister(105, "Rosalina", "Rivera", Node::FEM, 31, 32)
	createRegister(106, "Alexandre", "Rivera", Node::MASC, 31, 32)
	createRegister(107, "Elisa", "Rivera", Node::FEM, 31, 32)

	createRegister(111, "Joaquim", "Torres", Node::MASC, -1, -1)
	createRegister(112, "Dulce", "Torres", Node::MASC, 111, 101)


	createRegister(121, "Rafaela", "Marmo Iasi", Node::FEM, 90, 101)
	createRegister(122, "Mario", "Marmo", Node::MASC, 90, 101)
	createRegister(123, "Angelina", "Marmo Martins", Node::FEM, 90, 101)


	createRegister(131, "Nilson", "Iasi", Node::MASC, 86, 121) 
	createRegister(132, "César", "Iasi", Node::MASC, 86, 121) 
	createRegister(133, "Marco Antonio", "Iasi", Node::MASC, 86, 121) 
	createRegister(134, "Marcio", "Iasi", Node::MASC, 86, 121)
	createRegister(135, "Lilia", "Iasi", Node::FEM, 86, 121, 1948)
	createRegister(136, "Francisco", "Iasi", Node::MASC, 86, 121)
	createRegister(137, "Sonia", "Iasi", Node::FEM, 86, 121)
	createRegister(138, "Fabio", "Iasi", Node::MASC, 86, 121)


	createRegister(140, "David", "Martins", Node::MASC, -1, -1)
	createRegister(141, "Ivan", "Martins", Node::MASC, 140, 123)
	createRegister(142, "Francisco (Francis)", "Martins", Node::MASC, 140, 123)
	createRegister(143, "Leda", "Martins", Node::FEM, 140, 123)
	createRegister(144, "Janise", "Martins", Node::FEM, 140, 123)
	createRegister(145, "Eliane", "Martins", Node::FEM, 140, 123)
	createRegister(146, "Thaís", "Martins", Node::FEM, 140, 123)
	createRegister(147, "Ciro", "Martins", Node::MASC, 140, 123)


	createRegister(150, "Maria", "Cozzolino", Node::FEM, -1, -1)
	createRegister(151, "Marco Aurelio", "Marmo", Node::MASC, 122, 150)
	createRegister(152, "Marco Polo", "Marmo", Node::MASC, 122, 150)
	createRegister(153, "Regina", "Marmo", Node::FEM, 122, 150)
	createRegister(154, "Mario Angelo", "Marmo", Node::MASC, 122, 150)

	createRegister(160, "Walter", "Noronha Moura", Node::MASC, 51, 52)
	createRegister(161, "Cordélia", "Noronha Moura", Node::FEM, 51, 52)
	createRegister(162, "Orlando", "Noronha Moura", Node::MASC, 51, 52)
	createRegister(163, "Manoel", "Noronha Moura", Node::MASC, 51, 52)
	createRegister(164, "José", "Noronha Moura", Node::MASC, 51, 52)



	createRegister(170, "Orminda", "Moura", Node::FEM, -1, -1)
	createRegister(171, "Welington", "Moura", Node::MASC, 162, 170)
	createRegister(172, "Wilsa", "Moura", Node::FEM, 162, 170)

	createRegister(180, "Lucia", "Moura", Node::FEM, -1, -1)
	createRegister(181, "Manoel", "Moura", Node::MASC, 163, 180)
	createRegister(182, "Jussara", "Moura", Node::FEM, 163, 180)

	createRegister(190, "Moema", "Moura", Node::FEM, -1, -1)
	createRegister(191, "Arlindo", "Moura", Node::MASC, 164, 190)
	createRegister(192, "Ana Bela", "Moura", Node::FEM, 164, 190)

	createRegister(201, "Xisto", "Machado", Node::MASC, 41, 42)
	createRegister(202, "Nair", "Machado", Node::FEM, 41, 42)
	createRegister(203, "Gilinho", "Machado", Node::MASC, 41, 42)

	createRegister(204, "Virgilo (Machadinho)", "Machado", Node::MASC, 41, 43)
	createRegister(205, "Irineu", "Machado", Node::MASC, 41, 43)
	createRegister(206, "Moacyr", "Machado", Node::MASC, 41, 43)
	createRegister(207, "Prudente", "Machado", Node::MASC, 41, 43)
	createRegister(208, "Carlos", "Machado", Node::MASC, 41, 43)

	createRegister(210, "Angela", "Machado", Node::FEM, 205, -1)
	createRegister(211, "Walton", "Machado", Node::MASC, 205, -1)

	createRegister(220, "Xisto (filho)", "Machado", Node::MASC, 201, -1)
	createRegister(221, "Maria Anisia", "Machado", Node::FEM, 201, -1)
	createRegister(222, "Ronaldo", "Machado", Node::MASC, 201, -1)
	createRegister(223, "Amelinha", "Machado", Node::FEM, 201, -1)
	createRegister(224, "Penha", "Machado", Node::FEM, 201, -1)

	createRegister(230, "Gelson", "Guarconi", Node::MASC, -1, -1)
	createRegister(231, "Gelsinho", "Machado Guarconi", Node::MASC, 230, 221)
	createRegister(232, "Geane", "Machado Guarconi", Node::FEM, 230, 221)
	createRegister(233, "Geisa", "Machado Guarconi", Node::FEM, 230, 221)
	createRegister(234, "Gessiana", "Machado Guarconi", Node::FEM, 230, 221)


	puts "Banco de Dados populado"


end

clearDataBase
populateDataBase
