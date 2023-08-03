--Sultangazi_parsel verisine kat_mul_kod fieldı açıp daha sonra ilçe sınırı içerisinde yer alan sultangazi_parsel verilerini seçmemize ve bu seçilen satırlardaki verilerin yeni açılan fieldına 1 yazdırmamıza yarar.
ALTER TABLE sultangazi_parsel
ADD COLUMN sinir_ic integer;

UPDATE sultangazi_parsel
SET sinir_ic = 1
WHERE ST_Within(coordinates, (SELECT geometry FROM sultangazi WHERE city_name = 'Sultangazi'));

-- Sultangazi_parsel içerisine mah_ada_pa isimli alanı ekler ve istenilen sütundaki verileri birleştirerek yazdırır.
ALTER TABLE sultangazi_parsel
ADD COLUMN mah_ada_pa text;

UPDATE sultangazi_parsel
SET mah_ada_pa = tapumah || '/' || adano || '/' || parselno;









-- Yeni bir tablo oluşturun (Eğer henüz yoksa)
CREATE TABLE sultangazi_selected_yapi AS
SELECT *
FROM sultangazi_yapi
WHERE ST_Within(coordinates, (SELECT geometry FROM sultangazi WHERE city_name = 'Sultangazi'));

-- İlgili tabloya verileri kopyalayın
INSERT INTO sultangazi_selected_yapi
SELECT *
FROM sultangazi_yapi
WHERE ST_Within(coordinates, (SELECT geometry FROM sultangazi WHERE city_name = 'Sultangazi'));
