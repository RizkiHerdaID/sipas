-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 26 Nov 2015 pada 06.33
-- Versi Server: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
  `nim` varchar(12) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jk` varchar(9) DEFAULT NULL,
  `ttl` date DEFAULT NULL,
  `prodi` varchar(40) DEFAULT NULL,
  `hp` varchar(12) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`nim`, `nama`, `jk`, `ttl`, `prodi`, `hp`, `image`) VALUES
('120210103021', 'Yuli Arahmat', 'Laki-Laki', '1993-04-18', 'Pendidikan Biologi', '085745330004', ''),
('122410101035', 'Rizki Herdatullah', 'Laki-Laki', '1994-07-09', 'Sistem Informasi', '08980192366', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE IF NOT EXISTS `buku` (
  `kode_buku` varchar(5) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `pengarang` varchar(50) DEFAULT NULL,
  `klasifikasi` varchar(25) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `status_pinjam` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`kode_buku`, `judul`, `pengarang`, `klasifikasi`, `image`, `status_pinjam`) VALUES
('A-01', 'MELAKSANAKAN QIYAMULLAIL', 'ABD. AZIZ S. B.', 'HUKUM', '', 1),
('A-02', 'ISLAM MASA KINI', 'ABD. A''LA ALMAUDUDI', 'ENSIKLOPEDIA ISLAM', '', 1),
('A-04', 'MENUJU SHALAT KHUSU''', 'ALI ATH-THONTOWI', 'HUKUM', '', 1),
('A-07', 'ULAMA DAN TIRAN', 'HAMID ALGAR', 'HUKUM', '', 1),
('A-09', 'SEHARI BERSAMA SYETAN', 'ALI ATH-THONTOWI', 'UMUM', '', 1),
('A-1', 'HIMPUNAN SHALAT-SHALAT SUNNAT', 'AHMAD SUNARTO', 'FIKIH', '', 1),
('A-10', 'NASIHAT UNTUK ORANG-ORANG SYI''AH', 'SYAIKH ABUBAKAR J. AL-JAZAIRI', 'UMUM', '', 0),
('A-100', 'IMPIAN YAHUDI DAN KEHANCURANNYA MENURUT AL-QUR''AN', 'ASY-SYAIKH AS''AD BAYUDH AT TAMINI', 'UMUM', '', 1),
('A-102', 'MEMBONGKAR MITOS HAM', 'KISDI', 'SOSIAL', '', 1),
('A-105', 'CITRA SEBUAH IDENTITAS WANITA DALAM PERJALANAN SEJARAH', 'SAID ABD. SEIF AL-HATIMY', 'UMUM', '', 1),
('A-106', 'BAHAYA SIKAP WAS-WAS', 'IBNU QOYYIM AL JAUZI', 'HUKUM', '', 1),
('A-108', 'MENJADI PRAJURIT MUSLIM', 'DR. M. IBRAHIM NASHR', 'DAKWAH', '', 0),
('A-109', 'KARAKTER MUSLIM', 'DR. UMAR SULAIMAN ', 'MOTIVASI', '', 0),
('A-11', 'TANYA JAWAB TENTANG EMAS PEMAKAIAN DAN PERDAGANGAN', 'M. AL UTHAIMIN', 'HUKUM', '', 0),
('A-110', 'ISLAM BANGKITLAH', 'ABD. AL-BAGHDADI', 'ENSIKLOPEDIA ISLAM', '', 0),
('A-113', 'ISLAM MENJAWAB', 'ABDULLAH WASI'' AN', 'ENSIKLOPEDIA ISLAM', '', 0),
('A-114', 'JURNALISME ISLAMI TANGGUNG JAWAB MORAL WARTAWAN MUSLIM', 'HERRY MUHAMMAD', 'UMUM', '', 0),
('A-115', 'BERCINTA DAN BERSAUDARA KARENA ALLAH', 'UST. HUSNI ADHAM J.', 'MOTIVASI', '', 0),
('A-118', 'BERJUANG DI JALAN ALLAH', 'DR. M. IBRAHIM NASHR, DKK', 'DAKWAH', '', 0),
('A-119', 'MASA DEPAN ISLAM', 'DR. ABDULLAH AZZAM', 'DAKWAH', '', 0),
('A-12', 'TANYA JAWAB TENTANG EMAS PEMAKAIAN DAN PERDAGANGAN', 'M. AL UTHAIMIN', 'HUKUM', '', 0),
('A-121', 'DOKTER-DOKTER, BAGAIMANA AKHLAKMU', 'DR. ZUHAIR AHMAD ASSI BA''I', 'UMUM', '', 0),
('A-122', 'SOEHARTO 1998', 'ADIAN HUSAINI', 'SHIRAH', '', 0),
('A-124', 'ETIKA BERAMAR MA''RUF NAHI MUNKAR', 'IBNU TAIMIYAH', 'DAKWAH', '', 0),
('A-125', 'MATI MULIA ALA UZHAMA', 'YUSUF ALI BUDAIWI', 'UMUM', '', 0),
('A-127', 'JURU DAKWAH MUSLIMAH', 'MUHAMMAD HASAN B.', 'DAKWAH', '', 0),
('A-128', 'BABI HALAL BABI HARAM', 'ABDURRAHMAN AL BAGHDADI', 'HUKUM', '', 0),
('A-13', 'HUBUNGAN SHALAT DENGAN KECEMASAN', 'DRS. ARIF WIBISONO', 'FIKIH', '', 0),
('A-130', 'MUHAMMAD DI MATA CENDEKIAWAN', 'ASY-SYAIKH KHOLIL YASIEN', 'SHIRAH', '', 1),
('A-131', 'ZIONIS SEBUAH GERAKAN KEAGAMAAN DAN POLITIK', 'R. GARAUDY ', 'POLITIK & SOSIAL', '', 0),
('A-132', 'ALLAH DALAM YAHUDI MASEHI ISLAM', 'AHMAD DEEDAT', 'ENSKLOPEDI', '', 0),
('A-133', 'AQIDAH SHOHIHAH VS AQIDAH BATHILAH ', 'ABDUL AZIZ BIN ABDULLAH BIN BAAZ', 'UMUM', '', 0),
('A-134', 'AQIDAH EMPAT LIMA MAZHAB', 'DR. M. BIN ABD. AL-KHUMAIS', 'HUKUM', '', 0),
('A-135', 'TANGGUNG JAWAB UMAT ISLAM DI HADAPAN UMAT DUNIA ', 'SAYYID ABUL A''LA MAUDUDI', 'UMUM', '', 0),
('A-137', 'ISLAM SYARIAT ABADI', 'DR. ABDULLAH NASHIH ULWAN', 'UMUM', '', 0),
('A-139', 'KENAPA KITA TIDAK BERDAMAI SAJA DENGAN YAHUDI', 'MUHSIN ANBATAANI', 'UMUM', '', 0),
('A-14', 'HARUSKAH SEORANG MUSLIM MENGIKUTI MAZHAB?', 'MUHAMMAD SULTAN AL MAKSUMI', 'HUKUM', '', 0),
('A-140', 'HIDUP DAMAI DALAM ISLAM ', 'SAYYID QUTHB', 'MOTIVASI', '', 0),
('A-141', 'YANG KUALAMI DALAM PERJALANAN', 'DR. MUSTAFA ES SIBA''I', 'MOTIVASI', '', 0),
('A-142', 'HUKUM MURTAD TINJAUAN AL QUR''AN DAN AS SUNNAH', 'DR. YUSUF QARDHAWI', 'HUKUM', '', 0),
('A-143', 'LOGIKA FILSAFAT BERPIKIR', 'PROF. I.R POEDJAWIJATNA', 'UMUM', '', 0),
('A-144', 'MENANGKAP ISYARAT QUR''AN', 'MUSTAFA MAHMUD', 'MOTIVASI', '', 0),
('A-146', 'ULAMA DAN PARTAI POLITIK ', 'MAHRUS IRSYAM', 'POLITIK & SOSIAL', '', 0),
('A-147', 'IDEOLOGI, POLITIK DAN PEMBANGUNAN ', 'DELIAR NOER', 'POLITIK & SOSIAL', '', 0),
('A-148', 'ANALISA WANITA DALAM BIMBINGAN ISLAM', 'DRS. M. THALIB', 'HUKUM', '', 0),
('A-150', 'ISRAEL DAN ISYARAT DALAM KITAB SUCI AL QUR''AN', 'ALI AKBAR', 'ENSKLOPEDI', '', 0),
('A-151', 'WANITA DAN POLITIK PANDANGAN ISLAM', 'HIBBAH RAUF IZZAT', 'POLITIK & SOSIAL', '', 0),
('A-152', 'DASAR-DASAR MEMAHAMI HUKUM ISLAM DI INDONESIA', 'K.N SOFYAN HASAN, SH & WARKUM SUMITRO, SH', 'HUKUM', '', 0),
('A-154', 'PANDANGAN AL GHAZALI TENTANG BAHAYA LIDAH', 'IMMUN EL BLITARY', 'HUKUM', '', 0),
('A-155', 'IBNU QAYYIM BERBICARA TENTANG MANUSIA DAN SEMESTA ', 'ANAS ABDUL HAMID AL QUZ', 'UMUM', '', 0),
('A-158', 'AL GHAZALI TENTANG MARAH DENDAM DAN KASIH SAYANG', 'IMMUN EL BLITARY', 'MOTIVASI', '', 0),
('A-159', 'ISA AL MASIH, MASIH HIDUP ATAUKAH MATI', 'JOESOEF SOU''YB', 'ENSKLOPEDI', '', 0),
('A-16', 'ISLAM SEBAGAI GBHI', 'DR. H. SALEH AL JUFRI', 'ENSIKLOPEDIA ISLAM', '', 0),
('A-160', 'PEMBARATAN DI DUNIA ISLAM', 'ANWAR AL-JUNDY', 'ENSKLOPEDI', '', 0),
('A-161', 'IDENTIFIKASI DALIL-DALIL NAQLI', 'DEPAG', 'HUKUM', '', 0),
('A-162', 'UKHUWAH ISLAMIYAH', 'Drs. IMAM MUNAWWIR', 'DAKWAH', '', 0),
('A-163', 'BAGAIMANA MEMAHAMI QUR''AN', 'ABUL A''LA ALMAUDUDI', 'UMUM', '', 0),
('A-164', 'DASAR-DASAR STRATEGI DAKWAH ISLAM', 'ASMUNI SYUKIR', 'DAKWAH', '', 0),
('A-166', 'SUMBER ILMU HIKMAH SEJATI', 'AHMAD SUNARTO', 'HUKUM', '', 0),
('A-167', 'AL''UBUDIYYAH', 'SYAIKHUL ISLAM IBNU TAIMIYAH', 'HUKUM', '', 0),
('A-168', 'AGAMA VERSUS SAINS MODERN', 'WAHEEDUDDIN KHAN', 'HUKUM', '', 0),
('A-169', 'WASIAT NABI KEPADA ABU DZAR R.A', 'H.SALIM BAHREISY', 'SIRAH', '', 0),
('A-171', 'SOSIOLOGI ISLAM & MASYARAKAT KONTEMPORER', 'ILYAS BA-YUNUS & FARID AHMAD', 'POLITIK & SOSIAL', '', 0),
('A-172', 'JADIKAN MASALAH SEBAGAI SAHABAT', 'Dra.E.I.LANTANG - HARAHAP', 'MOTIVASI', '', 0),
('A-173', 'KESEHATAN MENTAL', 'Dr.ZAKIAH DARADJAT', 'UMUM', '', 0),
('A-174', 'SEJARAH KESUSASTERAAN ARAB', 'YUNUS ALI AL MUH & H.BEY ARIFIN', 'ENSKLOPEDI', '', 0),
('A-175', 'BUKU PINTAR BACA AL QUR''AN', 'AHMAD SUNARTO', 'UMUM', '', 0),
('A-176', 'FALSAFAH PERGERAKAN ISLAM', 'MURTDHA MUTHAHHARI', 'ENSKLOPEDI', '', 0),
('A-177', 'BUTIR-BUTIR MUTIARA BERITA PIKIRAN ILMIAH MEMAHAMI TAUHID DAN TAREKAT ISLAM', 'Dr. MUSTAFA ZAHRI', 'UMUM', '', 0),
('A-179', 'FIKIH SUNNAH 3', 'SAYYID SABIQ', 'HUKUM', '', 0),
('A-18', 'PRINSIP-PRINSIP DASAR KEIMANAN', 'M. BIN SALIH AL- UTSAIMIN', 'TAUHID', '', 0),
('A-180', 'FIKIH SUNAH', 'SAYID SABIQ', 'FIKIH', '', 0),
('A-182', 'PEDOMAN PELAKSANAAN PERPUSTAKAAN', 'SOEJONO TRIMO, M.L.S.', 'UMUM', '', 0),
('A-183', 'KOMUNIKASI PERIKLANAN CETAK', 'DENDI SUDIANA', 'UMUM', '', 0),
('A-184', 'PERGAULAN DI TAMAN KANAK-KANAK', 'RUTH BLECKMANN', 'UMUM', '', 0),
('A-185', 'BERKISAH TENTANG NABI DAN RASUL', 'SARIBI Afn', 'SIRAH', '', 0),
('A-187', 'YAHUDI DALAM INFORMASI DAN ORGANISASI', 'FUAD BIN SAYID', 'UMUM', '', 0),
('A-188', 'ISLAM DAN REKONSTRUKSI JIHAD', 'SUHARSONO', 'DAKWAH', '', 0),
('A-189', 'ISLAM DAN REKONSTRUKSI JIHAD', 'SUHARSONO', 'DAKWAH', '', 0),
('A-190', 'ISLAM DAN REKONSTRUKSI JIHAD', 'SUHARSONO', 'DAKWAH', '', 0),
('A-191', 'SISTEMATIKA PENULISAN FIQIH', 'Prof. Dr. Abd. WAHAB IBRAHIM', 'FIKIH', '', 0),
('A-192', 'SEHAT ITU NIKMAT', 'M. HASAN AIDIT', 'UMUM', '', 0),
('A-193', 'SAKIT MENGUATKAN IMAN', 'Prof. KH. ALI YAFI dkk', 'MOTIVASI', '', 0),
('A-195', 'IBN KHALDUN DALAM PANDANGAN PENULIS BARAT DAN TIMUR', 'Dr. A. SYAFI''I MA''ARIF', 'SIRAH', '', 0),
('A-197', 'PEDOMAN MENCARI SUMBER INFORMASI', 'Drs. PAWIT M. YUSUF', 'UMUM', '', 0),
('A-198', 'MASJID KAMPUS UNTUK UMAT DAN BANGSA', 'MASJID ARH UI', 'DAKWAH', '', 0),
('A-20', 'CODES AND MANNERS OF HAJJ AND ZIARAH', 'ABD. AZIZ BIN ABDULLAH', 'UMUM', '', 0),
('A-200', 'AKUR DALAM BUDAYA', 'Dr. TOETI HERATI', 'SOSIAL', '', 0),
('A-201', 'KEBANGKITAN ISLAM', 'Dr. M. AL-BAHI', 'ENSIKLOPEDIA ISLAM', '', 0),
('A-205', 'SENI BERKISAH MEMANDU ANAK MEMAHAMI AL-QUR''AN ', 'NUNU AHDIAD S.Pd', 'UMUM', '', 0),
('A-206', 'MEMBAHAS KHILAFIYAH', 'UMAR HASYIM', 'HUKUM', '', 0),
('A-207', 'BUKTI-BUKTI KEBOHONGAN ORIENTALIS', 'DR. KOSM ASSAMURAI', 'UMUM', '', 0),
('A-208', 'HUKUM KELUARGA DAN HUKUM WARIS', 'Prof. R. SUBEKTI SH', 'HUKUM', '', 0),
('A-209', 'BUKU PANDUAN MTQM TINGKAT NASIONAL', '', 'UMUM', '', 0),
('A-210', 'IDENTIFIKASI DALIL-DALIL NAQLI', 'DEPAG', 'HUKUM', '', 0),
('A-211', 'KEBANGKITAN ISLAM DALAM PERBINCANGAN PARA PAKAR', 'Dr. YUSUF Q. dkk', 'ENSIKLOPEDIA ISLAM', '', 0),
('A-214', 'AKHLAK ILMU TAUHID', 'DEPAG', 'TAUHID', '', 0),
('A-215', 'ANTARA KEKASIH ALLAH DAN KEKASIH SETAN', 'IBNU TAIMIYAH', 'UMUM', '', 0),
('A-218', 'METODE DAN ETIKA PENGEMBANGAN ILMU PERSPEKTIF SUNAH', 'Dr. YUSUF AL-QARDAWI', 'UMUM', '', 0),
('A-219', 'MANUSIA DALAM DOSA ATAU PAHALA', 'ABDULLAH SANI SH.', 'UMUM', '', 0),
('A-22', 'TIGA LANDASAN UTAMA', 'SYAIKH MUHAMMAD BIN ABD. WAHAB', 'TAUHID', '', 0),
('A-220', 'HABIBIE SOEHARTO DAN ISLAM', 'ADIAN HUSAINI', 'ENSIKLOPEDIA ISLAM', '', 0),
('A-223', 'DIMANA LETAKNYA NEGARA ISLAM', 'A. HASMI', 'ENSIKLOPEDIA ISLAM', '', 0),
('A-227', 'HALAL DAN HARAM DALAM ISLAM', 'M. YUSUF AL- QARDAWI', 'HUKUM', '', 0),
('A-228', 'TERJEMAH BULUHUL MARAM', 'A. HASAN', 'HUKUM', '', 0),
('A-233', 'PERAN PARADIGMA DALAM REVOLUSI SAINS', 'THOMAS S. KHUN', 'ENSIKLOPEDIA ISLAM', '', 0),
('A-234', 'BENCANA DI DUNIA ISLAM', 'DR. MUHAMMAD ''ABD AL-MARSI', 'ENSIKLOPEDIA ISLAM', '', 0),
('A-235', 'MEMBINA KERUKUNAN MUSLIMIN', 'SAYYID MURTADLA AL RIDLAWI', 'DAKWAH', '', 0),
('A-237', 'HUBUNGAN MASYARAKAT', 'DRS. ONONG UCHJANA', 'SOSIAL', '', 0),
('A-238', 'SUDUT PANDANG KEAGUNGAN AL-QUR''AN', 'HASAN AL-BANNA', 'UMUM', '', 0),
('A-239', 'TEORI-TEORI KOMUNIKASI', 'B. AUBREY FISHER', 'UMUM', '', 0),
('A-240', 'MUJAHID DAKWAH', 'K.H. M. ISA A.', 'DAKWAH', '', 0),
('A-241', 'MEMBINA HASRAT BELAJAR DI SEKOLAH', 'KURSINER', 'UMUM', '', 0),
('A-242', 'CENDEKIAWAN MUSLIM DALAM PERSPEKTIF PENDIDIKAN ISLAM', 'DRS. IMAM BAWANI MA', 'ENSIKLOPEDIA ISLAM', '', 0),
('A-243', 'MUSLIM TANPA MASJID', 'KUNTOWIJOYO', ' ENSIKLOPEDIA ISLAM', '', 0),
('A-245', 'MASALAH PERTAHANAN NEGARA', 'SAYIDIMAN S. ', 'SOSIAL', '', 0),
('A-246', 'KHUTBAH JUMATA AKTUAL', 'DRS. KH. EFENDI Z.', 'UMUM', '', 0),
('A-249', 'PERLUKAH MENULIS ULANG SEJARAH ISLAM?', 'M. QUTHB', 'ENSIKLOPEDIA ISLAM', '', 0),
('A-250', 'KEBANGKITAN ISLAM DARI MASA KE MASA', 'DRS. IMAM MUNAWIR', 'ENSIKLOPEDIA ISLAM', '', 0),
('A-252', 'JURNALISME ISLAMI TANGGUNG JAWAB MORAL WARTAWAN MUSLIM', 'HERRY MUHAMMAD', 'UMUM', '', 0),
('A-256', 'SYARAH KITAB AL-TAUHID', 'M. BIN ABD. WAHAB', 'HUKUM', '', 0),
('A-26', 'KELUASAN DAN KELUWESAN SYARIAT ISLAM', 'Dr. YUSUF AL-QARDAWI', 'HUKUM', '', 0),
('A-261', 'METODE MERUSAK AKHLAK DARI BARAT', 'PROF. ABD. RAHMAN H. HABANAKA', 'UMUM', '', 0),
('A-264', 'CARA BERKHUTBAH YANG BAIK', 'Ust. DJA''FAR AMIR', 'DAKWAH', '', 0),
('A-265', 'MESJID PUSAT IBADAT DAN KEBUDAYAAN ISLAM', 'Drs. SIDI GAZALBA', 'ENSIKLOPEDIA ISLAM', '', 0),
('A-269', 'TANGGUNGJAWAB AKADEMIKUS MUSLIM DAN ISLAMISASI ILMU-ILMU SOSIAL', 'Prof. Dr. ISMAIL R. AL-FARUQI', 'SOSIAL', '', 0),
('A-276', 'KEHIDUPAN PARA SAHABAT RASULULLAH SAW', 'MUH. YUSUF AL-KANDAHLAWY', 'SHIRAH', '', 0),
('A-277', 'TERJEMAHAN NAILUL AUTHAR ', 'MUAMMAL HAMIDY', 'TERJEMAHAN', '', 0),
('A-280', 'JALAN MENDAPAT HIDAYAH', 'SAID MUSFAR AL-QAHTHANI', 'DAKWAH', '', 0),
('A-285', 'HAJI UMRAH DAN ZIARAH', 'ABD. AZIZ BIN ABDULLAH BIN BAAZ', 'HUKUM', '', 0),
('A-295', 'TUNTUNAN WUDLU DAN SHALAT MENURUT RASULULLAH', 'DRS. SUKAMTO', 'HUKUM', '', 0),
('A-296', 'DO''A KESELAMATAN DAN JAGA DIRI', 'NAWAWI DJAMID', 'UMUM', '', 0),
('A-298', 'STUDI ISLAM ', 'DRS. MASJFUK ZUHDI', 'ENSIKLOPEDIA ISLAM', '', 0),
('A-308', 'PERGILAH SELAGI MUDA', 'JAKOB OETAMA', 'MOTIVASI', '', 0),
('A-32', 'APAKAH AGAMA HANYA UNTUK MASA LAMPAU?', 'M. ASAD', 'UMUM', '', 0),
('A-323', 'ADAB MENJENGUK DAN MELAYAT', 'IMAM NAWAWI', 'UMUM', '', 0),
('A-326', 'MESKI SUSAH TAK LUPA SEDEKAH', 'ABU AHMAD ABDUL FATAH', 'MOTIVASI', '', 0),
('A-327', 'DOA-DOA PELUNAS HUTANG TOLAK BALA DAN PANJANG UMUR', 'UST. QURAISINA', 'UMUM', '', 0),
('A-37', 'KUMPULAN RISALAH DAKWAH', 'KH. M. HASIM ADNAN dkk', 'DAKWAH', '', 0),
('A-38', 'LAJU ZAMAN MENANTANG DAKWAH', 'KH. Abd. RAHMAN ARROISI', 'DAKWAH', '', 0),
('A-45', 'FIQH DAKWAH FARDIAH', 'DR. ALI ABDUL HALIM MAHMUD', 'HUKUM', '', 0),
('A-47', 'SISTEM KADERISASI RASULULLAH SAW', 'ASY-SYAIKH FAISHAL BIN ALI YAHYA AHMAD', 'DAKWAH', '', 0),
('A-48', 'HIMPUNAN TELAAH AL JIHAD ANTARA HUJJAH DAN PEDANG', 'SAYID QUTB dkk', 'HUKUM', '', 0),
('A-49', 'KHILAFAH FILARDL PEMBAHASAN KONSTEKTUAL', 'A. HASAN FIRHAT', 'DAKWAH', '', 0),
('A-50', 'PANDANGAN ISLAM TENTANG INGKAR SUNNAH', 'ABD. AL-BAGHDADI', 'ENSIKLOPEDIA ISLAM', '', 0),
('A-54', 'ISLAM DIANTARA KAPITALISME DAN KOMUNISME', 'PROF. DR. M. MUTAWALLI S.', 'ENSIKLOPEDIA ISLAM', '', 0),
('A-55', 'WASIAT IMAM AL-GHAZALI', 'IMAM AL-GHAZALI', 'FIKIH', '', 0),
('A-56', '300 DOA DAN DZIKIR PILIHAN', 'TIM GEMMA INSANI', 'MOTIVASI', '', 0),
('A-57', 'TRAGEDI KAUM MUSLIMIN PASCA PERANG TELUK', 'DRS. M. THOLIB', 'SHIRAH', '', 0),
('A-60', 'TERMASUK GOLONGAN APAKAH ANDA?', 'M. ASSADIK', 'UMUM', '', 0),
('A-61', 'KAUM SALAF DAN IMAM', 'ABD. RAHMAN ABDUL KHOLIK', 'SHIRAH', '', 0),
('A-81', 'MENGAPA SAYA KELUAR DARI AHMADIYAH QADIANI', 'A HARIYADI', 'UMUM', '', 0),
('A-88', 'PANDANGAN AHLUSSUNNAH TENTANG NIKAH MUT''AH', 'AL ''ALAMAH MUHAMMAD AL HAMID', 'HUKUM', '', 0),
('A-93', 'ALLAH DALAM KEHIDUPAN MANUSIA', 'MURTADHA MUTHAHHARI', 'UMUM', '', 0),
('A-94', 'HUIKMAH KETULUSAN', 'KH. Abd. RAHMAN ARROISI', 'UMUM', '', 0),
('A-96', 'KEMANA ARAH UMAT KITA AJAK MELANGKAH?', 'HASAN AL-BANNA', 'DAKWAH', '', 0),
('A-98', 'FIKIH UMAR 1', 'DR. RUWAY''I AR-RUHAILY', 'FIKIH', '', 0),
('B-13', 'TAFSIR FI ZHILALIL QUR''AN', 'SAYYID QUTHB', 'TAFSIR', '', 0),
('Colum', 'Column2', 'Column3', 'Column4', '', 0),
('D-52', 'WANITA DAN HARTA', 'KH. ZAINUDDIN MZ', 'HUKUM', '', 0),
('D-54', 'PERGERAKAN ISLAM', 'KALIM SIDDIQUI', 'DAKWAH', '', 0),
('G-001', 'JAGALAH ALLAH, ALLAH MENJAGAMU', 'DR. A''IDH AL-QARNI', 'MOTIVASI', '', 0),
('G-013', 'MISTERI ISRA'' MI''RAJ', 'ABU MAJDI HARAKI', 'ENSIKLOPEDIA ISLAM', '', 0),
('G-047', '15 SEBAB DICABUTNYA BERKAH', 'ABU AL-HAMD ABDUL FADIL', 'UMUM', '', 0),
('G-121', 'RAMALAN TENTANG MUHAMMAD', 'ABDUL HAQ VIDYARTHI DAN Abd. AHAD D.', 'SIRAH', '', 1),
('G-62', 'FIKIH KEDOKTERAN', 'Dr. M. NUAIM YASIN', 'FIKIH', '', 0),
('G-91', 'KELENGKAPAN TARIKH RASULULLAH', 'IMAM IBNU QAYYIM AL-JAUZIYAH', 'HUKUM', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE IF NOT EXISTS `pengembalian` (
  `id_transaksi` varchar(12) DEFAULT NULL,
  `tgl_pengembalian` date DEFAULT NULL,
  `denda` varchar(2) DEFAULT NULL,
  `nominal` double DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pengembalian`
