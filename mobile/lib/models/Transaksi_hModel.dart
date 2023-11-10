// To parse this JSON data, do
//
//     final transaksiHModel = transaksiHModelFromJson(jsonString);

import 'dart:convert';

List<TransaksiHModel> transaksiHModelFromJson(String str) =>
    List<TransaksiHModel>.from(
        json.decode(str).map((x) => TransaksiHModel.fromJson(x)));

String transaksiHModelToJson(List<TransaksiHModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TransaksiHModel {
  int? id;
  String? noInpeksi;
  String? tokoInpeksi;
  DateTime? tanggalInpeksi;
  String? dibuatOleh;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<TransaksiD>? transaksiD;

  TransaksiHModel({
    this.id,
    this.noInpeksi,
    this.tokoInpeksi,
    this.tanggalInpeksi,
    this.dibuatOleh,
    this.createdAt,
    this.updatedAt,
    this.transaksiD,
  });

  factory TransaksiHModel.fromJson(Map<String, dynamic> json) =>
      TransaksiHModel(
        id: json["id"],
        noInpeksi: json["no_inpeksi"],
        tokoInpeksi: json["toko_inpeksi"],
        tanggalInpeksi: json["tanggal_inpeksi"] == null
            ? null
            : DateTime.parse(json["tanggal_inpeksi"]),
        dibuatOleh: json["dibuat_oleh"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        transaksiD: json["Transaksi_d"] == null
            ? []
            : List<TransaksiD>.from(
                json["Transaksi_d"]!.map((x) => TransaksiD.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "no_inpeksi": noInpeksi,
        "toko_inpeksi": tokoInpeksi,
        "tanggal_inpeksi": tanggalInpeksi?.toIso8601String(),
        "dibuat_oleh": dibuatOleh,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "Transaksi_d": transaksiD == null
            ? []
            : List<dynamic>.from(transaksiD!.map((x) => x.toJson())),
      };
}

class TransaksiD {
  int? trxTransaksiHid;
  int? trxIdInpeksi;
  int? trxPoint;
  String? trxKeteranganInpeksi;
  String? dibuatOleh;
  DateTime? createdAt;
  DateTime? updatedAt;

  TransaksiD({
    this.trxTransaksiHid,
    this.trxIdInpeksi,
    this.trxPoint,
    this.trxKeteranganInpeksi,
    this.dibuatOleh,
    this.createdAt,
    this.updatedAt,
  });

  factory TransaksiD.fromJson(Map<String, dynamic> json) => TransaksiD(
        trxTransaksiHid: json["trx_transaksi_hid"],
        trxIdInpeksi: json["trx_id_inpeksi"],
        trxPoint: json["trx_point"],
        trxKeteranganInpeksi: json["trx_keterangan_inpeksi"],
        dibuatOleh: json["dibuat_oleh"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "trx_transaksi_hid": trxTransaksiHid,
        "trx_id_inpeksi": trxIdInpeksi,
        "trx_point": trxPoint,
        "trx_keterangan_inpeksi": trxKeteranganInpeksi,
        "dibuat_oleh": dibuatOleh,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };
}
