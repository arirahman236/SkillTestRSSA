SELECT
    norm,
    no_pendaftaran,
    tgl_kunjungan,
    tgl_selesai_kunjungan,
    poliklinik.poliklinik AS nama_poliklinik,
    dokter.nama AS nama_dokter,
    penjamin.nama AS nama_penjamin,
    pendaftaran.status
FROM
    pendaftaran
JOIN dokter ON dokter.id = pendaftaran.dokter_id
JOIN poliklinik ON poliklinik.id = pendaftaran.poliklinik_id
JOIN penjamin ON penjamin.id = pendaftaran.penjamin_id
WHERE
    norm = '100004' AND dokter_id = '2' AND pendaftaran.status = 'selesai'