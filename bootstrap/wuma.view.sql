CREATE VIEW ZI_MAPPING_XU AS
SELECT
    PINYIN.ZI,
    PINYIN.SHENGMU,
    PINYIN.YUNMU,
    PINYIN.DIAO,
    CHAIZI.XU,
    KEY_MAPPING.MAPPING
FROM PINYIN 
INNER JOIN CHAIZI ON PINYIN.ZI = CHAIZI.ZI
INNER JOIN KEY_MAPPING ON KEY_MAPPING.ZI = CHAIZI.CHAI
LEFT JOIN BIHUA ON PINYIN.ZI = BIHUA.ZI
ORDER BY CHAIZI.XU, BIHUA.BIHUA;