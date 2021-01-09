class Item {
  final String judul;
  final String isi;
  final String oleh;
  final String userid;

  Item({
    this.judul,
    this.isi,
    this.oleh,
    this.userid,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      judul: json['judul'],
      isi: json['isi'],
      oleh: json['oleh'],
      userid: json['userid'],
    );
  }

  Map<String, dynamic> toJson() => {
        'judul': judul,
        'isi': isi,
        'oleh': oleh,
        'userid': userid,
      };
}
