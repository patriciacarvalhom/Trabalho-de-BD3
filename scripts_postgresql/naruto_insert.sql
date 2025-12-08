-- Inserção de dados

INSERT INTO Cla (id_cla, nome_cla) VALUES
('C1', 'Uchiha'),
('C2', 'Hyuga'),
('C3', 'Senju'),
('C4', 'Nara'),
('C5', 'Akimichi'),
('C6', 'Yamanaka'),
('C7', 'Inuzuka'),
('C8', 'Aburame'),
('C9', 'Sarutobi'),
('C10', 'Senju')
ON CONFLICT (id_cla) DO NOTHING;

INSERT INTO Time (id_time, nome_time) VALUES
('T001', 'Time Kakashi'),
('T002', 'Time Asuma'),
('T003', 'Time Kurenai'),
('T004', 'Time Gai'),
('T005', 'Time Minato'),
('T006', 'Time Gaara'),
('T007', 'Time Temari'),
('T008', 'Time Kankuro'),
('T009', 'Time Baki'),
('T010', 'Time da Areia Elite'),
('T011', 'Time Mei Terumi'),
('T012', 'Time Chojuro'),
('T013', 'Time Zabuza'),
('T014', 'Time Espadachins da Névoa'),
('T015', 'Time da Névoa Elite')
ON CONFLICT (id_time) DO NOTHING;

INSERT INTO Vila(id_vila, nome_vila) VALUES
('001', 'Vila da Folha'),
('002', 'Vila da Areia'),
('003', 'Vila da Névoa')
ON CONFLICT (id_vila) DO NOTHING;

INSERT INTO Missao (id_missao, descricao, ranking) VALUES
  ('M001','Proteger o Daimyo em viagem oficial','S'),
  ('M002','Neutralizar organização criminosa internacional','S'),
  ('M003','Capturar ninja renegado de alto nível','S'),
  ('M004','Resgatar reféns em território inimigo','S'),
  ('M005','Eliminar ameaça classe S nas fronteiras','S'),
  ('M006','Destruir base secreta de mercenários','S'),
  ('M007','Escoltar jinchuuriki sob ataque','S'),
  ('M008','Infiltrar-se em vila hostil e coletar informações críticas','S'),
  ('M009','Conter invasão em larga escala','S'),
  ('M010','Investigar desaparecimento de equipe ANBU','S'),

  -- Missões rank A
  ('M011','Capturar bandido classe A nas montanhas','A'),
  ('M012','Proteger caravana de comerciantes internacionais','A'),
  ('M013','Destruir laboratório ilegal de armas ninjas','A'),
  ('M014','Escoltar pesquisador importante até a Vila da Folha','A'),
  ('M015','Interceptar mensageiro inimigo com informações sigilosas','A'),

  -- Missões rank B
  ('M016','Investigar sabotagem em depósitos de suprimentos','B'),
  ('M017','Patrulhar estrada principal entre vilas aliadas','B'),
  ('M018','Capturar grupo de ladrões de pergaminhos','B'),
  ('M019','Proteger engenheiros reconstruindo ponte estratégica','B'),
  ('M020','Resgatar viajantes desaparecidos em floresta densa','B'),

  -- Missões rank C
  ('M021','Escoltar mercadorias pela estrada rural','C'),
  ('M022','Ajudar agricultores durante a colheita','C'),
  ('M023','Buscar ervas medicinais em área distante','C'),
  ('M024','Acompanhar professor em excursão escolar','C'),
  ('M025','Proteger pequeno templo em vila vizinha','C'),

  -- Missões rank D
  ('M026','Entregar documentos simples entre prédios da vila','D'),
  ('M027','Ajudar a limpar praça após festival','D'),
  ('M028','Levar mantimentos ao posto de guarda','D'),
  ('M029','Acompanhar criança até a escola da vila','D'),
  ('M030','Recolher materiais no armazém comunitário','D')
ON CONFLICT (id_missao) DO NOTHING;

