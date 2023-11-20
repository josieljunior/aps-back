TRUNCATE TABLE point RESTART IDENTITY CASCADE;

INSERT INTO point (name, address, hours, lat, lng, waste_type) VALUES 
('Ponto de Coleta 1', 'Rua São Paulo, 100', 'Seg-Sex: 9:00 - 17:00', -23.550520, -46.633308, 'Plástico'),
('Ponto de Coleta 2', 'Av. Paulista, 200', 'Seg-Sex: 9:00 - 18:00', -23.563210, -46.654154, 'Metal'),
('Ponto de Coleta 3', 'Rua Augusta, 300', 'Seg-Sex: 8:00 - 16:00', -23.547171, -46.663546, 'Papel'),
('Ponto de Coleta 4', 'Av. Brigadeiro Faria Lima, 400', 'Seg-Sex: 10:00 - 19:00', -23.567620, -46.689667, 'Vidro'),
('Ponto de Coleta 5', 'Rua Oscar Freire, 500', 'Seg-Sex: 9:00 - 17:00', -23.562210, -46.667085, 'Eletrônicos'),
('Ponto de Coleta 6', 'Rua Consolação, 600', 'Seg-Sex: 8:00 - 16:00', -23.558770, -46.660191, 'Orgânico'),
('Ponto de Coleta 7', 'Av. São João, 700', 'Seg-Sex: 10:00 - 19:00', -23.545612, -46.637535, 'Têxtil'),
('Ponto de Coleta 8', 'Rua Teodoro Sampaio, 800', 'Seg-Sex: 9:00 - 17:00', -23.558703, -46.680882, 'Baterias'),
('Ponto de Coleta 9', 'Rua dos Pinheiros, 900', 'Seg-Sex: 8:00 - 16:00', -23.561735, -46.677849, 'Óleo de Cozinha'),
('Ponto de Coleta 10', 'Rua Mourato Coelho, 1000', 'Seg-Sex: 10:00 - 19:00', -23.561496, -46.684290, 'Construção Civil');
