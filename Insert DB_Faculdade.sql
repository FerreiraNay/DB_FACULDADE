USE db_faculdade;

INSERT INTO departamento
(nome_departamento)
VALUES
('Ciencia Humanas'),
('Matematica'),
('Biologia'),
('Estagio'),
('Tecno. Informacao');

INSERT INTO professor
(nome_professor, sobrenome_professor, status, fk_cod_departamento)
VALUES
('Barbara', 'Valdez', '1', '5'),
('Mateus', 'Pires', '1', '3'),
('Yago', 'Silva', '0', '4'),
('Paulo', 'Castro', '1', '1'),
('Amanda', 'Lois', '0', '2'),
('Lurdes', 'Brum', '1', '2'),
('Monica', 'Pascoal', '1', '4'),
('Priscila', 'Montes', '0', '5'),
('Lucas', 'Martins', '1', '1'),
('Felipe', 'Valdez', '1', '3');

INSERT INTO curso
(nome_curso, fk_cod_departamento)
VALUES
('Engen.Software', '5'),
('Analise Sistema', '5'),
('Biologia', '3'),
('Historia', '1'),
('Matematica', '2'),
('Engen.Eletrica', '2'),
('Pscicologia', '1'),
('Enfermagem', '4'),
('Biomedicina', '4'),
('Biotecnologia', '3');

INSERT INTO disciplina
(nome_disciplina, carga_horaria, descricao, num_alunos, fk_cod_departamento)
VALUES
('Raciocinio Logico', '60', 'pensar de forma logica', '30', '2'),
('Pscico. Congnitiva', '60', 'padrao da mente', '30', '1'),
('Eletronica Digital', '60', 'agir maquina', '30', '2'),
('Programcao C', '60', 'linguagem de programacao', '30', '5'),
('Microbiologia', '60', 'vidas microscopias', '30', '3'),
('Imunologia Clinica', '60', 'imunidade', '30', '4'),
('Modelagem dados', '60', 'criar a estrutura de dados', '30', '5'),
('Genetica Basica', '60', 'estudo genoma', '30', '3'),
('Fisiologia Vegetal', '60', 'funcao interna planta', '30', '3'),
('Virologia', '60', 'vida do virus', '30', '4'),
('Seg Computacional', '60', 'protecao do sistema', '30', '5'),
('Bioquimica Geral', '60', 'reacoes quimicas e biologica', '30', '3'),
('Teste de Software', '60', 'testar software', '30', '5'),
('Anal. Comportamento', '60', 'observacao', '30', '1'),
('Calculo 1', '60', 'operação matematica', '30', '2'),
('H. Brasil Colonial', '60', 'colonizacao', '30', '1'),
('Algebra', '60', 'operacao matematica', '30', '2'),
('Farmacologia', '60', 'dozagem medicamento', '30', '4'),
('Historia Antiga', '60', 'passado da humanidade', '30', '1'),
('Saude coletiva', '60', 'saude de todos', '30', '4'),
('Psicopatia ', '60', 'comportamento disfuncional', '30', '1'),
('Anatomia', '60', 'corpo humano', '30', '4'),
('Historia Moderna', '60', 'comtemporaneidade', '30', '1'),
('Bio Molecular', '60', 'vida molecula', '30', '4'),
('Vet. e Geometria', '60', 'operacao matematica', '30', '2'),
('Metodos Ageis', '60', 'formas praticas', '30', '5'),
('Rede Computadores', '60', 'rede global', '30', '5'),
('Eletromagnestismo', '60', 'eletricidade e magnetica', '30', '2'),
('Subestacoes', '60', 'instacao de alta potencia', '30', '2'),
('Ecologia', '60', 'estudo do ecosistema', '30', '3');

