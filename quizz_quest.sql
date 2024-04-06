CREATE TABLE IF NOT EXISTS perguntas ( 
    id INT AUTO_INCREMENT PRIMARY KEY, 
    pergunta TEXT, 
    resposta_correta VARCHAR(150),
    alternativa_incorreta1 VARCHAR(150),
    alternativa_incorreta2 VARCHAR(150),
    alternativa_incorreta3 VARCHAR(150),
    tipo VARCHAR(50) DEFAULT NULL 
);


UPDATE perguntas SET tipo = (
    CASE
		WHEN pergunta LIKE '%oceano%' THEN 'Geografia'
        WHEN pergunta LIKE '%país mais populoso%' THEN 'Geografia'
        WHEN pergunta LIKE '%capital do Brasil%' THEN 'Geografia'
        WHEN pergunta LIKE '%sistema de governo%' THEN 'História'
        WHEN pergunta LIKE '%monarquia%' THEN 'História'
        WHEN pergunta LIKE '%livro%' THEN 'Cultura Geral'
        WHEN pergunta LIKE '%instrumento musical%' THEN 'Cultura Geral'
        WHEN pergunta LIKE '%puberdade%' THEN 'Biologia'
        WHEN pergunta LIKE '%esporte dos reis%' THEN 'Esportes'
        WHEN pergunta LIKE '%esporte mais popular nos Estados Unidos%' THEN 'Esportes'
        WHEN pergunta LIKE '%nasceu o esporte conhecido como judô%' THEN 'Esportes'
        WHEN pergunta LIKE '%unidade básica da vida%' THEN 'Biologia'
        WHEN pergunta LIKE '%pai da computação%' THEN 'Tecnologia'
        WHEN pergunta LIKE '%fórmula química da água%' THEN 'Ciência'
        WHEN pergunta LIKE '%pintou a Mona Lisa%' THEN 'Arte'
        WHEN pergunta LIKE '%protagonista da série de livros "Harry Potter"%' THEN 'Literatura'
        WHEN pergunta LIKE '%cachorro mais famoso da internet%' THEN 'Cultura Geral'
        WHEN pergunta LIKE '%autor da famosa série de livros "Crepúsculo"%' THEN 'Literatura'
        WHEN pergunta LIKE '%maior deserto do mundo%' THEN 'Geografia'
        WHEN pergunta LIKE '%rio mais longo do mundo%' THEN 'Geografia'
        WHEN pergunta LIKE '%nome da fronteira natural entre Estados Unidos e México%' THEN 'Geografia'
        WHEN pergunta LIKE '%documento de identificação mais comum no mundo%' THEN 'Cultura Geral'
        WHEN pergunta LIKE '%primeiro presidente dos Estados Unidos%' THEN 'História'
        WHEN pergunta LIKE '%nome dado à primeira guerra mundial%' THEN 'História'
        WHEN pergunta LIKE '%esporte que utiliza uma bola pequena chamada de shuttlecock%' THEN 'Esportes'
        WHEN pergunta LIKE '%maior jogador de basquete de todos os tempos%' THEN 'Esportes'
        WHEN pergunta LIKE '%esporte nacional do Japão%' THEN 'Esportes'
        WHEN pergunta LIKE '%nome dado à primeira missão tripulada a pisar na Lua%' THEN 'Ciência'
        WHEN pergunta LIKE '%planeta mais próximo do Sol%' THEN 'Astronomia'
        WHEN pergunta LIKE '%pai da eletricidade%' THEN 'Ciência'
        WHEN pergunta LIKE '%quadro famoso de Leonardo da Vinci que retrata uma mulher com um sorriso enigmático%' THEN 'Arte'
        WHEN pergunta LIKE '%peça de teatro "Romeu e Julieta"%' THEN 'Literatura'
        WHEN pergunta LIKE '%série de TV que retrata a vida de um professor que começa a fabricar metanfetamina%' THEN 'Cultura Geral'
        WHEN pergunta LIKE '%famosa rua de comércio e entretenimento em Nova York, conhecida como "a cidade que nunca dorme"%' THEN 'Cultura Geral'
        WHEN pergunta LIKE '%nome do animal símbolo do WWF (World Wide Fund for Nature)%' THEN 'Biologia'
        WHEN pergunta LIKE '%capital do Japão%' THEN 'Geografia'
        WHEN pergunta LIKE '%país com a maior área territorial do mundo%' THEN 'Geografia'
        WHEN pergunta LIKE '%cidade mais populosa do mundo%' THEN 'Geografia'
        WHEN pergunta LIKE '%religião mais praticada no mundo%' THEN 'Cultura Geral'
        WHEN pergunta LIKE '%cientista alemão que desenvolveu a teoria da relatividade%' THEN 'Ciência'
        WHEN pergunta LIKE '%ano ocorreu a Revolução Francesa%' THEN 'História'
        WHEN pergunta LIKE '%esporte que utiliza uma bola e tacos e é popular em países como Estados Unidos e Japão%' THEN 'Esportes'
        WHEN pergunta LIKE '%maior jogador de basquete de todos os tempos%' THEN 'Esportes'
        WHEN pergunta LIKE '%esporte nacional do Japão%' THEN 'Esportes'
        WHEN pergunta LIKE '%primeira missão tripulada a pisar na Lua%' THEN 'Ciência'
        WHEN pergunta LIKE '%planeta mais próximo do Sol%' THEN 'Astronomia'
        WHEN pergunta LIKE '%pai da eletricidade%' THEN 'Ciência'
        WHEN pergunta LIKE '%quadro famoso de Leonardo da Vinci que retrata uma mulher com um sorriso enigmático%' THEN 'Arte'
        WHEN pergunta LIKE '%peça de teatro "Romeu e Julieta"%' THEN 'Literatura'
        WHEN pergunta LIKE '%série de TV que retrata a vida de um professor que começa a fabricar metanfetamina%' THEN 'Cultura Geral'
        WHEN pergunta LIKE '%famosa rua de comércio e entretenimento em Nova York, conhecida como "a cidade que nunca dorme"%' THEN 'Cultura Geral'
        WHEN pergunta LIKE '%animal símbolo do WWF (World Wide Fund for Nature)%' THEN 'Biologia'
        WHEN pergunta LIKE '%capital do Japão%' THEN 'Geografia'
        WHEN pergunta LIKE '%país com a maior área territorial do mundo%' THEN 'Geografia'
        WHEN pergunta LIKE '%cidade mais populosa do mundo%' THEN 'Geografia'
        WHEN pergunta LIKE '%religião mais praticada no mundo%' THEN 'Cultura Geral'
        WHEN pergunta LIKE '%cientista alemão que desenvolveu a teoria da relatividade%' THEN 'Ciência'
        WHEN pergunta LIKE '%ano ocorreu a Revolução Francesa%' THEN 'História'
        WHEN pergunta LIKE '%esporte que utiliza uma bola e tacos e é popular em países como Estados Unidos e Japão%' THEN 'Esportes'
        WHEN pergunta LIKE '%nome do troféu dado ao campeão da Copa do Mundo de Futebol%' THEN 'Esportes'
        WHEN pergunta LIKE '%unidade de medida de energia no sistema internacional%' THEN 'Ciência'
        WHEN pergunta LIKE '%nome do famoso quadro de Edvard Munch que retrata uma figura gritando%' THEN 'Arte'
        WHEN pergunta LIKE '%esporte que tem uma rede, uma bola e é praticado na areia%' THEN 'Esportes'
        WHEN pergunta LIKE '%troféu dado ao vencedor do Campeonato Mundial de Fórmula 1%' THEN 'Esportes'
        WHEN pergunta LIKE '%esporte que utiliza uma bola pequena chamada de "pelota" e é popular na Espanha%' THEN 'Esportes'
	    WHEN pergunta LIKE '%torneio anual de golfe que é um dos quatro torneios principais%' THEN 'Esportes'
	    WHEN pergunta LIKE '%nome da substância que dá a cor verde às plantas%' THEN 'Biologia'
	    WHEN pergunta LIKE '%instrumento usado para medir a pressão arterial%' THEN 'Ciência'
	    WHEN pergunta LIKE '%documento que garante a proteção de um invento ou processo inovador%' THEN 'Cultura Geral'
	    WHEN pergunta LIKE '%capital da Espanha%' THEN 'Geografia'
	    WHEN pergunta LIKE '%líder político responsável pela unificação da Alemanha em 1871%' THEN 'História'
	    WHEN pergunta LIKE '%documento que protege os direitos fundamentais dos cidadãos em um país%' THEN 'Cultura Geral'
	    WHEN pergunta LIKE '%esporte que tem uma bola pequena chamada de "jack" e é jogado em uma quadra de grama%' THEN 'Esportes'
	    WHEN pergunta LIKE '%recorde de mais títulos de Wimbledon no tênis masculino%' THEN 'Esportes'
	    WHEN pergunta LIKE '%esporte que tem uma rede, uma bola e é praticado na areia%' THEN 'Esportes'
	    WHEN pergunta LIKE '%troféu dado ao campeão da Copa do Mundo de Futebol%' THEN 'Esportes'
	    WHEN pergunta LIKE '%unidade de medida de energia no sistema internacional%' THEN 'Ciência'
	    WHEN pergunta LIKE '%nome do famoso quadro de Edvard Munch que retrata uma figura gritando%' THEN 'Arte'
	    WHEN pergunta LIKE '%esporte que tem uma rede, uma bola e é praticado na areia%' THEN 'Esportes'
	    WHEN pergunta LIKE '%torneio anual de golfe que é um dos quatro torneios principais%' THEN 'Esportes'
	    WHEN pergunta LIKE '%substância que dá a cor verde às plantas%' THEN 'Biologia'
	    WHEN pergunta LIKE '%instrumento usado para medir a pressão arterial%' THEN 'Ciência'
	    WHEN pergunta LIKE '%documento que garante a proteção de um invento ou processo inovador%' THEN 'Cultura Geral'
	    WHEN pergunta LIKE '%capital da Espanha%' THEN 'Geografia'
	    WHEN pergunta LIKE '%líder político responsável pela unificação da Alemanha em 1871%' THEN 'História'
	    WHEN pergunta LIKE '%documento que protege os direitos fundamentais dos cidadãos em um país%' THEN 'Cultura Geral'
	    WHEN pergunta LIKE '%período de tempo durante o qual uma pessoa governa um país%' THEN 'História'
	    WHEN pergunta LIKE '%esporte que tem uma bola e é praticado em uma quadra dividida por uma rede%' THEN 'Esportes'
	    WHEN pergunta LIKE '%evento esportivo internacional que ocorre a cada quatro anos e reúne atletas de todo o mundo%' THEN 'Esportes'
	    WHEN pergunta LIKE '%pai da teoria da evolução das espécies por seleção natural%' THEN 'Ciência'
	    WHEN pergunta LIKE '%unidade de medida de temperatura no sistema internacional%' THEN 'Ciência'
	    WHEN pergunta LIKE '%nome do processo pelo qual os organismos vivos produzem energia%' THEN 'Biologia'
	    WHEN pergunta LIKE '%unidade básica de armazenamento em um computador%' THEN 'Tecnologia'
	    WHEN pergunta LIKE '%pai da teoria da relatividade%' THEN 'Ciência'
	    WHEN pergunta LIKE '%capacidade de um material conduzir eletricidade%' THEN 'Ciência'
	    WHEN pergunta LIKE '%componente químico principal do vidro%' THEN 'Ciência'
	    WHEN pergunta LIKE '%processo que converte açúcar em álcool e dióxido de carbono%' THEN 'Ciência'
	    WHEN pergunta LIKE '%instrumento utilizado para visualizar objetos distantes no céu%' THEN 'Ciência'
	    WHEN pergunta LIKE '%autor da obra "A Divina Comédia"%' THEN 'Literatura'
	    WHEN pergunta LIKE '%pintor impressionista que pintou "Impressão, nascer do sol"%' THEN 'Arte'
	    WHEN pergunta LIKE '%atriz que interpretou Katniss Everdeen nos filmes da série "Jogos Vorazes"%' THEN 'Cinema'
	    WHEN pergunta LIKE '%diretor do filme "Titanic"%' THEN 'Cinema'
	    WHEN pergunta LIKE '%famoso prêmio de cinema concedido pela Academia de Artes e Ciências Cinematográficas%' THEN 'Cinema'
	    WHEN pergunta LIKE '%famoso evento de tecnologia realizado anualmente em Las Vegas%' THEN 'Tecnologia'
	    WHEN pergunta LIKE '%famosa avenida de Londres conhecida por seus teatros e cinemas%' THEN 'Cultura Geral'
	END
) WHERE id > 0;

