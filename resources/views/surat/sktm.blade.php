<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SKTM</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            font-size: 12px;
            margin: 0;
            padding: 0;
        }

        .header {
            display: flex;
            align-items: center;
            justify-content: center;
            border-bottom: 5px double black;
            box-shadow: 0px 8px 0px black;
            padding-bottom: 15px;
            text-align: center;
            position: relative;
        }

        .header .logo {
            width: 100px;
            height: auto;
            position: absolute;
            left: 10px;
        }

        .header .text {
            flex-grow: 1;
            text-align: center;
        }

        .header p {
            font-size: 18px;
            margin: 5px 0;
        }

        .detail {
            text-align: center;
            font-size: 16px;
            margin-top: 20px;
        }

        .detail span {
            font-weight: bolder;
            border-bottom: 2px solid black;
            padding-bottom: 0;
            display: inline-block;
            margin-bottom: 0px;
        }

        .detail p {
            margin: 0 0;
        }

        .content {
            margin-top: 10px;
            line-height: 1.6;
            text-align: justify;
            font-size: 16px;
        }

        .content p {
            margin-bottom: 16px;
        }

        .content dl {
            margin: 5px;
        }

        .content dt {
            display: inline-block;
            min-width: 180px;
        }

        .content dd {
            display: inline-block;
            margin: 0;
        }

        .footer {
            float: right;
            text-align: left;
            margin-top: 20px;
            font-size: 16px;
            width: fit-content;
        }

        .footer p {
            margin: 2px 0;
        }

        .footer .stamp-signature {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            margin-top: 10px;
            position: relative;
        }

        .footer .stamp-signature img.stamp {
            width: 240px;
            height: auto;
            margin-top: -40px;
            margin-left: -40px;
            margin-bottom: -40px;
        }

        .footer .stamp-signature img.signature {
            position: absolute;
            transform: translateX(-50%);
            width: 50px;
            height: auto;
            margin-top: -20px;
            margin-left: -100px;
            margin-bottom: -40px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <div class="header">
        <img src="/public/images/Lambang_Kota_Jambi.png" alt="Logo" class="logo">
        <div class="text">
            <p>PEMERINTAH KOTA JAMBI</p>
            <p>KECAMATAN KOTA BARU</p>
            <p><strong>KELURAHAN KENALI ASAM BAWAH</strong></p>
            <p>Jl. Marsekal Suraya Darma, Kota Jambi, Jambi, Indonesia</p>
        </div>
    </div>
    <div class="detail">
        <span>{{ Str::upper($dataSurat->jenis_surat) }}</span>
        <p>Nomor : SKTM/ {{ date('Y') }}</p>
    </div>
    <div class="content">
        <p>Yang bertanda tangan di bawah ini, Lura Kenali Asam Bawah menerangkan dengan sesungguhnya bahwa:</p>
        <dl>
            <dt>Nama</dt>
            <dd>: {{ $dataSurat->nama_warga }}</dd>
        </dl>
        <dl>
            <dt>NIK</dt>
            <dd>: {{ $dataSurat->nik }}</dd>
        </dl>
        <dl>
            <dt>Jenis Kelamin</dt>
            <dd>: {{ $dataSurat->warga->jenis_kelamin }}</dd>
        </dl>
        <dl>
            <dt>Tempat Tanggal Lahir</dt>
            <dd>: {{ $dataSurat->warga->tempat_lahir }}, {{ \Carbon\Carbon::parse($dataSurat->warga->tanggal_lahir)->format('d-m-Y') }}</dd>
        </dl>
        <dl>
            <dt>Pekerjaan</dt>
            <dd>: {{ $dataSurat->warga->pekerjaan }}</dd>
        </dl>
        <dl>
            <dt>Agama</dt>
            <dd>: {{ $dataSurat->warga->agama }}</dd>
        </dl>
        <dl>
            <dt>Status Perkawinan</dt>
            <dd>: {{ $dataSurat->warga->status_kawin }}</dd>
        </dl>
        <p>Bahwa nama yang tercantum di atas adalah benar-benar berdomisili di Kelurahan Kenali Asam Bawah, Kecamatan Alam Barajo. Sepanjang pengamatan kami dan sesuai data yang ada dalam catatan kependudukan, orang tersebut di atas benar tergolong dalam keluarga prasejahtera (Keluarga Berpenghasilan Rendah).</p>
        <p>Demikian surat keterangan ini kami buat dengan sebenarnya untuk digunakan seperlunya.</p>
    </div>
    <div class="footer">
        <p>Kenali Asam Bawah, _____________</p>
        <p>a.n. Lurah Kenali Asam Bawah,</p>
        <p>Sekretaris Kelurahan Kenali Asam</p>
        <p>Bawah Kota Jambi,</p>

        <div class="stamp-signature">
            <img src="/public/images/Picture2.png" alt="Stempel" class="stamp">
            <img src="/public/images/Picture3.png" alt="Stempel" class="signature">
        </div>

        <p>ADMIRUS, SE</p>
        <p>NIP: 19660925 199904 1 001</p>
    </div>
</body>
</html>