INSERT INTO professor_disciplina
(fk_cod_professor, fk_cod_disciplina)
VALUES
('6', '1'),
('4', '2'),
('6', '3'),
('1', '4'),
('10', '5'),
('7', '6'),
('1', '7'),
('2', '8'),
('10', '9'),
('7', '10'),
('1', '11'),
('4', '12'),
('1', '13'),
('9', '14'),
('6', '15'),
('9', '16'),
('6', '17'),
('7', '18'),
('4', '19'),
('7', '20'),
('9', '21'),
('7', '22'),
('4', '23'),
('7', '24'),
('6', '25'),
('1', '26'),
('1', '27'),
('6', '28'),
('6', '29'),
('2', '30');

INSERT INTO curso_disciplina
(fk_cod_curso, fk_cod_disciplina)
VALUES
('6', '1'),
('7', '2'),
('6', '3'),
('2', '4'),
('10', '5'),
('9', '6'),
('1', '7'),
('10', '8'),
('3', '9'),
('9', '10'),
('1', '11'),
('9', '12'),
('1', '13'),
('7', '14'),
('5', '15'),
('4', '16'),
('5', '17'),
('8', '18'),
('4', '19'),
('8', '20'),
('7', '21'),
('9', '22'),
('4', '23'),
('10', '24'),
('5', '25'),
('2', '26'),
('1', '27'),
('6', '28'),
('6', '29'),
('3', '30');

INSERT INTO turma
(periodo, num_aluno, dt_inicio, dt_fim, fk_cod_curso)
VALUES
('Mat', '30', '2022-07-11', '2022-11-23', '10'), 
('Vesp', '30', '2022-07-11', '2022-11-23', '6'),
('Not', '30', '2022-07-11', '2022-11-23', '4'),
('Not', '30', '2022-07-11', '2022-11-23', '2'),
('Mat', '30', '2022-07-11', '2022-11-23', '9'),
('Vesp', '30', '2022-07-11', '2022-11-23', '8'),
('Mat', '30', '2022-07-11', '2022-11-23', '7'),
('Not', '30', '2022-07-11', '2022-11-23','1');

INSERT INTO tipo_logradouro
(tipo_logradouro)
VALUES
('Rua'),
('Avenida'),
('Quadra'),
('Bloco'),
('Quarteirao'),
('Setor');

INSERT INTO endereco
(num_rua, nome_rua, complemento, CEP, fk_cod_tipo_logradouro)
VALUES
('00', 'QNM 24 conj. p', 'casa 20', '7220615','5'),
('101', 'SQS blobo D', 'apt 105', '7220615','3'),
('24', 'Rua Agusta', 'Ed Balon apt 204', '1020615','1'),
('00', 'QNP 14 conj. H', 'casa 04', '7223615','5'),
('02', 'Avenida Porto', 'casa 23', '7680615','2'),
('00', 'CNA 05', 'casa 06', '7236615','5'),
('208', 'SQN bloco K', 'apt 301', '7220698','3'),
('30', 'Setor Grafico', 'Ed. Yellow apt 504', '7228515','6'),
('23', 'Azedo Ma', 'casa 12', '7220565','6'),
('34', 'Arnaldo', ' Ed. Sol apt 608', '7220815','4'),
('00', 'QR 605 conj 30', 'casa 10', '7296615','5'),
('80', 'Setor Leste', 'Ed. Louça apt 1010', '1020615','6'),
('32', 'Rua Kart', 'Ed. Blusa apt 106', '5220615','1'),
('00', 'QNO conj L', 'casa 40', '7220675','5'),
('39', 'Avenida Luva', 'lote 5 apt 205', '7296615','2'),
('05', 'Rua Ellos', 'Lote 36  apt 109', '7228215','1'),
('509', 'SQS bloco J', 'apt 306', '7220615','3'),
('25', 'Bloco U Villa Uva', 'casa 24', '7278615','4'),
('00', 'QNQ 23 conj E', 'casa 36', '7223215','5');

