CREATE TABLE jurusan (
    id BIGINT PRIMARY KEY,
    nama_jurusan VARCHAR(255)
);

CREATE TABLE Mahasiswa (
    id BIGINT PRIMARY KEY,
    NPM VARCHAR(50),
    nama VARCHAR(255),
    tanggal_lahir DATE,
    alamat VARCHAR(255),
    no_hp INT,
    jurusan_id BIGINT,
    dosen_wali_id BIGINT,
    FOREIGN KEY (jurusan_id) REFERENCES jurusan(id),
    FOREIGN KEY (dosen_wali_id) REFERENCES Dosen_Wali(id)
);

CREATE TABLE Dosen_Wali (
    id BIGINT PRIMARY KEY,
    NIP VARCHAR(50),
    nama VARCHAR(255),
    tanggal_lahir DATE,
    alamat VARCHAR(255),
    no_hp INT
);