// Kelas ProdukDigital
class ProdukDigital {
  String namaProduk;
  double harga;
  String kategori;

  ProdukDigital({
    required this.namaProduk,
    required this.harga,
    required this.kategori,
  });

  // Metode untuk menerapkan diskon
  void terapkanDiskon() {
    if (kategori == 'NetworkAutomation' && harga > 200000) {
      harga *= 0.85; // Diskon 15%
      if (harga < 200000) {
        harga = 200000; // Harga minimum setelah diskon
      }
    }
  }

  @override
  String toString() {
    return 'Produk: $namaProduk, Harga: $harga, Kategori: $kategori';
  }
}

// Kelas abstrak Karyawan
abstract class Karyawan {
  String nama;
  int umur;

  Karyawan(this.nama, this.umur);

  // Metode abstrak bekerja
  void bekerja();
}

// Subclass KaryawanTetap
class KaryawanTetap extends Karyawan {
  KaryawanTetap(String nama, int umur) : super(nama, umur);

  @override
  void bekerja() {
    print('$nama, yang berumur $umur tahun, sedang bekerja sebagai karyawan tetap.');
  }
}

// Subclass KaryawanKontrak
class KaryawanKontrak extends Karyawan {
  KaryawanKontrak(String nama, int umur) : super(nama, umur);

  @override
  void bekerja() {
    print('$nama, yang berumur $umur tahun, sedang bekerja sebagai karyawan kontrak.');
  }
}

void main() {
  // Contoh penggunaan ProdukDigital
  ProdukDigital produk1 = ProdukDigital(
    namaProduk: 'Router',
    
    harga: 250000,
    kategori: 'NetworkAutomation',
  );

  print(produk1); // Sebelum diskon
  produk1.terapkanDiskon();
  print(produk1); // Setelah diskon

  // Contoh penggunaan kelas Karyawan
  KaryawanTetap karyawanTetap = KaryawanTetap('rini', 19);
  karyawanTetap.bekerja();

  KaryawanKontrak karyawanKontrak = KaryawanKontrak('karo', 20);
  karyawanKontrak.bekerja();
}
