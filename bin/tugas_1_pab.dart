class Produk {
  String namaProduk; 
  double harga, diskon; 
  int jumlah;

  Produk(this.namaProduk, this.harga, this.jumlah, this.diskon);

  void hitungTotalHargaTanpaDiskon() {
    double totalHargaTanpaDiskon = harga*jumlah;
    print("Total Harga Tanpa Diskon: Rp $totalHargaTanpaDiskon");
  }

  void hitungTotalHargaSetelahDiskon() {
    double totalHargaSetelahDiskon = harga*jumlah*(1-diskon*0.01);
    print("Total Harga Setelah Diskon: Rp $totalHargaSetelahDiskon");
  }  

  void tampilkanInformasiProduk() {
    print("Nama Produk: $namaProduk");
    print("Harga Satuan: Rp$harga");
    print("Jumlah: $jumlah");
    print("Diskon: $diskon%"); 
    print("");
    hitungTotalHargaTanpaDiskon();
    hitungTotalHargaSetelahDiskon();
  }  
}

void main() {
  Produk kamera = Produk("Kamera", 1500000, 2, 10);
  kamera.tampilkanInformasiProduk();
}