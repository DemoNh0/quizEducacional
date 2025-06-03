CREATE DATABASE QUIZ;

USE QUIZ;

    CREATE TABLE IF NOT EXISTS USUARIO (
        ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT UNIQUE,
        NOME VARCHAR(30) NOT NULL UNIQUE,
        SENHA VARCHAR(255) NOT NULL,
        EMAIL VARCHAR(300) NOT NULL UNIQUE,
        TIPO ENUM('user', 'admin') NOT NULL,
        PONTOS INT DEFAULT 0
    );

DELIMITER //

CREATE PROCEDURE criar_usuario (
    IN p_nome VARCHAR(30),
    IN p_email VARCHAR(300),
    IN p_senha VARCHAR(255)
)
BEGIN
    INSERT INTO USUARIO (NOME, EMAIL, SENHA)
    VALUES (p_nome, p_email, p_senha);
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE buscar_usuario_por_email (
    IN p_email VARCHAR(300)
)
BEGIN
    SELECT * FROM USUARIO
    WHERE EMAIL = p_email
    LIMIT 1;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE buscar_usuario_maior_pontuacao(OUT usuario_id INT)
BEGIN
    SELECT id
    INTO usuario_id
    FROM Usuario
    ORDER BY pontos DESC
    LIMIT 1;
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE buscar_usuario_acima_da_pontuacao(
    IN pontuacao_limite INT,
    OUT usuario_id INT
)
BEGIN
    SELECT id
    INTO usuario_id
    FROM Usuario
    WHERE pontos > pontuacao_limite
    ORDER BY pontos ASC
    LIMIT 1;
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE buscar_usuarios_abaixo_da_pontuacao(
    OUT usuario_id INT,
    IN pontuacao_limite INT,
    IN quantidade INT
)
BEGIN
    SELECT id
    INTO usuario_id
    FROM Usuario
    WHERE pontos <= pontuacao_limite
    ORDER BY pontos DESC
    LIMIT quantidade;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE alterar_pontos_por_id_usuario (
    IN p_id_usuario INT,
    IN p_novo_ponto INT
)
BEGIN
    
    UPDATE USUARIO
    SET PONTOS = p_novo_ponto
    WHERE ID = p_id_usuario;

END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE buscar_usuario_por_id(
    IN p_id INT
)
BEGIN
    SELECT * 
    FROM USUARIO 
    WHERE ID = p_id
    LIMIT 1;
END //

DELIMITER ;




CREATE TABLE IF NOT EXISTS CURSO(
ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT UNIQUE,
NOME VARCHAR(150) NOT NULL UNIQUE,
DESCRICAO VARCHAR(150) NOT NULL
);

DELIMITER //

CREATE PROCEDURE inserir_curso(
    IN p_nome VARCHAR(150),
    IN p_descricao VARCHAR(150)
)
BEGIN
    INSERT INTO CURSO (NOME, DESCRICAO)
    VALUES (p_nome, p_descricao);
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE editar_curso_por_id(
    IN p_id INT,
    IN p_nome VARCHAR(150),
    IN p_descricao VARCHAR(150)
)
BEGIN
    UPDATE CURSO
    SET NOME = p_nome, DESCRICAO = p_descricao
    WHERE ID = p_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE excluir_curso_por_id(
    IN p_id INT
)
BEGIN
    DELETE FROM CURSO
    WHERE ID = p_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE consultar_cursos()
BEGIN
    SELECT * FROM CURSO;
END //

DELIMITER ;




CREATE TABLE IF NOT EXISTS DISCIPLINA (
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(255) NOT NULL,
    ID_CURSO INT NOT NULL,
    CONSTRAINT fk_disciplina_curso FOREIGN KEY (ID_CURSO) REFERENCES CURSO(ID)
);

DELIMITER //

CREATE PROCEDURE inserir_disciplina (
    IN p_nome VARCHAR(255),
    IN p_id_curso INT
)
BEGIN
    INSERT INTO DISCIPLINA (NOME, ID_CURSO)
    VALUES (p_nome, p_id_curso);
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE editar_disciplina_por_id (
    IN p_id INT,
    IN p_novo_nome VARCHAR(255)
)
BEGIN
    UPDATE DISCIPLINA
    SET NOME = p_novo_nome
    WHERE ID = p_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE excluir_disciplina_por_id (
    IN p_id INT
)
BEGIN
    DELETE FROM DISCIPLINA
    WHERE ID = p_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE consultar_disciplinas_por_id_curso (
    IN p_id_curso INT
)
BEGIN
    SELECT * FROM DISCIPLINA
    WHERE ID_CURSO = p_id_curso;
