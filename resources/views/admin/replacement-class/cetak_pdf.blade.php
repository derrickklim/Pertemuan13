<div class="table-responsive">
    <h2 class="" style="text-align: center">UNIVERSITAS PELITA HARAPAN</h2>

    <h3 class="" style="text-align: center">Pengajuan Replacement Class</h3>
    <br>

    <p>Hal : Permohonan pengganti waktu kuliah, kuliah tambahan dan perubahan jadwal kelas</p>
    <br>
    
    <p>Kepada Yth.</p>
    <p>Kaprodi Sistem Informasi, Kampus Kota Medan</p>
    <p>Fakultas Ilmu Komputer</p>
    <p>Universitas Pelita Harapan Medan</p>
    <br>

    <p>Dengan ini memberitahukan bahwa :</p>
    @foreach($replacementClass as $item)
    <p>Nama Dosen : {{ $item->nama_lengkap }}</p>
    <p>Mata Kuliah : {{ $item->mata_kuliah }}</p>
    <p>Prodi : Sistem Informasi, Kampus Kota Medan</p>
    <p>Kelas : {{ $item->kelas }}</p>
    <p>Semester : Ganjil</p>
    <p>Tahun Akademik : 2022/2023</p>
    <br>

    <p>Bermaksud untuk : Mengganti jadwal kelas</p>
    <p>Yang semula pada :</p>
    <p style="margin-left: 60px">Tanggal : {{ $item->jadwal_kuliah }}</p>
    <p style="margin-left: 60px">Waktu : {{ $item->jam_kuliah }}</p>

    <p>Menjadi :</p>
    <p style="margin-left: 60px">Tanggal : {{ $item->tanggal_replacement }}</p>
    <p style="margin-left: 60px">Waktu : {{ $item->jam_replacement }}</p>
    <p style="margin-left: 60px">Alasan : {{ $item->alasan }}</p>
    @endforeach
    
    <p>Atas perhatian dan persetujuan Bapak / Ibu kami ucapkan terima kasih.</p>
</div>