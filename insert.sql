--Doador

INSERT INTO doador (cpf, nome, idade, email, logradouro, numero, bairro, cidade, cep, tiposanguineo)
VALUES 
    ('12345678901', 'João Silva', 30, 'joao@gmail.com', 'Rua dos Bandeirantes', 123, 'Centro', 'São Paulo', '01234-567', 'A+'),
    ('23456789012', 'Maria Santos', 45, 'maria@gmail.com', 'Avenida Brasil', 456, 'Jardins', 'Rio de Janeiro', '12345-678', 'B-'),
    ('34567890123', 'Pedro Souza', 28, 'pedro@gmail.com', 'Rua das Flores', 789, 'Liberdade', 'São Paulo', '98765-432', 'O+'),
    ('45678901234', 'Ana Oliveira', 52, 'ana@gmail.com', 'Rua do Comércio', 1011, 'Centro', 'Belo Horizonte', '54321-098', 'AB+'),
    ('56789012345', 'Lucas Pereira', 35, 'lucas@gmail.com', 'Avenida Paulista', 1213, 'Gávea', 'Rio de Janeiro', '10293-847', 'A-'),
    ('67890123456', 'Camila Rodrigues', 42, 'camila@gmail.com', 'Rua da Praia', 1415, 'Santo Amaro', 'São Paulo', '76543-210', 'B+'),
    ('78901234567', 'Marcos Silva', 29, 'marcos@gmail.com', 'Avenida Getúlio Vargas', 1617, 'Boa Vista', 'Porto Alegre', '54321-987', 'O-'),
    ('89012345678', 'Carla Costa', 39, 'carla@gmail.com', 'Rua dos Coqueiros', 1819, 'Barra da Tijuca', 'Rio de Janeiro', '90876-543', 'A+'),
    ('90123456789', 'Rafaela Almeida', 47, 'rafaela@gmail.com', 'Avenida Rebouças', 2021, 'Centro', 'São Paulo', '23456-789', 'B-'),
    ('01012345678', 'Fernando Pereira', 32, 'fernando@gmail.com', 'Rua das Palmeiras', 2223, 'Itaim Bibi', 'São Paulo', '67890-123', 'AB-');

--telefon doador

INSERT INTO telefone_doador (cpf, numero)
VALUES
    ('12345678901', '987654321'),
    ('12345678901', '123456789'),
    ('23456789012', '456789123'),
    ('34567890123', '987654321'),
    ('45678901234', '123456789'),
    ('56789012345', '456789123'),
    ('67890123456', '987654321'),
    ('78901234567', '123456789'),
    ('89012345678', '456789123'),
    ('90123456789', '987654321');

--funcionarios

INSERT INTO funcionario (codigo, nome, CRM, COREN)
VALUES
    (1, 'Laura Rodrigues Souza', '123456', NULL),
    (2, 'Pedro Santos Lima', '654321', NULL),
    (3, 'Sofia Martins Rocha', '987654', NULL),
    (4, 'Gabriel Oliveira Santos', '246813', NULL),
    (5, 'Isabella Silva Costa', '135792', NULL),
    (6, 'Lucas Pereira Almeida', '864209', NULL),
    (7, 'Matheus Costa Gomes   ', NULL, '123456'),
    (8, 'Beatriz Lima Ferreira', NULL, '654321'),
    (9, 'Davi Ferreira Santos', NULL, '987654'),
    (10, 'Camila Almeida Fernandes', NULL, '246813');

--atende

INSERT INTO atende (codigo_fun, cpf)
VALUES
    (1, '12345678901'),
    (1, '23456789012'),
    (2, '34567890123'),
    (3, '45678901234'),
    (3, '56789012345'),
    (4, '67890123456'),
    (4, '78901234567'),
    (5, '89012345678'),
    (6, '90123456789'),
    (7, '01012345678');

--hospital

INSERT INTO hospital (cnpj, email, nome, logradouro, numero, bairro, cidade, cep, tipo_sanguineo)
VALUES
    ('12345678901234', 'hospitalcentral@gmail.com', 'Hospital Central', 'Rua da Saúde', 123, 'Centro', 'São Paulo', '01234-567', 'A+'),
    ('23456789012345', 'hospitalsaolucas@gmail.com', 'Hospital São Lucas', 'Avenida Paulista', 456, 'Bela Vista', 'São Paulo', '12345-678', 'B-'),
    ('34567890123456', 'hospitalesperanca@gmail.com', 'Hospital Esperança', 'Rua dos Mártires', 789, 'Centro', 'Recife', '98765-432', 'O+'),
    ('45678901234567', 'hospitaldasclinicas@gmail.com', 'Hospital das Clínicas', 'Rua das Universidades', 1011, 'Cidade Universitária', 'São Paulo', '54321-098', 'AB+'),
    ('56789012345678', 'hospitalsantatereza@gmail.com', 'Hospital Santa Tereza', 'Avenida das Palmeiras', 1213, 'Santa Teresa', 'Rio de Janeiro', '10293-847', 'A-'),
    ('67890123456789', 'hospitalnossasenhora@gmail.com', 'Hospital Nossa Senhora', 'Rua das Flores', 1415, 'Centro', 'Porto Alegre', '76543-210', 'B+'),
    ('78901234567890', 'hospitalsaofrancisco@gmail.com', 'Hospital São Francisco', 'Avenida Independência', 1617, 'Independência', 'Porto Alegre', '54321-987', 'O-'),
    ('89012345678901', 'hospitalmemorial@gmail.com', 'Hospital Memorial', 'Rua dos Cravos', 1819, 'Laranjeiras', 'Rio de Janeiro', '90876-543', 'A+'),
    ('90123456789012', 'hospitaldocoracao@gmail.com', 'Hospital do Coração', 'Avenida das Acácias', 2021, 'Centro', 'São Paulo', '23456-789', 'B-'),
    ('01012345678901', 'hospitalsantacasa@gmail.com', 'Hospital Santa Casa', 'Rua das Oliveiras', 2223, 'Vila Mariana', 'São Paulo', '67890-123', 'AB-');