END //

DELIMITER ;



CREATE TABLE IF NOT EXISTS QUESTAO (
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ENUNCIADO VARCHAR(1000) NOT NULL,
    DIFICULDADE TINYINT NOT NULL CHECK (DIFICULDADE BETWEEN 1 AND 5),
    ID_DISCIPLINA INT NOT NULL,
    CONSTRAINT fk_questao_disciplina FOREIGN KEY (ID_DISCIPLINA) REFERENCES DISCIPLINA(ID)
);

DELIMITER //
 
CREATE PROCEDURE inserir_questao (
    IN p_enunciado VARCHAR(1000),
    IN p_dificuldade TINYINT,
    IN p_disciplina INT
)
BEGIN
    INSERT INTO QUESTAO (ENUNCIADO, DIFICULDADE, ID_DISCIPLINA)
    VALUES (p_enunciado, p_dificuldade, p_disciplina);
END //
 
DELIMITER ;
DELIMITER //
 
CREATE PROCEDURE editar_questao_por_id(
    IN p_id INT,
    IN p_enunciado VARCHAR(1000),
    IN p_dificuldade TINYINT
)
BEGIN
    UPDATE QUESTAO
    SET ENUNCIADO = p_enunciado,
        DIFICULDADE = p_dificuldade
    WHERE ID = p_id;
    END //
 
DELIMITER ;
 
DELIMITER //
 
CREATE PROCEDURE excluir_questao_por_id(
    IN p_id INT
)
BEGIN
    DELETE FROM QUESTAO
    WHERE ID = p_id;
END //
 
DELIMITER ;
 
DELIMITER //
 
CREATE PROCEDURE consultar_questoes_por_disciplina(
    IN p_id_disciplina INT
)
BEGIN
    SELECT * FROM QUESTAO
    WHERE ID_DISCIPLINA = p_id_disciplina;
END //
 
DELIMITER ;



CREATE TABLE IF NOT EXISTS ALTERNATIVA(
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
TEXTO VARCHAR(500) NOT NULL,
CORRETA BOOLEAN NOT NULL,
ID_QUESTAO INT NOT NULL,
CONSTRAINT fk_alternativa_questao FOREIGN KEY (ID_QUESTAO)REFERENCES QUESTAO(ID)
);

DELIMITER //

CREATE PROCEDURE inserir_alternativa(
    IN p_texto VARCHAR(500),
    IN p_correta BOOLEAN,
    IN p_id_questao INT
)
BEGIN
    INSERT INTO ALTERNATIVA (TEXTO, CORRETA, ID_QUESTAO)
    VALUES (p_texto, p_correta, p_id_questao);
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE editar_alternativa_por_id(
    IN p_id INT,
    IN p_texto VARCHAR(500),
    IN p_correta BOOLEAN
)
BEGIN
    UPDATE ALTERNATIVA
    SET TEXTO = p_texto,
        CORRETA = p_correta
    WHERE ID = p_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE excluir_alternativa_por_id(
    IN p_id INT
)
BEGIN
    DELETE FROM ALTERNATIVA
    WHERE ID = p_id;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE consultar_alternativa_por_questao(
    IN p_id_questao INT
)
BEGIN
    SELECT * FROM ALTERNATIVA
    WHERE ID_QUESTAO = p_id_questao;
END //

DELIMITER ;

DELIMITER //
 
CREATE PROCEDURE verificar_correta_por_id(
IN p_id INT)
BEGIN
    SELECT CORRETA
    FROM ALTERNATIVA
    WHERE id = p_id;
END//
 
DELIMITER ;

CREATE TABLE IF NOT EXISTS INSIGNIA(
    ID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    INSIGNIA_1 MEDIUMBLOB NOT NULL,
    INSIGNIA_2 MEDIUMBLOB NOT NULL,
    INSIGNIA_3 MEDIUMBLOB NOT NULL
);

DELIMITER //

CREATE PROCEDURE buscar_insignia_por_id_e_numero (
    IN p_id INT,
    IN p_numero TINYINT
)
BEGIN
    IF p_numero = 1 THEN
        SELECT insignia_1 AS insignia FROM INSIGNIA WHERE ID = p_id;
    ELSEIF p_numero = 2 THEN
        SELECT insignia_2 AS insignia FROM INSIGNIA WHERE ID = p_id;
    ELSEIF p_numero = 3 THEN
        SELECT insignia_3 AS insignia FROM INSIGNIA WHERE ID = p_id;
    ELSE
        SELECT 'Número inválido. Escolha 1, 2 ou 3.' AS mensagem;
    END IF;
END //

DELIMITER ;
