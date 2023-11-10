import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class MasterInpeksiProviders {
  Future<Map<String, dynamic>> getData() async {
    try {
      final response = await http.get(
        Uri.parse('http://localhost:3001/master-inpeksi'),
      );

      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        print("response ${json['data']}");
        return {
          "error": false,
          "message": "Berhasil get data",
          "data": json['data']
        };
      } else {
        // Jika terjadi kesalahan
        return {
          "error": true,
          "message": "Error response api",
        };
        // print('Terjadi kesalahan: ${response.statusCode}');
      }
    } catch (e) {
      return {
        "error": true,
        "message": "Error Master Inpeksi getData() $e",
      };
    }
  }
}
