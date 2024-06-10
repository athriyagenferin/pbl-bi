DROP DATABASE IF EXISTS pbl_bi;
CREATE DATABASE pbl_bi;

use pbl_bi;

CREATE TABLE DimDate (
    DateID INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE,
    Year INT,
    Month INT,
    Day INT
)

SELECT * FROM DimDate;

CREATE TABLE DimReport (
    ReportID INT AUTO_INCREMENT PRIMARY KEY,
    judul_laporan VARCHAR(255)
)

SELECT * FROM DimReport;

CREATE TABLE DimStatus (
    StatusID INT AUTO_INCREMENT PRIMARY KEY,
    Status VARCHAR(100)
)

SELECT * FROM DimStatus;

CREATE TABLE DimWarga (
    WargaID INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(255),
    gender ENUM('L', 'P'),
    status_pernikahan ENUM('Kawin', 'Belum Kawin', 'Cerai Hidup', 'Cerai Mati'),
    agama ENUM('Islam', 'Kristen', 'Katolik', 'Hindu', 'Budha', 'Konghucu'),
    no_rt INT,
    age INT,
    golongan_darah ENUM('A', 'B', 'AB', 'O', 'Belum Tahu'),
    pekerjaan VARCHAR(100),
    pendidikan VARCHAR(100),
    pendapatan ENUM('1', '2', '3', '4', '5', '6')
)

SELECT * FROM DimWarga;

CREATE TABLE FactReport (
    DateID INT,
    ReportID INT,
    WargaID INT,
    StatusID INT,
    FOREIGN KEY (DateID) REFERENCES DimDate(DateID),
    FOREIGN KEY (ReportID) REFERENCES DimReport(ReportID),
    FOREIGN KEY (WargaID) REFERENCES DimWarga(WargaID),
    FOREIGN KEY (StatusID) REFERENCES DimStatus(StatusID)
)

SELECT * FROM FactReport;

-- USE simwarga;
-- SELECT citizen_data.name, citizen_data.gender, citizen_data.maritial_status, 
--     citizen_data.religion, family_data.rt, health_data.age, health_data.blood_type,
--     wealth_data.job, wealth_data.education, wealth_data.income,
--     reports.judul_laporan, reports.status, reports.tanggal
-- FROM citizen_data
-- JOIN family_data ON citizen_data.family_id = family_data.family_id
-- JOIN health_data ON citizen_data.health_id = health_data.health_id
-- JOIN wealth_data ON citizen_data.wealth_id = wealth_data.wealth_id
-- JOIN reports ON citizen_data.nik = reports.nik;