--

INSERT INTO `pengembalian` (`id_transaksi`, `tgl_pengembalian`, `denda`, `nominal`, `id_petugas`) VALUES
('20151029001', '2015-11-02', 'N', 0, NULL),
('20151029001', '2015-11-02', 'N', 0, NULL),
('20151102001', '2015-11-03', 'N', 0, NULL),
('20151102001', '2015-11-03', 'N', 0, NULL),
('20151103001', '2015-11-03', 'N', 0, NULL),
('20151103001', '2015-11-03', 'N', 0, NULL),
('20151103002', '2015-11-09', 'N', 400, NULL),
('20151103002', '2015-11-09', 'N', 400, NULL),
('20151109008', '2015-11-09', '', 0, NULL),
('20151109008', '2015-11-09', '', 0, NULL),
('20151109009', '2015-11-09', 'N', 0, NULL),
('20151109009', '2015-11-09', 'N', 0, NULL),
('20151109011', '2015-11-09', 'Y', 300, NULL),
('20151109011', '2015-11-09', 'Y', 300, NULL),
('20151109012', '2015-11-09', 'N', 0, NULL),
('20151109012', '2015-11-09', 'N', 0, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE IF NOT EXISTS `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_lengkap` varchar(40) NOT NULL,
  `no` varchar(12) NOT NULL,
  `user` varchar(45) DEFAULT NULL,
  `password` text,
  `level` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_lengkap`, `no`, `user`, `password`, `level`) VALUES
(4, 'Administrator', '08980192466', 'admin', '0192023a7bbd73250516f069df18b500', 1),
(5, 'Rizki Herdatullah', '08980192366', 'rizkiherda', '4d68434974827219545bdebe05d8cc89', 2),
(8, 'Yuli Arahmat', '08563593063', 'yuli', 'f2c4416ef8c5a6b48d952286d3b9e79d', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_fakultas`
--

CREATE TABLE IF NOT EXISTS `tb_fakultas` (
  `id_fakultas` varchar(2) NOT NULL,
  `fakultas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_fakultas`
--

INSERT INTO `tb_fakultas` (`id_fakultas`, `fakultas`) VALUES
('08', 'Fakultas Ekonomi'),
('22', 'Fakultas Farmasi'),
('07', 'Fakultas Hukum'),
('09', 'Fakultas Ilmu Sosial dan Politik'),
('20', 'Fakultas Kedokteran'),
('16', 'Fakultas Kedokteran Gigi'),
('02', 'Fakultas Keguruan dan Ilmu Pendidikan'),
('21', 'Fakultas Kesehatan Masyarakat'),
('18', 'Fakultas Matematikan dan IPA'),
('15', 'Fakultas Pertanian'),
('01', 'Fakultas Sastra'),
('19', 'Fakultas Teknik'),
('17', 'Fakultas Teknologi Pertanian'),
('23', 'Program Studi Ilmu Keperawatan'),
('24', 'Program Studi Sistem Informasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_prodi`
--

CREATE TABLE IF NOT EXISTS `tb_prodi` (
  `id_jurusan` varchar(7) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `strata` varchar(2) NOT NULL,
  `id_fakultas` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_prodi`
--

INSERT INTO `tb_prodi` (`id_jurusan`, `prodi`, `strata`, `id_fakultas`) VALUES
('0110101', 'Sastra Inggris', 'S1', '01'),
('0110201', 'Sastra Indonesia', 'S1', '01'),
('0110301', 'Ilmu Sejarah', 'S1', '01'),
('0110401', 'Televisi dan Film', 'S1', '01'),
('0210101', 'Pendidikan Matematika', 'S1', '02'),
('0210102', 'Pendidikan Fisika', 'S1', '02'),
('0210103', 'Pendidikan Biologi', 'S1', '02'),
('0210201', 'Pendidikan Luar Sekolah', 'S1', '02'),
('0210204', 'Pendidikan Guru Sekolah Dasar', 'S1', '02'),
('0210205', 'Pendidikan Guru PAUD', 'S1', '02'),
('0210301', 'Pendidikan Ekonomi', 'S1', '02'),
('0210302', 'Pendidikan Sejarah', 'S1', '02'),
('0210401', 'Pendidikan Bahasa Inggris', 'S1', '02'),
('0210402', 'Pendidikan Bahasa dan Sastra Indonesia', 'S1', '02'),
('0710101', 'Ilmu Hukum', 'S1', '07'),
('0803101', 'Manajemen Perusahaan', 'D3', '08'),
('0803102', 'Keuangan dan Perbankan', 'D3', '08'),
('0803103', 'Sekretari', 'D3', '08'),
('0803104', 'Akutansi', 'D3', '08'),
('0810101', 'Ekonomi Pembangunan', 'S1', '08'),
('0810201', 'Manajemen', 'S1', '08'),
('0810301', 'Akutansi', 'S1', '08'),
('0903101', 'Perpajakan', 'D3', '09'),
('0903102', 'Usaha Perjalanan Wisata', 'D3', '09'),
('0910101', 'Hubungan Internasional', 'S1', '09'),
('0910201', 'Ilmu Administrasi Negara', 'S1', '09'),
('0910202', 'Ilmu Administrasi Bisnis', 'S1', '09'),
('0910301', 'Ilmu Kesejahteraan Sosial', 'S1', '09'),
('0910302', 'Sosiologi', 'S1', '09'),
('1510501', 'Agroteknologi/Agroekoteknologi', 'S1', '15'),
('1510601', 'Agribisnis', 'S1', '15'),
('1610101', 'Pendidikan Dokter Gigi', 'S1', '16'),
('1710101', 'Teknologi Hasil Pertanian', 'S1', '17'),
('1710201', 'Teknik Pertanian', 'S1', '17'),
('1810101', 'Matematika', 'S1', '18'),
('1810201', 'Fisika', 'S1', '18'),
('1810301', 'Kimia', 'S1', '18'),
('1810401', 'Biologi', 'S1', '18'),
('1903101', 'Teknik Mesin', 'D3', '19'),
('1903102', 'Teknik Elektronika', 'D3', '19'),
('1903103', 'Teknik Sipil', 'D3', '19'),
('1910101', 'Teknik Mesin', 'S1', '19'),
('1910201', 'Teknik Elektro', 'S1', '19'),
('1910301', 'Teknik Sipil', 'S1', '19'),
('2010101', 'Pendidikan Dokter', 'S1', '20'),
('2110101', 'Ilmu Kesehatan Masyarakat', 'S1', '21'),
('2210101', 'Ilmu Farmasi', 'S1', '22'),
('2310101', 'Ilmu Keperawatan', 'S1', '23'),
('2410101', 'Sistem Informasi', 'S1', '24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp`
--

CREATE TABLE IF NOT EXISTS `tmp` (
  `kode_buku` varchar(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `pengarang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` varchar(12) DEFAULT NULL,
  `nim` varchar(12) DEFAULT NULL,
  `kode_buku` varchar(5) DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `petugas` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `tb_fakultas`
--
ALTER TABLE `tb_fakultas`
  ADD PRIMARY KEY (`id_fakultas`),
  ADD KEY `fakultas` (`fakultas`);

--
-- Indexes for table `tb_prodi`
--
ALTER TABLE `tb_prodi`
  ADD PRIMARY KEY (`id_jurusan`),
  ADD KEY `id_fakultas` (`id_fakultas`),
  ADD KEY `id_fakultas_2` (`id_fakultas`),
  ADD KEY `strata` (`strata`),
  ADD KEY `jurusan` (`prodi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
