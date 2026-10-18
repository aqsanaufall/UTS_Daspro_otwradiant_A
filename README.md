# UTS_Daspro_otwradiant_A

PROGRAM KANTONG AMAN
Program kantong aman adalah program yang dibuat untuk membantu mahasiswa mengatur keuangan bulanannya. Pengguna dapat mengatur uang bulanan, mencatat pengeluaran ke dalam 5 kategori (makan, transport, kuota, hiburan, dan lainnya), lalu melihat sisa uang beserta rata-rata pengeluaran harian. Dari rata-rata itu, program memprediksi total pengeluaran selama satu bulan dan menentukan status keuangan: aman, hati-hati, atau kritis. Selain itu, tersedia rekap pengeluaran per kategori, dan semua input divalidasi agar data yang tercatat tetap benar.

Anggota Kelompok:
1. Maxwell Jesman Simanjutak 261401065, Kom A, Lab 1
2. M. Aqsa Naufal Lubis 261401002, Kom A, Lab 1
3. Rayhan Arbiansyah Tanjung 261401145, Kom A, Lab 2


Fitur dan Penjelasan Singkat
1. Mengatur Uang Bulanan
Pengguna memasukkan uang bulanan, yang disimpan di uangawal.
Variabel sudahatur diubah menjadi true sebagai penanda bahwa uang sudah diatur.
Menu 2 dan 3 mengecek penanda ini. Kalau masih false, program menolak dan meminta pengguna ke menu 1 dulu.
2. Mencatat Pengeluaran
Pengguna memasukkan pengeluaran berulang kali dalam loop while true.
Validasi nominal: angka 0 menghentikan input (break), dan angka negatif ditolak lalu diulang (continue).
Pemilihan kategori: case menambahkan nominal ke variabel kategori yang sesuai (makan, transport, kuota, hiburan, lainnya).
Kalau kategori tidak valid, continue melewati baris totalpengeluaran := totalpengeluaran + nominal, sehingga nominal tidak ikut tercatat.
Setiap input yang valid juga ditambahkan ke totalpengeluaran.
3. Lihat Sisa Uang dan Status
Program meminta hari ke berapa sekarang (1–30), divalidasi dengan repeat ... until, lalu menghitung:
sisa = uangawal − totalpengeluaran
rataharian = totalpengeluaran / hari
prediksi = rataharian × 30, yaitu perkiraan total pengeluaran sebulan jika pola belanja tetap sama.

Status ditentukan dengan if bertingkat dari perbandingan prediksi dengan uang bulanan:
Kondisi	Status
prediksi ≤ 80% uang bulanan	AMAN
prediksi ≤ 100% uang bulanan	HATI-HATI
prediksi > uang bulanan	KRITIS (uang diprediksi tidak cukup)

Rekap Per Kategori
Menampilkan jumlah/akumulasi pengeluaran tiap kategori (makan, transport, kuota, hiburan, dan ;ainnya) beserta total keseluruhan.
