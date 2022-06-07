CREATE DATABASE IF NOT EXISTS db_faculdade;

USE db_faculdade;

CREATE TABLE IF NOT EXISTS departamento (
	cod_departamento  INT (4) NOT NULL AUTO_INCREMENT,
    nome_departamento CHAR (20) NOT NULL,
    PRIMARY KEY (cod_departamento)
    );
    
CREATE TABLE IF NOT EXISTS professor (
	cod_professor INT (4) NOT NULL AUTO_INCREMENT,
    nome_professor CHAR (20) NOT NULL,
    sobrenome_professor CHAR (50) NOT NULL,
    status BOOLEAN,
    fk_cod_departamento INT (4),
    PRIMARY KEY (cod_professor),
    FOREIGN KEY (fk_cod_departamento) REFERENCES departamento (cod_departamento)
    );

CREATE TABLE IF NOT EXISTS curso (
	cod_curso INT (4) NOT NULL AUTO_INCREMENT,
    nome_curso CHAR (20) NOT NULL,
    fk_cod_departamento INT (4),
    PRIMARY KEY (cod_curso),
    FOREIGN KEY (fk_cod_departamento) REFERENCES departamento (cod_departamento)
    );

CREATE TABLE IF NOT EXISTS disciplina (
	cod_disciplina INT (4) NOT NULL AUTO_INCREMENT,
    nome_disciplina CHAR (20) NOT NULL,
    carga_horaria INT (4) NOT NULL,
    descricao  CHAR (50),
    num_alunos INT (4),
    fk_cod_departamento INT (4),
    PRIMARY KEY (cod_disciplina),
    FOREIGN KEY (fk_cod_departamento) REFERENCES departamento (cod_departamento)
    );
 CREATE TABLE IF NOT EXISTS professor_disciplina (
	fk_cod_professor INT (4),
     fk_cod_disciplina INT (4),
     PRIMARY KEY (fk_cod_professor, fk_cod_disciplina),
     FOREIGN KEY (fk_cod_professor) REFERENCES professor (cod_professor),
     FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina)
     );
	
CREATE TABLE IF NOT EXISTS curso_disciplina (
	fk_cod_curso INT (4),
     fk_cod_disciplina INT (4),
     PRIMARY KEY (fk_cod_curso, fk_cod_disciplina),
     FOREIGN KEY (fk_cod_curso) REFERENCES curso (cod_curso),
     FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina)
     );
        
CREATE TABLE IF NOT EXISTS turma (
	cod_turma INT (4) NOT NULL AUTO_INCREMENT,
     periodo CHAR (8) NOT NULL,
     num_aluno INT (4),
     dt_inicio DATE,
     dt_fim DATE,
     fk_cod_curso INT (4),
     PRIMARY KEY (cod_turma),
     FOREIGN KEY (fk_cod_curso) REFERENCES curso (cod_curso)
     );
	
    USE db_faculdade; 
    
 CREATE TABLE IF NOT EXISTS tipo_logradouro (
	cod_tipo_logradouro INT (4) NOT NULL AUTO_INCREMENT,
     tipo_logradouro CHAR (11) NOT NULL,
     PRIMARY KEY (cod_tipo_logradouro)
     );
        
CREATE TABLE IF NOT EXISTS endereco (
	cod_endereco INT (4) NOT NULL AUTO_INCREMENT,
      num_rua INT (4),
      nome_rua CHAR (50),
      complemento CHAR (20),
      CEP INT (4) NOT NULL,
      fk_cod_tipo_logradouro INT (4),
      PRIMARY KEY (cod_endereco),
      FOREIGN KEY (fk_cod_tipo_logradouro) REFERENCES tipo_logradouro (cod_tipo_logradouro)
      );
	
CREATE TABLE IF NOT EXISTS aluno (
	RA INT (4) NOT NULL AUTO_INCREMENT,
      nome CHAR (20) NOT NULL,
      sobrenome CHAR (20) NOT NULL,
      RG INT (8) NOT NULL,
      CPF CHAR (11) NOT NULL,
      sexo BOOLEAN,
      status BOOLEAN,
      email CHAR (20) NOT NULL,
      whatsapp INT (8),
      nome_pai CHAR (50),
      nome_mae CHAR (50) NOT NULL,
      fk_cod_curso INT (4),
      fk_cod_turma INT (4),
      fk_cod_endereco INT (4),
      PRIMARY KEY (RA),
      FOREIGN KEY (fk_cod_curso) REFERENCES curso (cod_curso),
      FOREIGN KEY (fk_cod_turma) REFERENCES turma (cod_turma),
      FOREIGN KEY (fk_cod_endereco) REFERENCES endereco (cod_endereco)
      );
	
CREATE TABLE IF NOT EXISTS aluno_disciplina (
	fk_RA INT (4),
      fk_cod_disciplina  INT (4),
      PRIMARY KEY (fk_RA, fk_cod_disciplina),
      FOREIGN KEY (fk_RA) REFERENCES aluno (RA),
      FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina)
      );
        
CREATE TABLE IF NOT EXISTS historico (
	cod_historico INT (4) NOT NULL AUTO_INCREMENT,
      dt_inicio DATE NOT NULL,
      dt_fim DATE NOT NULL,
      fk_RA INT (4),
      PRIMARY KEY (cod_historico),
      FOREIGN KEY (fk_RA) REFERENCES aluno (RA)
      );
        
CREATE TABLE IF NOT EXISTS historico_disciplina (
      fk_cod_disciplina INT (4),
      fk_cod_historico INT (4),
      nota FLOAT (4,2) NOT NULL,
      frequencia INT(8),
      PRIMARY KEY (fk_cod_disciplina, fk_cod_historico),
      FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina),
      FOREIGN KEY (fk_cod_historico) REFERENCES historico (cod_historico)
      );
    
CREATE TABLE IF NOT EXISTS tipo_telefone (
	cod_tipo_telefone INT (4) NOT NULL AUTO_INCREMENT,
      tipo_telefone CHAR (8),
      PRIMARY KEY (cod_tipo_telefone)
      );

CREATE TABLE IF NOT EXISTS telefone (
	cod_telefone INT (4) NOT NULL AUTO_INCREMENT,
      num_telefone CHAR (20),
      fk_cod_tipo_telefone INT (4),
      PRIMARY KEY (cod_telefone),
      FOREIGN KEY (fk_cod_tipo_telefone) REFERENCES tipo_telefone (cod_tipo_telefone)
      );
	
 CREATE TABLE IF NOT EXISTS aluno_telefone (
	cod_tel_aluno INT (4) NOT NULL AUTO_INCREMENT,
     fk_RA INT (4),
     fk_cod_telefone INT (4),
     PRIMARY KEY (cod_tel_aluno, fk_RA, fk_cod_telefone),
     FOREIGN KEY (fk_RA) REFERENCES aluno (RA),
     FOREIGN KEY (fk_cod_telefone) REFERENCES telefone (cod_telefone)
     );
    
