select *
from dbo.dpp_mahasiswa
where mahasiswa_id in (
select mahasiswa_id
from dbo.dpp_mahasiswa
where dpp_mahasiswa.status_pembayaran = 'Lunas'
)