INSERT INTO aluno
(nome, sobrenome, RG, CPF, sexo, status, email, whatsapp, nome_pai, nome_mae, fk_cod_curso, fk_cod_turma, fk_cod_endereco)
VALUES
('Adlla','Silva','895423','2035324561','F','1','adllass@yahoo.com','987542358','Luis Silva','Maria Silva','7', '7', '1'),
('Pedro','Alves','895478','2035324985','M','0','alvpedro@gmail.com','987542332','Bob Alves','Iris Alves','1', null, '2'),
('Valter','Lima','823423','2039124561','M','1','lvalter@yahoo.com','987542558','Luis Lima','Lua Lima','2', '4', '3'),
('Lua','Pires','235423','7835324561','F','1','plires@outlook.com','987112358','Francisco Pires','Maria Pires','8', '6', '4'),
('Kate','Nunes','115423','6335324561','F','0','kt_nunes@yahoo.com','337542358','Joao Nunes','Sol Nunes','10', null, '5'),
('Bruna','Silva','655423','2435324561','F','1','sbrunass@yahoo.com','547542358','Marcos Silva','Fran Silva','9', '5', '6'),
('Luis','Silva','325423','5435324561','M','1','luisva@outlook.com','527542358','Marcos Silva','Fran Silva','6', '2', '6'),
('Alberto','Gil','525423','735324561','M','1','gilalbe@gmail.com','932542358','Joao Gil','Monica Gil','3', '6', '7'),
('Heber','Alves','625423','2985324561','M','1','hberalves@yahoo.com','997542358','Luis Alves','Acacia Alves','5', '4', '8'),
('Monica','Lins','823423','1035324561','F','1','linsmm@yahoo.com','917542358','Pedro Lins','Marta Lins','4', '3', '9'),
('Maria','Morais','425423','4435324561','F','1','mamorais@outlook.com','957542358','Roberto Morais','Sonia Morais','1', '8', '10'),
('Darlene','Alves','893323','2985324561','F','1','darlenea@yahoo.com','957542358','Luis Alves','Marta Alaves','4', '3', '11'),
('Roberto','Fill','811423','1435324561','M','1','fillrob@gmail.com','977542358','Lins Fill','Bruna Fill','7', '7', '12'),
('Sonia','Pereira','645423','3335324561','F','1','pereiraso@yahoo.com','927542358','Luis Pereira','Marta Pereira','3', '1', '13'),
('Hugo','Mota','725423','3935324561','M','1','hugomota@yahoo.com','957542358','Carlos Mota','Cibele Mota','6', '2', '14'),
('Breno','Brum','995423','8735324561','M','0','brenobrum@yahoo.com','977542358','Fernando Brum','Fernanda Brum','5', null, '15'),
('Fernando','Sousa','225423','5735324561','M','1','fernandoss@gmail.com','997542358','Joao Sousa','Antonia Sousa','2', '4', '16'),
('Otto','Sam','275423','8835324561','M','1','samotto@yahoo.com','987542358','Luis Sam','Marta Sam','8', '6', '17'),
('Lucas','Alves','555423','5875324561','M','1','lucasalves@yahoo.com','925542358','Donizete Alves','Sonia Alves','10', '1', '18'),
('Moises','Lima','225423','8325324561','M','1','molima@yahoo.com','952342358','Pedro Lima','Gabriela Lima','9', '5', '19');

INSERT INTO aluno_disciplina
(fk_RA, fk_cod_disciplina)
VALUES
('1','2'),
('3','4'),
('4','18'),
('6','6'),
('7','3'),
('8','9'),
('9','15'),
('10','16'),
('11','27'),
('12','23'),
('13','21'),
('14','9'),
('16','15'),
('17','4'),
('18','20'),
('19','8'),
('20','6');

INSERT INTO historico
(dt_inicio, dt_fim, fk_RA)
VALUES
('2021-07-20', '2026-06-10', '1'),
('2021-07-20', '2024-06-10', '2'),
('2021-07-20', '2023-06-10', '3'),
('2020-07-20', '2024-12-10', '4'),
('2020-07-20', '2024-12-10', '5'),
('2021-07-20', '2024-12-10', '6'),
('2021-07-20', '2025-06-10', '7'),
('2021-07-20', '2024-06-10', '8'),
('2021-07-20', '2023-12-10', '9'),
('2021-07-20', '2024-06-10', '10'),
('2021-07-20', '2025-06-10', '11'),
('2022-02-20', '2025-06-10', '12'),
('2022-02-20', '2027-06-10', '13'),
('2022-02-20', '2025-06-10', '14'),
('2022-02-20', '2026-06-10', '15'),
('2021-07-20', '2023-06-10', '16'),
('2022-02-20', '2024-06-10', '17'),
('2022-02-20', '2026-06-10', '18'),
('2020-07-20', '2025-06-10', '19'),
('2022-02-20', '2026-12-10', '20');

