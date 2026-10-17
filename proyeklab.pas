program pelacakkeuangan;
uses crt;

var pilihan, kategori, hari: integer;
    uangawal, totalpengeluaran, nominal: real;
    rataharian, prediksi, sisa: real;
    makan, transport, kuota, hiburan, lainnya: real;
    sudahatur: boolean;

begin
    clrscr;
    uangawal:=0;
    totalpengeluaran:=0;
    makan:=0;
    transport:=0;
    kuota:=0;
    hiburan:=0;
    lainnya:=0;
    sudahatur:=false;

    repeat
        writeln('=== PELACAK KEUANGAN MAHASISWA ===');
        writeln('1. Atur uang bulanan');
        writeln('2. Catat pengeluaran');
        writeln('3. Lihat sisa uang dan status');
        writeln('4. Rekap per kategori');
        writeln('5. Keluar');
        write('Pilih menu (1-5): '); readln(pilihan);
        writeln;

        case pilihan of
        1: begin
            write('Uang bulanan (Rp): '); readln(uangawal);
            sudahatur:=true;
            writeln('Uang bulanan berhasil disimpan.');
        end;

        2: begin
            if sudahatur=false then
                writeln('Atur uang bulanan dulu di menu 1.')
            else
            begin
                writeln('Kategori: 1=Makan, 2=Transport, 3=Kuota, 4=Hiburan 5=Lainnya');
                writeln('Masukkan nominal 0 untuk selesai.');

                while true do
                begin
                    write('Nominal (Rp): '); readln(nominal);

                    if nominal=0 then
                        break;

                    if nominal<0 then
                    begin
                        writeln('Nominal tidak boleh negatif!');
                        continue;
                    end;

                    write('Kategori (1-5): '); readln(kategori);
                    case kategori of
                    1: makan:=makan+nominal;
                    2: transport:=transport+nominal;
                    3: kuota:=kuota+nominal;
                    4: hiburan:=hiburan+nominal;
                    5: lainnya:=lainnya+nominal;
                    else
                        begin
                            writeln('Kategori tidak valid!');
                            continue;
                        end;
                    end;

                    totalpengeluaran:=totalpengeluaran+nominal;
                end;
            end;
        end;

        3: begin
            if sudahatur=false then
                writeln('Atur uang bulanan dulu di menu 1.')
            else
            begin
                repeat
                    write('Hari ke berapa sekarang (1-30): '); readln(hari);
                    if (hari<1) or (hari>30) then
                        writeln('Hari harus di antara 1 sampai 30!');
                until (hari>=1) and (hari<=30);

                sisa:=uangawal-totalpengeluaran;
                rataharian:=totalpengeluaran/hari;
                prediksi:=rataharian*30;

                writeln('Sisa uang          : Rp ', sisa:0:0);
                writeln('Rata-rata per hari : Rp ', rataharian:0:0);
                writeln('Prediksi 1 bulan   : Rp ', prediksi:0:0);

                if prediksi<=0.8*uangawal then
                    writeln('Status: AMAN')
                else if prediksi<=uangawal then
                begin
                    writeln('Status: HATI-HATI');
                    if hiburan>0.3*totalpengeluaran then
                        writeln('Saran: kurangi pengeluaran hiburan.');
                end
                else
                    writeln('Status: KRITIS, uang diprediksi tidak cukup!');
            end;
        end;

        4: begin
            writeln('--- Rekap Per Kategori ---');
            writeln('Makan     : Rp ', makan:0:0);
            writeln('Transport : Rp ', transport:0:0);
            writeln('Kuota     : Rp ', kuota:0:0);
            writeln('Hiburan   : Rp ', hiburan:0:0);
            writeln('Lainnya   : Rp ', lainnya:0:0);
            writeln('Total     : Rp ', totalpengeluaran:0:0);
        end;

        5: writeln('Terima kasih, sampai jumpa!');
        else
            writeln('Pilihan tidak valid!');
        end;

        writeln;
    until pilihan=5;
end.
