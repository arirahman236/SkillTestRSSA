SELECT
    dokter_id,
    nama
FROM
    dokter
JOIN pendaftaran ON dokter.id = pendaftaran.dokter_id
WHERE
    tgl_kunjungan NOT BETWEEN '2024-08-24%' AND '2024-08-26%'
GROUP BY
    dokter_id
ORDER BY
    dokter_id ASC