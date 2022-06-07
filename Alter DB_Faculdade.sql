 ALTER TABLE curso
 CHANGE nome_curso  nome_curso CHAR (20);
  
ALTER TABLE turma
CHANGE periodo periodo CHAR (8);
  
ALTER TABLE disciplina
CHANGE nome_disciplina nome_disciplina CHAR (20),
CHANGE num_alunoS num_alunoS INT (4) NOT NULL,
CHANGE fk_cod_departamento fk_cod_departamento INT (4) NOT NULL; 
  
ALTER TABLE disciplina
MODIFY COLUMN num_alunos INT (4) NOT NULL; 
   
ALTER TABLE tipo_telefone
CHANGE cod_tipo_telefone cod_tipo INT(4) AUTO_INCREMENT;
  
ALTER TABLE telefone
CHANGE fk_cod_tipo_telefone fk_cod_tipo INT (4);

ALTER TABLE endereco
CHANGE num_rua  num_rua INT (4) NOT NULL,
CHANGE nome_rua nome_rua CHAR (50) NOT NULL,
CHANGE complemento complemento CHAR (20) NULL,
CHANGE fk_cod_tipo_logradouro fk_cod_tipo_logradouro INT (4) NOT NULL;

ALTER TABLE aluno
CHANGE nome nome CHAR (20),
CHANGE sobrenome sobrenome CHAR (20),
CHANGE RG RG INT (8),
CHANGE CPF CPF CHAR (11),
CHANGE sexo sexo CHAR (1),
CHANGE email email CHAR (20),
CHANGE nome_mae nome_mae CHAR (50);

ALTER TABLE historico
CHANGE dt_inicio dt_inicio DATE,
CHANGE dt_fim dt_fim DATE NOT NULL,
CHANGE fk_RA fk_RA INT (4) NOT NULL;
