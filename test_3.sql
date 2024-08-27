SELECT
    pendaftaran.norm,
    tgl_kunjungan,
    penjamin.nama AS nama_penjamin,
    pasien.nama AS nama_pasien
FROM
    pendaftaran
JOIN pasien ON pasien.norm = pendaftaran.norm
JOIN penjamin ON penjamin.id = pendaftaran.penjamin_id
WHERE
    penjamin_id = '1'