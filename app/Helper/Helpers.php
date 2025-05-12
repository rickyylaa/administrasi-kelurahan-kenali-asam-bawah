<?php

if (!function_exists('pekerjaan')) {
    function pekerjaan($pekerjaan)
    {
        $mapping = [
            "tidak_bekerja" => "Belum / Tidak Bekerja",
            "irt" => "Mengurus Rumah Tangga",
            "pelajar" => "Pelajar / Mahasiswa",
            "pensiunan" => "Pensiunan",
            "pns" => "Pegawai Negeri Sipil (PNS)",
            "tni" => "Tentara Nasional Indonesia (TNI)",
            "polri" => "Kepolisian RI (POLRI)",
            "perdagangan" => "Perdagangan",
            "petani" => "Petani / Pekebun",
            "peternak" => "Peternak",
            "nelayan" => "Nelayan",
            "industri" => "Industri",
            "konstruksi" => "Konstruksi",
            "transportasi" => "Transportasi",
            "karyawan_swasta" => "Karyawan Swasta",
            "bumn" => "Karyawan BUMN",
            "honorer" => "Karyawan Honorer",
            "harian_lepas" => "Buruh Harian Lepas",
            "buruh_tani" => "Buruh Tani / Perkebunan",
            "buruh_nelayana" => "Buruh Nelayan / Perikanan",
            "pembantu_rumah_tangga" => "Pembantu Rumah Tangga",
            "tukang_cukur" => "Tukang Cukur",
            "tukang_listrik" => "Tukang Listrik",
            "tukang_batu" => "Tukang Batu",
            "tukang_kayu" => "Tukang Kayu",
            "tukang_sol_sepatu" => "Tukang Sol Sepatu",
            "tukang_las" => "Tukang Las / Pandai Besi",
            "tukang_jahit" => "Tukang Jahit",
            "tukang_gigi" => "Tukang Gigi",
            "penata_rias" => "Penata Rias",
            "penata_busana" => "Penata Busana",
            "penata_rambut" => "Penata Rambut",
            "mekanik" => "Mekanik",
            "seniman" => "Seniman",
            "tabib" => "Tabib",
            "paraji" => "Paraji",
            "perancang_busana" => "Perancang Busana",
            "penterjemah" => "Penterjemah",
            "imam_masjid" => "Imam Masjid",
            "pendeta" => "Pendeta",
            "pastor" => "Pastor",
            "wartawan" => "Wartawan",
            "ustad" => "Ustad / Mubaligh",
            "juru_masak" => "Juru Masak",
            "promotor_acara" => "Promotor Acara",
            "dpr_ri" => "Anggota DPR RI",
            "dpd" => "Anggota DPD",
            "bpk" => "Anggota BPK",
            "presiden" => "Presiden",
            "wakil_presiden" => "Wakil Presiden",
            "makamah_konstitusi" => "Anggota Makamah Konstitusi",
            "kementrian" => "Anggota Kabinet / Kementrian",
            "dubes" => "Duta Besar",
            "gubernur" => "Gubernur",
            "wakil_gubernur" => "Wakil Gubernur",
            "bupati" => "Bupati",
            "wakil_bupati" => "Wakil Bupati",
            "walikota" => "Walikota",
            "wakil_walikota" => "Wakil Walikota",
            "dprd_prop" => "Anggota DPRD Prop",
            "dprd_kota" => "Anggota DPRD Kab/Kota",
            "dosen" => "Dosen",
            "guru" => "Guru",
            "pilot" => "Pilot",
            "pengacara" => "Pengacara",
            "notaris" => "Notaris",
            "arsitek" => "Arsitek",
            "akuntan" => "Akuntan",
            "konsultan" => "Konsultan",
            "dokter" => "Dokter",
            "bidan" => "Bidan",
            "perawat" => "Perawat",
            "apoteker" => "Apoteker",
            "psikiater" => "Psikiater / Psikolog",
            "penyiar_televisi" => "Penyiar Televisi",
            "penyiar_radio" => "Penyiar Radio",
            "pelaut" => "Pelaut",
            "peneliti" => "Peneliti",
            "sopir" => "Sopir",
            "pialang" => "Pialang",
            "paranormal" => "Paranormal",
            "pedagang" => "Pedagang",
            "perangkat_desa" => "Perangkat Desa",
            "kepala_desa" => "Kepala Desa",
            "biarawati" => "Biarawati",
            "wiraswasta" => "Wiraswasta",
        ];

        return $mapping[$pekerjaan] ?? $pekerjaan;
    }

    if (!function_exists('status_kawin'))
    {
        function status_kawin($status_kawin){
            $mapping = [
                "belum_kawin" => "Belum Kawin",
                "kawin_tercatat" => "Kawin Tercatat",
                "kawin_belum_tercatat" => "Kawin Belum Tercatat",
            ];

            return $mapping[$status_kawin] ?? $status_kawin;
        }
    }

    if (!function_exists('status_keluarga'))
    {
        function status_keluarga($status_keluarga) {
            $mapping = [
                "kepala_keluarga" => "Kepala Keluarga",
                "istri" => "Istri",
                "anak" => "Anak",
                "menantu" => "Menantu",
                "cucu" => "Cucu",
                "keponakan" => "Keponakan",
                "orang_tua" => "Orang Tua",
                "mertua" => "Mertua"
            ];

            return $mapping[$status_keluarga] ?? $status_keluarga;
        }
    }

    if (!function_exists('agama'))
    {
        function agama($agama) {
            $mapping = [
                "islam" => "Islam",
                "kristen" => "Kristen (Protestan)",
                "hindu" => "Hindu",
                "budha" => "Budha",
                "katolik" => "Katolik"
            ];

            return $mapping[$agama] ?? $agama;
        }
    }

}