INSERT INTO historico_disciplina
(fk_cod_disciplina, fk_cod_historico, nota, frequencia)
VALUES
('2','1', '8.5','60'),
('14','1', '9.0','60'),
('21','1', '7.5','60'),
('13','2', '8.5','60'),
('26','2', '8.0','60'),
('11','2', '9.0','60'),
('4','3', '8.5','60'),
('7','3', '7.5','60'),
('27','3', '8.0','60'),
('18','4', '8.0','60'),
('20','4', '8.5','60'),
('22','4', '8.0','60'),
('24','5', '8.5','60'),
('8','5', '9.0','60'),
('10','5', '8.5','60'),
('6','6', '7.5','60'),
('12','6', '8.0','60'),
('10','6', '8.5','60'),
('3','7', '8.0','60'),
('28','7', '8.0','60'),
('29','7', '7.5','60'),
('5','8', '8.0','60'),
('9','8', '9.0','60'),
('30','8', '8.5','60'),
('1','9', '8.5','60'),
('15','9', '7.5','60'),
('17','9', '8.0','60'),
('25','9', '8.0','60'),
('16','10', '8.5','60'),
('19','10', '9.5','60'),
('23','10', '8.0','60'),
('13','11', '8.5','60'),
('26','11', '7.0','60'),
('11','11', '8.0','60'),
('16','12', '9.5','60'),
('19','12', '9.5','60'),
('23','12', '9.0','60'),
('2','13', '8.5','60'),
('14','13', '9.0','60'),
('21','13', '8.0','60'),
('5','14', '8.0','60'),
('9','14', '7.0','60'),
('30','14', '7.5','60'),
('3','15', '8.0','60'),
('28','15', '8.0','60'),
('29','15', '8.0','60'),
('1','16', '8.5','60'),
('15','16', '7.5','60'),
('17','16', '7.0','60'),
('25','16', '9.0','60'),
('4','17', '8.5','60'),
('7','17', '8.5','60'),
('27','17', '9.0','60'),
('18','18', '7.0','60'),
('20','18', '8.5','60'),
('22','18', '9.0','60'),
('24','19', '8.5','60'),
('8','19', '9.0','60'),
('10','19', '8.5','60'),
('1','20', '8.5','60'),
('15','20', '8.5','60'),
('17','20', '8.0','60'),
('25','20', '8.0','60');

INSERT INTO tipo_telefone
(tipo_telefone)
VALUES
('cel'),
('res'),
('com');

INSERT INTO telefone
(num_telefone,fk_cod_tipo)
VALUES
('986579659','1'),
('3584261','2'),
('3684215','3'),
('987542332','1'),
('987545627','1'),
('982584233','1'),
('3657841','2'),
('36974582','3'),
('36587421','2'),
('36587421','2'),
('985632424','1'),
('36532421','2'),
('38747421','3'),
('986324158','1'),
('957542358','1'),
('977542358', '1'),
('927542358', '1'),
('37787421','2'),
('37887421','2'),
('987542358','1'),
('38627421','2'),
('33687421','2');

INSERT INTO aluno_telefone
(fk_RA, fk_cod_telefone)
VALUES
('1','1'),
('1','2'),
('1','3'),
('2','4'),
('4','5'),
('5','6'),
('5','7'),
('5','8'),
('6','9'),
('7','10'),
('9','11'),
('9','12'),
('9','13'),
('10','14'),
('12','15'),
('13','16'),
('14','17'),
('16','18'),
('17','19'),
('18','20'),
('19','21'),
('20','22');