INSERT INTO Ninja (id_ninja, nome_ninja, idade, ranking, tipo, id_vila, id_cla) VALUES
    -- Vila da Folha (001) - Clãs clássicos da Folha
    ('N001', 'Itachi Uchiha', 21, 'S', 'J', '001', 'C1'),
    ('N002', 'Sasuke Uchiha', 16, 'A', 'C', '001', 'C1'),
    ('N003', 'Shisui Uchiha', 19, 'S', 'J', '001', 'C1'),
    ('N004', 'Fugaku Uchiha', 40, 'A', 'J', '001', 'C1'),

    ('N005', 'Hinata Hyuga', 16, 'A', 'G', '001', 'C2'),
    ('N006', 'Neji Hyuga', 17, 'A', 'J', '001', 'C2'),
    ('N007', 'Hiashi Hyuga', 42, 'S', 'J', '001', 'C2'),

    ('N008', 'Hashirama Senju', 35, 'S', 'J', '001', 'C3'),
    ('N009', 'Tobirama Senju', 34, 'S', 'J', '001', 'C3'),
    ('N010', 'Tsunade Senju', 36, 'S', 'J', '001', 'C3'),

    ('N011', 'Shikamaru Nara', 16, 'A', 'C', '001', 'C4'),
    ('N012', 'Shikaku Nara', 32, 'S', 'J', '001', 'C4'),

    ('N013', 'Choji Akimichi', 16, 'C', 'G', '001', 'C5'),
    ('N014', 'Choza Akimichi', 34, 'C', 'J', '001', 'C5'),

    ('N015', 'Ino Yamanaka', 16, 'B', 'G', '001', 'C6'),
    ('N016', 'Inoichi Yamanaka', 35, 'A', 'J', '001', 'C6'),

    ('N017', 'Kiba Inuzuka', 16, 'B', 'G', '001', 'C7'),
    ('N018', 'Tsume Inuzuka', 33, 'A', 'J', '001', 'C7'),

    ('N019', 'Shino Aburame', 16, 'A', 'C', '001', 'C8'),
    ('N020', 'Shibi Aburame', 35, 'A', 'J', '001', 'C8'),

    ('N021', 'Hiruzen Sarutobi', 68, 'S', 'J', '001', 'C9'),
    ('N022', 'Asuma Sarutobi', 31, 'A', 'J', '001', 'C9'),
    ('N023', 'Konohamaru Sarutobi', 12, 'C', 'G', '001', 'C9'),

    ('N024', 'Nawaki Senju', 12, 'B', 'G', '001', 'C10'),
    ('N025', 'Arata Senju', 20, 'B', 'C', '001', 'C10'),

    -- Vila da Areia (002) - usando os mesmos 10 clãs já cadastrados
    ('N026', 'Gaara', 16, 'S', 'J', '002', 'C3'),
    ('N027', 'Temari', 17, 'A', 'J', '002', 'C4'),
    ('N028', 'Kankuro', 17, 'A', 'J', '002', 'C5'),
    ('N029', 'Baki', 35, 'A', 'J', '002', 'C4'),
    ('N030', 'Yashamaru', 30, 'B', 'C', '002', 'C6'),
    ('N031', 'Maki', 18, 'B', 'G', '002', 'C6'),
    ('N032', 'Shira', 20, 'A', 'C', '002', 'C5'),
    ('N033', 'Suna Shinobi A', 19, 'C', 'G', '002', 'C7'),
    ('N034', 'Suna Shinobi B', 21, 'C', 'C', '002', 'C8'),
    ('N035', 'Suna Médico', 23, 'B', 'G', '002', 'C8'),

    ('N036', 'Mei Terumi', 30, 'S', 'J', '003', 'C2'),
    ('N037', 'Zabuza Momochi', 26, 'A', 'J', '003', 'C1'),
    ('N038', 'Haku', 15, 'B', 'G', '003', 'C1'),
    ('N039', 'Chojuro', 20, 'A', 'C', '003', 'C4'),
    ('N040', 'Ao', 28, 'A', 'J', '003', 'C6'),
    ('N041', 'Suigetsu Hozuki', 18, 'B', 'C', '003', 'C3'),
    ('N042', 'Mangetsu Hozuki', 20, 'A', 'J', '003', 'C3'),
    ('N043', 'Kisame Hoshigaki', 32, 'S', 'J', '003', 'C7'),
    ('N050', 'Kakashi Hatake', 32, 'S', 'J', '001', 'C3'),          -- Líder do Time Kakashi
    ('N051', 'Asuma Sarutobi', 31, 'A', 'J', '001', 'C9'),          -- Líder do Time Asuma
    ('N052', 'Kurenai Yuhi', 30, 'A', 'J', '001', 'C6'),            -- Líder do Time Kurenai
    ('N053', 'Might Gai', 32, 'S', 'J', '001', 'C5'),               -- Líder do Time Gai
    ('N054', 'Minato Namikaze', 35, 'S', 'J', '001', 'C3');         -- Líder do Time Minato
    ('N055', 'Gaara Sabaku', 20, 'S', 'J', '002', 'C3'),            -- Time Gaara
    ('N056', 'Temari Sabaku', 19, 'A', 'J', '002', 'C4'),           -- Time Temari
    ('N057', 'Kankuro Sabaku', 19, 'A', 'J', '002', 'C5'),          -- Time Kankuro
    ('N058', 'Baki Sabaku', 40, 'A', 'J', '002', 'C4'),             -- Time Baki
    ('N059', 'Capitão da Areia Elite', 33, 'S', 'J', '002', 'C8');  -- Time da Areia Elite
    ('N060', 'Mei Terumi', 30, 'S', 'J', '003', 'C2'),              -- Time Mei Terumi
    ('N061', 'Chojuro Hozuki', 22, 'A', 'J', '003', 'C3'),          -- Time Chojuro
    ('N062', 'Zabuza Momochi', 28, 'A', 'J', '003', 'C1'),          -- Time Zabuza
    ('N063', 'Líder dos Espadachins', 35, 'S', 'J', '003', 'C7'),   -- Time Espadachins
    ('N064', 'Capitão da Névoa Elite', 34, 'S', 'J', '003', 'C6')   -- Time da Névoa Elite
