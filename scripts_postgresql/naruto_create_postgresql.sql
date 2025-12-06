-- -----------------------------------------------------
-- Tabela Clã
-- -----------------------------------------------------
CREATE TABLE Cla (
    id_cla VARCHAR(5) PRIMARY KEY,
    nome VARCHAR(100)
);

-- -----------------------------------------------------
-- Tabela Vila
-- -----------------------------------------------------
CREATE TABLE Vila (
    id_vila VARCHAR(5) PRIMARY KEY,
    nome VARCHAR(100)
);

-- -----------------------------------------------------
-- Tabela Missao
-- -----------------------------------------------------
CREATE TABLE Missao (
    id_missao VARCHAR(5) PRIMARY KEY,
    descricao TEXT,
    ranking CHAR(1)
);

-- -----------------------------------------------------
-- Tabela Time
-- -----------------------------------------------------
CREATE TABLE Time (
    id_time VARCHAR(5) PRIMARY KEY,
    nome VARCHAR(100)
);

-- -----------------------------------------------------
-- Tabela Invocacao
-- -----------------------------------------------------
CREATE TABLE Invocacao (
    id_invocacao VARCHAR(5) PRIMARY KEY,
    nome_invocacao VARCHAR(100)
);

-- -----------------------------------------------------
-- Tabela Chakra
-- -----------------------------------------------------
CREATE TABLE Chakra (
    id_chakra VARCHAR(5) PRIMARY KEY,
    natureza VARCHAR(100),
    cor VARCHAR(50),
    rotacao VARCHAR(50)
);

-- -----------------------------------------------------
-- Tabela Jutsu
-- -----------------------------------------------------
CREATE TABLE Jutsu (
    id_jutsu VARCHAR(5) PRIMARY KEY,
    nome_jutsu VARCHAR(100),
    tipo VARCHAR(50)
);

-- -----------------------------------------------------
-- Tabela Arma
-- -----------------------------------------------------
CREATE TABLE Arma (
    id_arma VARCHAR(5) PRIMARY KEY,
    nome_arma VARCHAR(100),
    tipo VARCHAR(50)
);

-- -----------------------------------------------------
-- Tabela Selo
-- -----------------------------------------------------
CREATE TABLE Selo (
    id_selo VARCHAR(5) PRIMARY KEY,
    nome VARCHAR(100)
);

-- -----------------------------------------------------
-- Tabela KekkeiGenkai (agora pode referenciar Cla)
-- -----------------------------------------------------
CREATE TABLE KekkeiGenkai (
    id_kekkei VARCHAR(5) PRIMARY KEY,
    nome_kekkei VARCHAR(100),
    id_cla VARCHAR(5),
    FOREIGN KEY (id_cla) REFERENCES Cla(id_cla)
);

-- -----------------------------------------------------
-- Tabela Sensei (agora pode referenciar Time)
-- -----------------------------------------------------
CREATE TABLE Sensei (
    id_sensei VARCHAR(5) PRIMARY KEY,
    id_time VARCHAR(5),
    FOREIGN KEY (id_time) REFERENCES Time(id_time)
);

-- -----------------------------------------------------
-- Tabela Ninja (agora pode referenciar Vila e Cla)
-- -----------------------------------------------------
CREATE TABLE Ninja (
    id_ninja VARCHAR(5) PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    ranking CHAR(1),
    tipo CHAR(1),
    id_vila VARCHAR(5),
    id_cla VARCHAR(5),
    FOREIGN KEY (id_vila) REFERENCES Vila(id_vila),
    FOREIGN KEY (id_cla) REFERENCES Cla(id_cla)
);

-- -----------------------------------------------------
-- Demais tabelas com dependências
-- -----------------------------------------------------
CREATE TABLE Bijuu (
    id_bijuu VARCHAR(5) PRIMARY KEY,
    id_ninja VARCHAR(5),
    nome_bijuu VARCHAR(100),
    FOREIGN KEY (id_ninja) REFERENCES Ninja(id_ninja)
);

CREATE TABLE Hokage (
    id_ninja VARCHAR(5) PRIMARY KEY,
    id_vila VARCHAR(5),
    FOREIGN KEY (id_vila) REFERENCES Vila(id_vila),
    FOREIGN KEY (id_ninja) REFERENCES Ninja(id_ninja)
);

CREATE TABLE Mestres (
    id_aprendiz VARCHAR(5),
    id_mestre VARCHAR(5) PRIMARY KEY,
    especialidade VARCHAR(100),
    FOREIGN KEY (id_aprendiz) REFERENCES Ninja(id_ninja)
);

-- Tabelas de relacionamento
CREATE TABLE Ninja_Arma (
    id_ninja VARCHAR(5),
    id_arma VARCHAR(5),
    PRIMARY KEY (id_ninja, id_arma),
    FOREIGN KEY (id_ninja) REFERENCES Ninja(id_ninja),
    FOREIGN KEY (id_arma) REFERENCES Arma(id_arma)
);

CREATE TABLE Ninja_Invocacao (
    id_ninja VARCHAR(5),
    id_invocacao VARCHAR(5),
    PRIMARY KEY (id_ninja, id_invocacao),
    FOREIGN KEY (id_ninja) REFERENCES Ninja(id_ninja),
    FOREIGN KEY (id_invocacao) REFERENCES Invocacao(id_invocacao)
);

CREATE TABLE Ninja_Chakra (
    id_ninja VARCHAR(5),
    id_chakra VARCHAR(5),
    PRIMARY KEY (id_ninja, id_chakra),
    FOREIGN KEY (id_ninja) REFERENCES Ninja(id_ninja),
    FOREIGN KEY (id_chakra) REFERENCES Chakra(id_chakra)
);

CREATE TABLE Jutsu_Chakra (
    id_jutsu VARCHAR(5),
    id_chakra VARCHAR(5),
    PRIMARY KEY (id_jutsu, id_chakra),
    FOREIGN KEY (id_jutsu) REFERENCES Jutsu(id_jutsu),
    FOREIGN KEY (id_chakra) REFERENCES Chakra(id_chakra)
);

CREATE TABLE Selo_Jutsu (
    id_selo VARCHAR(5),
    id_jutsu VARCHAR(5),
    PRIMARY KEY (id_selo, id_jutsu),
    FOREIGN KEY (id_selo) REFERENCES Selo(id_selo),
    FOREIGN KEY (id_jutsu) REFERENCES Jutsu(id_jutsu)
);

CREATE TABLE Ninja_Time (
    id_ninja VARCHAR(5),
    id_time VARCHAR(5),
    PRIMARY KEY (id_ninja, id_time),
    FOREIGN KEY (id_ninja) REFERENCES Ninja(id_ninja),
    FOREIGN KEY (id_time) REFERENCES Time(id_time)
);

CREATE TABLE Time_Missao (
    id_missao VARCHAR(5),
    id_time VARCHAR(5),
    PRIMARY KEY (id_missao, id_time),
    FOREIGN KEY (id_missao) REFERENCES Missao(id_missao),
    FOREIGN KEY (id_time) REFERENCES Time(id_time)
);

CREATE TABLE Ninja_Kekkei (
    id_ninja VARCHAR(5),
    id_kekkei VARCHAR(5),
    PRIMARY KEY (id_ninja, id_kekkei),
    FOREIGN KEY (id_ninja) REFERENCES Ninja(id_ninja),
    FOREIGN KEY (id_kekkei) REFERENCES KekkeiGenkai(id_kekkei)
);