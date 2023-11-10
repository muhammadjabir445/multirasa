// To parse this JSON data, do
//
//     final masterInpeksiModel = masterInpeksiModelFromJson(jsonString);

import 'dart:convert';

List<MasterInpeksiModel> masterInpeksiModelFromJson(String str) =>
    List<MasterInpeksiModel>.from(
        json.decode(str).map((x) => MasterInpeksiModel.fromJson(x)));

String masterInpeksiModelToJson(List<MasterInpeksiModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MasterInpeksiModel {
  int? id;
  String? name;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<MasterInpeksi>? masterInpeksis;

  MasterInpeksiModel({
    this.id,
    this.name,
    this.createdAt,
    this.updatedAt,
    this.masterInpeksis,
  });

  factory MasterInpeksiModel.fromJson(Map<String, dynamic> json) =>
      MasterInpeksiModel(
        id: json["id"],
        name: json["name"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        masterInpeksis: json["master_inpeksis"] == null
            ? []
            : List<MasterInpeksi>.from(
                json["master_inpeksis"]!.map((x) => MasterInpeksi.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "master_inpeksis": masterInpeksis == null
            ? []
            : List<dynamic>.from(masterInpeksis!.map((x) => x.toJson())),
      };
}

class MasterInpeksi {
  int? id;
  String? namaInpeksi;
  int? kategoriId;
  int? nilai;
  DateTime? createdAt;
  DateTime? updatedAt;

  MasterInpeksi({
    this.id,
    this.namaInpeksi,
    this.kategoriId,
    this.nilai,
    this.createdAt,
    this.updatedAt,
  });

  factory MasterInpeksi.fromJson(Map<String, dynamic> json) => MasterInpeksi(
        id: json["id"],
        namaInpeksi: json["nama_inpeksi"],
        kategoriId: json["kategori_id"],
        nilai: json["nilai"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama_inpeksi": namaInpeksi,
        "kategori_id": kategoriId,
        "nilai": nilai,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };
}
