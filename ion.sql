--Satır ekleme ve id'leri verme..
DO $$
BEGIN
  FOR i IN 1..727 LOOP
    INSERT INTO unit_types DEFAULT VALUES;
  END LOOP;
END$$;


--İngilizce dili için otomatik tanımlama yapma..

--Önce fieldı siliyoruz.
ALTER TABLE construction_statuses   
DROP COLUMN IF EXISTS label_en;
--Ardından fieldı tekrar ekliyoruz bağlantısını kuruyoruz.
ALTER TABLE construction_statuses   
ADD COLUMN label_en VARCHAR GENERATED ALWAYS AS (
    CASE
        WHEN label_tr = 'İnşaat Halinde' THEN 'Under Construction'
        WHEN label_tr = 'Tamamlandı' THEN 'Completed'
        ELSE NULL
    END
) STORED;

--Diğer fieldları yeniden ekleme..
ALTER TABLE construction_statuses  
DROP COLUMN IF EXISTS is_active,
DROP COLUMN IF EXISTS color_code;

ALTER TABLE construction_statuses  
ADD COLUMN color_code VARCHAR DEFAULT '#FFFFFF',
ADD COLUMN is_active BOOLEAN DEFAULT FALSE;

--Diğer foreign key tablolarının içerisine veriyi joinleme..
UPDATE construction_statuses p 
SET label_tr = j."Proje_Duru"
FROM "join_layer" j
WHERE p.id = j.id;

--Tablo içerisindeki verileri güncelleme..
UPDATE construction_statuses cs 
SET label_tr = CASE
                   WHEN label_tr = 'Devam Ediyor' THEN 'İnşaat Halinde'
                   WHEN label_tr = 'Tamamlandı' THEN 'Tamamlandı'
                   ELSE label_tr
               END;
