select count(kode_mata_kuliah)  as jumlah_mata_kuliah
from dbo.jadwal_mata_kuliah
where dbo.jadwal_mata_kuliah.hari = 'Senin'