ON CONFLICT (id_ninja) DO NOTHING;

INSERT INTO Time_Missao (id_missao, id_time) VALUES
    -- T001 - mais missÃµes e mais S
    ('M001','T001'),
    ('M002','T001'),
    ('M011','T001'),
    ('M016','T001'),
    ('M017','T001'),
    ('M021','T001'),
    ('M026','T001'),

    -- T002
    ('M003','T002'),
    ('M004','T002'),
    ('M012','T002'),
    ('M018','T002'),
    ('M022','T002'),
    ('M027','T002'),

    -- T003
    ('M005','T003'),
    ('M006','T003'),
    ('M013','T003'),
    ('M019','T003'),
    ('M023','T003'),
    ('M028','T003'),

    -- T004
    ('M007','T004'),
    ('M014','T004'),
    ('M016','T004'),
    ('M020','T004'),
    ('M024','T004'),
    ('M026','T004'),
    ('M029','T004'),

    -- T005
    ('M008','T005'),
    ('M015','T005'),
    ('M017','T005'),
    ('M021','T005'),
    ('M025','T005'),
    ('M030','T005'),

    -- T006
    ('M009','T006'),
    ('M011','T006'),
    ('M018','T006'),
    ('M022','T006'),
    ('M026','T006'),

    -- T007
    ('M010','T007'),
    ('M012','T007'),
    ('M019','T007'),
    ('M023','T007'),
    ('M027','T007'),

    -- T008
    ('M001','T008'),
    ('M013','T008'),
    ('M020','T008'),
    ('M021','T008'),
    ('M028','T008'),

    -- T009
    ('M002','T009'),
    ('M014','T009'),
    ('M016','T009'),
    ('M022','T009'),
    ('M029','T009'),

    -- T010
    ('M003','T010'),
    ('M015','T010'),
    ('M017','T010'),
    ('M023','T010'),
    ('M030','T010'),

    -- T011
    ('M004','T011'),
    ('M011','T011'),
    ('M018','T011'),
    ('M024','T011'),
    ('M027','T011'),

    -- T012
    ('M005','T012'),
    ('M012','T012'),
    ('M019','T012'),
    ('M025','T012'),
    ('M026','T012'),

    -- T013
    ('M006','T013'),
    ('M013','T013'),
    ('M020','T013'),
    ('M021','T013'),
    ('M027','T013'),

    -- T014
    ('M007','T014'),
    ('M014','T014'),
    ('M017','T014'),
    ('M022','T014'),
    ('M028','T014'),

    -- T015
    ('M008','T015'),
    ('M015','T015'),
    ('M018','T015'),
    ('M023','T015'),
    ('M029','T015')
ON CONFLICT (id_missao, id_time) DO NOTHING;