INSERT INTO perguntas (pergunta, resposta_correta, alternativa_incorreta1, alternativa_incorreta2, alternativa_incorreta3) VALUES
('Qual o maior oceano do mundo?','Oceano Pacífico', 'Oceano Atlântico', 'Oceano Índico', 'Oceano Ártico'),
('Qual é o país mais populoso do mundo?', 'China', 'Índia', 'Estados Unidos', 'Brasil'),
('Qual é a capital do Brasil?', 'Brasília', 'Rio de Janeiro', 'São Paulo', 'Salvador'),
('Qual é o sistema de governo em que o poder é exercido por um rei ou rainha?', 'Monarquia', 'Democracia', 'Oligarquia', 'Anarquia'),
('Quem escreveu o livro "A Origem das Espécies"?', 'Charles Darwin', 'Albert Einstein', 'Isaac Newton', 'Galileu Galilei'),
('Qual é o nome dado ao período de transição da adolescência para a idade adulta?', 'Puberdade','Menopausa','Preadolescência','Juventude'),
('Qual esporte é conhecido como "o esporte dos reis"?','Polo','Futebol','Golfe','Tênis'),
('Qual é o esporte mais popular nos Estados Unidos?','Futebol americano','Beisebol','Basquete','Soccer'),
('Em que país nasceu o esporte conhecido como judô?', 'Japão', 'China', 'Coreia do Sul', 'Tailândia'),
('Qual é a unidade básica da vida?', 'Célula', 'Átomo', 'Molécula', 'Tecido'),
('Quem é considerado o pai da computação?', 'Alan Turing', 'Steve Jobs', 'Bill Gates', 'Tim Berners-Lee'),
('Qual é a fórmula química da água?', 'H2O', 'H2O2', 'CO2', 'NaCl'),
('Quem pintou a Mona Lisa?', 'Leonardo da Vinci', 'Michelangelo', 'Pablo Picasso', 'Vincent van Gogh'),
('Qual é o nome do protagonista da série de livros "Harry Potter"?', 'Harry Potter', 'Ron Weasley', 'Hermione Granger', 'Albus Dumbledore'),
('Qual é o nome do instrumento musical que possui teclas brancas e pretas e é tocado com as mãos?', 'Piano', 'Guitarra', 'Violino', 'Bateria'),
('Qual é o nome do cachorro mais famoso da internet?', 'Boo', 'Max', 'Buddy', 'Snoopy'),
('Quem é o autor da famosa série de livros "Crepúsculo"?', 'Stephenie Meyer', 'J.K. Rowling', 'Suzanne Collins', 'George R.R. Martin'),
('Qual é o maior deserto do mundo?', 'Deserto do Saara', 'Deserto da Arábia', 'Deserto de Gobi', 'Deserto da Antártida'),
('Qual é o rio mais longo do mundo?', 'Rio Nilo', 'Rio Amazonas', 'Rio Yangtzé', 'Rio Mississippi'),
('Qual é o nome da fronteira natural entre Estados Unidos e México?', 'Rio Grande', 'Muralha de Berlim', 'Muralha da China', 'Muro de Adriano'),
('Qual é o documento de identificação mais comum no mundo?', 'Passaporte', 'RG', 'Carteira de Motorista', 'CPF'),
('Quem foi o primeiro presidente dos Estados Unidos?', 'George Washington', 'Abraham Lincoln', 'Thomas Jefferson', 'John Adams'),
('Qual é o nome dado à primeira guerra mundial?', 'Primeira Guerra Mundial', 'Guerra Fria', 'Segunda Guerra Mundial', 'Guerra dos Cem Anos'),
('Qual é o esporte que utiliza uma bola pequena chamada de shuttlecock?', 'Badminton', 'Tênis', 'Squash', 'Polo'),
('Quem é considerado o maior jogador de basquete de todos os tempos?', 'Michael Jordan', 'LeBron James', 'Kobe Bryant', 'Magic Johnson'),
('Qual é o esporte nacional do Japão?', 'Sumô', 'Karatê', 'Jiu-Jitsu', 'Kendo'),
('Qual é o nome dado à primeira missão tripulada a pisar na Lua?', 'Apollo 11', 'Discovery', 'Challenger', 'Soyuz 1'),
('Qual é o planeta mais próximo do Sol?', 'Mercúrio', 'Vênus', 'Marte', 'Terra'),
('Quem é considerado o pai da eletricidade?', 'Nikola Tesla', 'Thomas Edison', 'Benjamin Franklin', 'James Clerk Maxwell'),
('Qual é o nome do quadro famoso de Leonardo da Vinci que retrata uma mulher com um sorriso enigmático?', 'Mona Lisa', 'A Noite Estrelada', 'Guernica', 'A Última Ceia'),
('Quem escreveu a peça de teatro "Romeu e Julieta"?', 'William Shakespeare', 'Oscar Wilde', 'George Bernard Shaw', 'Tennessee Williams'),
('Qual é o nome da série de TV que retrata a vida de um professor que começa a fabricar metanfetamina?', 'Breaking Bad', 'Narcos', 'The Sopranos', 'Dexter'),
('Qual é o nome da famosa rua de comércio e entretenimento em Nova York, conhecida como "a cidade que nunca dorme"?', 'Times Square', 'Rodeo Drive', 'Hollywood Boulevard', 'Fifth Avenue'),
('Qual é o nome do animal símbolo do WWF (World Wide Fund for Nature)?', 'Panda', 'Leão', 'Elefante', 'Tigre'),
('Qual é a capital do Japão?', 'Tóquio', 'Kyoto', 'Osaka', 'Nagasaki'),
('Qual é o país com a maior área territorial do mundo?', 'Rússia', 'Canadá', 'China', 'Estados Unidos'),
('Qual é a cidade mais populosa do mundo?', 'Tóquio, Japão', 'Xangai, China', 'Mumbai, Índia', 'São Paulo, Brasil'),
('Qual é a religião mais praticada no mundo?', 'Cristianismo', 'Islamismo', 'Hinduísmo', 'Budismo'),
('Qual é o nome do cientista alemão que desenvolveu a teoria da relatividade?', 'Albert Einstein', 'Isaac Newton', 'Galileu Galilei', 'Nikola Tesla'),
('Em que ano ocorreu a Revolução Francesa?', '1789', '1815', '1776', '1848'),
('Qual é o esporte que utiliza uma bola e tacos e é popular em países como Estados Unidos e Japão?', 'Beisebol', 'Críquete', 'Rugby', 'Hóquei'),
('Quantos jogadores compõem uma equipe de vôlei em uma partida oficial?', '6', '5', '7', '8'),
('Qual é o nome do troféu dado ao campeão da Copa do Mundo de Futebol?', 'Taça FIFA', 'Copa do Mundo', 'Troféu de Ouro', 'Taça Jules Rimet'),
('Qual é o nome dado ao estudo das estrelas e dos corpos celestes?', 'Astronomia', 'Geologia', 'Astrologia', 'Biologia'),
('Qual é o nome da primeira pessoa a pisar na Lua?', 'Neil Armstrong', 'Buzz Aldrin', 'Michael Collins', 'Yuri Gagarin'),
('Qual é a unidade de medida de energia no sistema internacional?', 'Joule', 'Watt', 'Newton', 'Hertz'),
('Qual é o nome do famoso quadro de Edvard Munch que retrata uma figura gritando?', 'O Grito', 'A Noite Estrelada', 'Mona Lisa', 'Guernica'),
('Quem escreveu a famosa peça de teatro "Hamlet"?', 'William Shakespeare', 'Tennessee Williams', 'Arthur Miller', 'Anton Chekhov'),
('Qual é o nome do famoso pintor espanhol que era conhecido por seus quadros surreais?', 'Salvador Dalí', 'Pablo Picasso', 'Vincent van Gogh', 'Claude Monet'),
('Qual é o nome do prêmio mais prestigioso do cinema?', 'Oscar', 'Emmy', 'Grammy', 'Tony'),
('Qual é o nome do famoso festival de música realizado anualmente em Indio, Califórnia?', 'Coachella', 'Glastonbury', 'Lollapalooza', 'Burning Man'),
('Qual é o nome do maior rio do Brasil em extensão?', 'Rio Amazonas', 'Rio Paraná', 'Rio São Francisco', 'Rio Tocantins'),
('Qual é o ponto mais alto da Terra?', 'Monte Everest', 'Monte Kilimanjaro', 'Montanha K2', 'Montanha Denali'),
('Qual é o maior país da América do Sul em área territorial?', 'Brasil', 'Argentina', 'Colômbia', 'Peru'),
('Qual é o país conhecido como "A Terra do Sol Nascente"?', 'Japão', 'Coreia do Sul', 'China', 'Tailândia'),
('Qual é o maior lago de água doce do mundo em volume?', 'Lago Baikal', 'Lago Titicaca', 'Lago Superior', 'Lago Vitória'),
('Qual é o país que tem o maior número de ilhas no mundo?', 'Indonésia', 'Suécia', 'Filipinas', 'Grécia'),
('Qual é o deserto mais frio do mundo?', 'Deserto da Antártida', 'Deserto do Saara', 'Deserto de Atacama', 'Deserto do Gobi'),
('Qual é o nome do tratado que pôs fim à Primeira Guerra Mundial?', 'Tratado de Versalhes', 'Tratado de Tordesilhas', 'Tratado de Paz de Westfália', 'Tratado de São Francisco'),
('Qual é o nome do instrumento utilizado para medir a pressão arterial?', 'Esfigmomanômetro', 'Termômetro', 'Estetoscópio', 'Otoscópio'),
('Qual é o nome do documento que garante a proteção de um invento ou processo inovador?', 'Patente', 'Copyright', 'Contrato', 'Certificado de registro'),
('Qual é a capital da Espanha?', 'Madri', 'Barcelona', 'Sevilha', 'Valência'),
('Quem foi o líder político responsável pela unificação da Alemanha em 1871?', 'Otto von Bismarck', 'Adolf Hitler', 'Kaiser Wilhelm II', 'Friedrich Ebert'),
('Qual é o nome do documento que protege os direitos fundamentais dos cidadãos em um país?', 'Constituição', 'Carta Magna', 'Declaração Universal dos Direitos Humanos', 'Estatuto do Cidadão'),
('Qual é o nome do esporte que tem uma bola pequena chamada de "jack" e é jogado em uma quadra de grama?', 'Bocha', 'Golfe', 'Críquete', 'Hóquei'),
('Quem detém o recorde de mais títulos de Wimbledon no tênis masculino?', 'Roger Federer', 'Rafael Nadal', 'Novak Djokovic', 'Pete Sampras'),
('Qual é o nome do esporte que tem uma rede, uma bola e é praticado na areia?', 'Vôlei de praia', 'Tênis de mesa', 'Vôlei de quadra', 'Badminton'),
('Qual é o nome do troféu dado ao vencedor do Campeonato Mundial de Fórmula 1?', 'Taça dos Campeões', 'Copa do Mundo', 'Troféu Gran Prix', 'Troféu de Campeão'),
('Qual é o esporte que utiliza uma bola pequena chamada de "pelota" e é popular na Espanha?', 'Pelota Basca', 'Bocha', 'Pólo aquático', 'Esgrima'),
('Qual é o nome do torneio anual de golfe que é um dos quatro torneios principais?', 'Masters de Augusta', 'Aberto Britânico', 'US Open', 'Campeonato PGA'),
('Qual é o nome da substância que dá a cor verde às plantas?', 'Clorofila', 'Hemoglobina', 'Melanina', 'Insulina'),
('Qual é o nome do instrumento usado para medir a temperatura corporal?', 'Termômetro', 'Esfigmomanômetro', 'Estetoscópio', 'Otoscópio'),
('Qual é o nome do processo pelo qual as plantas produzem sua própria comida?', 'Fotossíntese', 'Respiração', 'Digestão', 'Transpiração'),
('Qual é o nome dado à unidade básica de armazenamento em um computador?', 'Byte', 'Bit', 'Megabyte', 'Kilobyte'),
('Quem é considerado o pai da teoria da relatividade?', 'Albert Einstein', 'Isaac Newton', 'Galileu Galilei', 'Nikola Tesla'),
('Qual é o nome dado à capacidade de um material conduzir eletricidade?', 'Condutividade', 'Resistência', 'Capacitância', 'Impedância'),
('Qual é o componente químico principal do vidro?', 'Silício', 'Ferro', 'Cobre', 'Ouro'),
('Qual é o nome do processo que converte açúcar em álcool e dióxido de carbono?', 'Fermentação', 'Destilação', 'Combustão', 'Oxidação'),
('Qual é o nome do instrumento utilizado para visualizar objetos distantes no céu?', 'Telescópio', 'Microscópio', 'Periscópio', 'Luneta'),
('Qual é o nome do autor da obra "A Divina Comédia"?', 'Dante Alighieri', 'William Shakespeare', 'Johann Wolfgang von Goethe', 'Miguel de Cervantes'),
('Qual é o nome do pintor impressionista que pintou "Impressão, nascer do sol"?', 'Claude Monet', 'Vincent van Gogh', 'Pierre-Auguste Renoir', 'Edgar Degas'),
('Qual é o nome da atriz que interpretou Katniss Everdeen nos filmes da série "Jogos Vorazes"?', 'Jennifer Lawrence', 'Emma Watson', 'Scarlett Johansson', 'Kristen Stewart'),
('Qual é o nome do diretor do filme "O Poderoso Chefão"?', 'Francis Ford Coppola', 'Quentin Tarantino', 'Martin Scorsese', 'Steven Spielberg'),
('Qual é o nome da famosa pintura de Leonardo da Vinci que retrata a última ceia de Jesus Cristo com seus apóstolos?', 'A Última Ceia', 'Mona Lisa', 'A Noite Estrelada', 'Guernica'),
('Qual é o nome do cantor conhecido como "Rei do Rock"?', 'Elvis Presley', 'Michael Jackson', 'John Lennon', 'Bob Dylan'),
('Qual é o nome do maior desfile de carnaval do Brasil?', 'Carnaval do Rio de Janeiro', 'Carnaval de Salvador', 'Carnaval de São Paulo', 'Carnaval de Recife'),
('Qual é o nome do prêmio dado aos melhores da música nos Estados Unidos?', 'Grammy', 'Oscar', 'Emmy', 'Tony'),
('Qual é o nome do país que é o lar do tango?', 'Argentina', 'Espanha', 'México', 'Brasil'),
('Qual é o nome da maior reserva natural do mundo, localizada no Brasil?', 'Floresta Amazônica', 'Pantanal', 'Cerrado', 'Mata Atlântica'),
('Qual é o nome do famoso festival de música e arte realizado anualmente em Nevada, nos Estados Unidos?', 'Burning Man', 'Coachella', 'Lollapalooza', 'Woodstock'),
('Qual é o nome da montanha mais alta do mundo?', 'Montanha Everest', 'Montanha K2', 'Montanha Kilimanjaro', 'Montanha McKinley'),
('Qual é o nome do deserto localizado na Austrália?', 'Deserto de Simpson', 'Deserto do Saara', 'Deserto de Atacama', 'Deserto do Kalahari'),
('Qual é o país conhecido como "a terra do sorriso"?', 'Tailândia', 'Itália', 'Índia', 'Grécia'),
('Qual é a capital da França?', 'Paris', 'Berlim', 'Roma', 'Madrid'),
('Qual é o nome do tratado que encerrou oficialmente a Segunda Guerra Mundial?', 'Tratado de Paz de Westfália', 'Tratado de Versalhes', 'Tratado de Tordesilhas', 'Tratado de São Francisco'),
('Qual é o nome do órgão responsável pela gestão da segurança nacional nos Estados Unidos?', 'NSA', 'CIA', 'FBI', 'DHS'),
('Qual é o nome dado ao período de tempo durante o qual uma pessoa governa um país?', 'Reinado', 'Mandato', 'Regência', 'Mandado'),
('Qual é o esporte que tem uma bola e é praticado em uma quadra dividida por uma rede?', 'Vôlei', 'Tênis', 'Basquete', 'Futebol'),
('Qual é o nome do evento esportivo internacional que ocorre a cada quatro anos e reúne atletas de todo o mundo?', 'Jogos Olímpicos', 'Copa do Mundo', 'Campeonato Mundial', 'Super Bowl'),
('Qual é o nome do cientista que propôs a teoria da evolução das espécies por seleção natural?', 'Charles Darwin', 'Isaac Newton', 'Albert Einstein', 'Gregor Mendel'),
('Qual é a unidade de medida de temperatura no sistema internacional?', 'Grau Celsius', 'Kelvin', 'Fahrenheit', 'Pascal'),
('Qual é o nome do processo pelo qual os organismos vivos produzem energia?', 'Fotossíntese', 'Respiração', 'Digestão', 'Transpiração'),
('Qual é o nome do autor da série de livros "Crepúsculo"?', 'Stephenie Meyer', 'J.K. Rowling', 'Suzanne Collins', 'George R.R. Martin'),
('Qual é o nome do compositor alemão conhecido por suas sinfonias e sonatas?', 'Ludwig van Beethoven', 'Wolfgang Amadeus Mozart', 'Johann Sebastian Bach', 'Franz Schubert'),
('Qual é o nome do diretor responsável pelo filme "Titanic"?', 'James Cameron', 'Steven Spielberg', 'Christopher Nolan', 'Quentin Tarantino'),
('Qual é o nome do famoso prêmio de cinema concedido pela Academia de Artes e Ciências Cinematográficas?', 'Oscar', 'Grammy', 'Emmy', 'Tony'),
('Qual é o nome do famoso evento de tecnologia realizado anualmente em Las Vegas?', 'CES (Consumer Electronics Show)', 'E3 (Electronic Entertainment Expo)', 'WWDC (Worldwide Developers Conference)', 'Google I/O'),
('Qual é o nome da famosa avenida de Londres conhecida por seus teatros e cinemas?', 'Piccadilly Circus', 'Broadway', 'Sunset Boulevard', 'Hollywood Boulevard');