--telefone_hospital

INSERT INTO telefone_hospital (cnpj_hospital, numero)
VALUES
    ('12345678901234', '(11) 9876-5432'),
    ('12345678901234', '(11) 8765-4321'),
    ('23456789012345', '(81) 2345-6789'),
    ('23456789012345', '(11) 3456-7890'),
    ('34567890123456', '(21) 4567-8901'),
    ('34567890123456', '(51) 5678-9012'),
    ('45678901234567', '(51) 6789-0123'),
    ('45678901234567', '(21) 7890-1234'),
    ('56789012345678', '(11) 8901-2345'),
    ('56789012345678', '(11) 9012-3456');

--ponto_de_coleta

    INSERT INTO ponto_de_coleta (cnpj, email, nome, segmento, logradouro, numero, bairro, cidade, cep)
VALUES
    ('21981639000175', 'hospitalsaolucas@gmail.com', 'Hospital São Lucas', 'Hospitalar', 'Rua A', 123, 'Centro', 'São Paulo', '01234-567'),
    ('68354511000145', 'farmaciapopular@gmail.com', 'Farmácia Popular', 'Farmacêutico', 'Avenida B', 456, 'Bela Vista', 'São Paulo', '12345-678'),
    ('48827957000132', 'laboratorioexame@gmail.com', 'Laboratório Exame', 'Laboratorial', 'Rua C', 789, 'Centro', 'Recife', '98765-432'),
    ('74900301000108', 'hospitalcentral@gmail.com', 'Hospital Central', 'Hospitalar', 'Rua D', 1011, 'Cidade Universitária', 'São Paulo', '54321-098'),
    ('85055400000157', 'farmaciadobairro@gmail.com', 'Farmácia do Bairro', 'Farmacêutico', 'Avenida E', 1213, 'Santa Teresa', 'Rio de Janeiro', '10293-847'),
    ('13611344000189', 'laboratoriodiagnostico@gmail.com', 'Laboratório Diagnóstico', 'Laboratorial', 'Rua F', 1415, 'Centro', 'Porto Alegre', '76543-210'),
    ('04054146000170', 'hospitalesperanca@gmail.com', 'Hospital Esperança', 'Hospitalar', 'Avenida G', 1617, 'Independência', 'Porto Alegre', '54321-987'),
    ('32102204000120', 'farmaciasaudebemestar@gmail.com', 'Farmácia Saúde & Bem-Estar', 'Farmacêutico', 'Rua H', 1819, 'Laranjeiras', 'Rio de Janeiro', '90876-543'),
    ('75198694000112', 'laboratorioanaliseclinica@gmail.com', 'Laboratório Análise Clínica', 'Laboratorial', 'Avenida I', 2021, 'Centro', 'São Paulo', '23456-789'),
    ('70387346000170', 'hospitalsantacasa@gmail.com', 'Hospital Santa Casa', 'Hospitalar', 'Rua J', 2223, 'Vila Mariana', 'São Paulo', '67890-123');

--telefone_ponto_de_coleta

    INSERT INTO telefone_ponto_de_coleta (cnpj_coleta, numero)
VALUES
    ('21981639000175', '(11) 9274-5432'),
    ('85055400000157', '(11) 8876-5552'),
    ('70387346000170', '(81) 9877-0022'),
    ('75198694000112', '(11) 1456-7432'),
    ('32102204000120', '(21) 8776-7432'),
    ('13611344000189', '(51) 8676-5522'),
    ('04054146000170', '(51) 9866-5682'),
    ('68354511000145', '(21) 7776-5662'),
    ('48827957000132', '(11) 9566-5892'),
    ('74900301000108', '(11) 9556-7892');

--bolsa_de_sangue

    INSERT INTO bolsa_de_sangue (codigo, cpf, data, cnpj)
VALUES
    (1, '12345678901', '2023-01-10', '21981639000175'),
    (2, '23456789012', '2023-02-15', '68354511000145'),
    (3, '34567890123', '2023-03-20', '48827957000132'),
    (4, '45678901234', '2023-04-25', '74900301000108'),
    (5, '56789012345', '2023-05-30', '85055400000157'),
    (6, '67890123456', '2023-06-05', '13611344000189'),
    (7, '78901234567', '2023-07-10', '04054146000170'),
    (8, '89012345678', '2023-08-15', '32102204000120'),
    (9, '90123456789', '2023-09-20', '75198694000112'),
    (10, '01012345678', '2023-10-25', '70387346000170');

--recebe

INSERT INTO recebe (cnpj_hospital, codigo_bolsa, data, hora)
VALUES
    ('12345678901234', 1, '2023-01-10', '10:00:00'),
    ('23456789012345', 2, '2023-02-15', '11:30:00'),
    ('34567890123456', 3, '2023-03-20', '14:15:00'),
    ('45678901234567', 4, '2023-04-25', '09:45:00'),
    ('56789012345678', 5, '2023-05-30', '16:20:00'),
    ('67890123456789', 6, '2023-06-05', '12:10:00'),
    ('78901234567890', 7, '2023-07-10', '17:30:00'),
    ('89012345678901', 8, '2023-08-15', '10:45:00'),
    ('90123456789012', 9, '2023-09-20', '13:40:00'),
    ('01012345678901', 10, '2023-10-25', '15:50:00');