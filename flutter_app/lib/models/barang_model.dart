class BarangModel{
  String id;
  String nama;
  String stok;
  String status;
  String url_gambar;

  //membuat konstruktor supaya saat di load di parsing kembali
    BarangModel({
      this.id,
      this.nama,
      this.status,
      this.stok,
      this.url_gambar
  });

    //mengubah format data dari json ke bentuk model
  factory BarangModel.fromJson(Map<String, dynamic> json) => BarangModel(
    id: json['id'],
    nama: json['nama'],
    status: json['status'],
    stok: json['stok'],
    url_gambar: json['url_gambar']
  );
}