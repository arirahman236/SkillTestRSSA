SELECT
    poliklinik,
    COUNT(tgl_kunjungan) AS jumlah_kunjungan
FROM
    poliklinik
JOIN pendaftaran ON poliklinik.id = pendaftaran.poliklinik_id
WHERE
    tgl_kunjungan LIKE '%23%' OR '%24%'
GROUP BY
    poliklinik
DESC