INSERT INTO Ninja_Time (id_ninja, id_time) VALUES
    -- Vila da Folha (001) -> Times T001 a T005

    -- T001 - Time Kakashi
    ('N001', 'T001'),  -- Itachi Uchiha (S)
    ('N002', 'T001'),  -- Sasuke Uchiha (A)
    ('N011', 'T001'),  -- Shikamaru Nara (A)
    ('N013', 'T001'),  -- Choji Akimichi (C)
    ('N015', 'T001'),  -- Ino Yamanaka (B)

    -- T002 - Time Asuma
    ('N003', 'T002'),  -- Shisui Uchiha (S)
    ('N004', 'T002'),  -- Fugaku Uchiha (A)
    ('N012', 'T002'),  -- Shikaku Nara (S)
    ('N014', 'T002'),  -- Choza Akimichi (C)
    ('N017', 'T002'),  -- Kiba Inuzuka (B)

    -- T003 - Time Kurenai
    ('N005', 'T003'),  -- Hinata Hyuga (A)
    ('N006', 'T003'),  -- Neji Hyuga (A)
    ('N007', 'T003'),  -- Hiashi Hyuga (S)
    ('N023', 'T003'),  -- Konohamaru Sarutobi (C)
    ('N024', 'T003'),  -- Nawaki Senju (B)

    -- T004 - Time Gai
    ('N008', 'T004'),  -- Hashirama Senju (S)
    ('N009', 'T004'),  -- Tobirama Senju (S)
    ('N018', 'T004'),  -- Tsume Inuzuka (A)
    ('N020', 'T004'),  -- Shibi Aburame (A)
    ('N025', 'T004'),  -- Arata Senju (B)

    -- T005 - Time Minato
    ('N010', 'T005'),  -- Tsunade Senju (S)
    ('N016', 'T005'),  -- Inoichi Yamanaka (A)
    ('N019', 'T005'),  -- Shino Aburame (A)
    ('N021', 'T005'),  -- Hiruzen Sarutobi (S)
    ('N022', 'T005'),  -- Asuma Sarutobi (A)

    -- Vila da Areia (002) -> Times T006 a T010

    -- T006 - Time Gaara
    ('N026', 'T006'),  -- Gaara (S)
    ('N027', 'T006'),  -- Temari (A)

    -- T007 - Time Temari
    ('N028', 'T007'),  -- Kankuro (A)
    ('N029', 'T007'),  -- Baki (A)

    -- T008 - Time Kankuro
    ('N030', 'T008'),  -- Yashamaru (B)
    ('N032', 'T008'),  -- Shira (A)

    -- T009 - Time Baki
    ('N031', 'T009'),  -- Maki (B)
    ('N033', 'T009'),  -- Suna Shinobi A (C)

    -- T010 - Time da Areia Elite
    ('N034', 'T010'),  -- Suna Shinobi B (C)
    ('N035', 'T010'),  -- Suna Médico (B)

    -- Vila da Névoa (003) -> Times T011 a T015

    -- T011 - Time Mei Terumi
    ('N036', 'T011'),  -- Mei Terumi (S)
    ('N039', 'T011'),  -- Chojuro (A)

    -- T012 - Time Chojuro
    ('N037', 'T012'),  -- Zabuza Momochi (A)
    ('N038', 'T012'),  -- Haku (B)

    -- T013 - Time Zabuza
    ('N040', 'T013'),  -- Ao (A)
    ('N041', 'T013'),  -- Suigetsu Hozuki (B)

    -- T014 - Time zabuza
    ('N042', 'T014'),  -- Mangetsu Hozuki (A)

    -- T015 - Time haku
    ('N043', 'T015')   -- Kisame Hoshigaki (S)
ON CONFLICT (id_ninja, id_time) DO NOTHING;

INSERT INTO Sensei (id_ninja, id_time) VALUES
    -- Vila da Folha (001)
    ('N050', 'T001'),  -- Kakashi Hatake      -> Time Kakashi
    ('N051', 'T002'),  -- Asuma Sarutobi      -> Time Asuma
    ('N052', 'T003'),  -- Kurenai Yuhi        -> Time Kurenai
    ('N053', 'T004'),  -- Might Gai           -> Time Gai
    ('N054', 'T005'),  -- Minato Namikaze     -> Time Minato

    -- Vila da Areia (002)
    ('N055', 'T006'),  -- Gaara Sabaku              -> Time Gaara
    ('N056', 'T007'),  -- Temari Sabaku             -> Time Temari
    ('N057', 'T008'),  -- Kankuro Sabaku            -> Time Kankuro
    ('N058', 'T009'),  -- Baki Sabaku               -> Time Baki
    ('N059', 'T010'),  -- Capitão da Areia Elite    -> Time da Areia Elite

    -- Vila da Névoa (003)
    ('N060', 'T011'),  -- Mei Terumi                -> Time Mei Terumi
    ('N061', 'T012'),  -- Chojuro Hozuki            -> Time Chojuro
    ('N062', 'T013'),  -- Zabuza Momochi            -> Time Zabuza
    ('N063', 'T014'),  -- Líder dos Espadachins     -> Time Espadachins da Névoa
    ('N064', 'T015')   -- Capitão da Névoa Elite    -> Time da Névoa Elite
ON CONFLICT (id_sensei) DO NOTHING;
