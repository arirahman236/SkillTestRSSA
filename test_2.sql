SELECT
    poliklinik,
    tgl_kunjungan,
    COUNT(tgl_kunjungan) AS jumlah_kunjungan
FROM
    poliklinik
JOIN pendaftaran ON poliklinik.id = pendaftaran.poliklinik_id
WHERE
    dokter_id = '12' AND tgl_kunjungan LIKE '%24%' OR '%26%'
GROUP BY
    poliklinik
DESC

-- or

SELECT
    poliklinik,
    tgl_kunjungan,
    COUNT(tgl_kunjungan) AS jumlah_kunjungan
FROM
    poliklinik
JOIN pendaftaran ON poliklinik.id = pendaftaran.poliklinik_id
WHERE
    dokter_id = '12' AND tgl_kunjungan BETWEEN '2024-08-24' AND '2024-08-26'
GROUP BY
    poliklinik
ORDER BY
    jumlah_kunjungan
DESC