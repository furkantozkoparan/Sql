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

--"kahramanmaras_pilot_alan_sinirlari" tablosu içinde polygon olarak bulunan "gid = 4" değerine sahip polygon haldeki objenin sınırları içerisinde yer alan "pazarcik_parsel" tablosundaki parselleri seçmek için kullanılır.
SELECT parsel.*
FROM pazarcik_parsel AS parsel
JOIN kahramanmaras_pilot_alan_sinirlari AS sinirlar ON ST_Within(parsel.geom, sinirlar.geom)
WHERE sinirlar.gid = 4
order by mah_ada_pa asc;

--Bu sorgu pazarcik_parsel tablosunu Kahramanmaraş_Pazarcık_ProjeAlani_Tapu tablosuyla mah_ada_pa ile field_1 değerleri üzerinden LEFT JOIN işlemi gerçekleştirerek birleştirir. Bu sayede pazarcik_parsel tablosundaki 
--verilerin tamamı korunurken, eşleşen mah_ada_pa ve field_1 değerlerine sahip veriler de birleştirilir. Eşleşme olmadığı durumda, pazarcik_parsel tablosundaki veriler korunurken, Kahramanmaraş_Pazarcık_ProjeAlani_Tapu 
--tablosundaki ilgili alanlar boş (NULL) olarak doldurulur. Yapılan bu birleştirme işlemi ise yeni_tablo ya aktarılır.
CREATE TABLE yeni_tablo AS
SELECT p.*, t.*
FROM "pazarcik_parsel" p
LEFT JOIN "Kahramanmaraş_Pazarcık_ProjeAlani_Tapu" t ON p.mah_ada_pa = t.field_1;

--Bu sorgu, yeni_tablo adlı tabloya middle_point adında bir geometri sütunu ekler.
ALTER TABLE yeni_tablo
ADD COLUMN middle_point geometry(Point, 4326);

--Bu sorgu target_table_name adlı hedef tabloda bulunan geometriyi (geom) kullanarak geometrinin tam ortasına işaretleme yapar ve sonucu middle_point adlı yeni bir sütuna kaydeder. Bu sütun, geometrinin merkez noktasını 
--içerecektir.
UPDATE target_table_name
SET middle_point = ST_Centroid(geom);
