import 'package:mobile/models/MasterInpeksiModel.dart';
import 'package:mobile/providers/MasterInpeksiProviders.dart';

class MasterInpeksiRepositories {
  MasterInpeksiProviders masterInpeksiProviders = MasterInpeksiProviders();
  Future getMasterInpeksi() async {
    try {
      Map<String, dynamic> data = await masterInpeksiProviders.getData();
      if (data['error'] == true) {
        return data;
      }

      List<MasterInpeksiModel> masterInpeksi = [];
      for (Map<String, dynamic> i in data['data']) {
        masterInpeksi.add(MasterInpeksiModel.fromJson(i));
      }
      return {
        "error": false,
        "message": "Data success",
        "data": masterInpeksi,
      };
    } catch (e) {
      return {
        "error": true,
        "message": "Error Provider Masterinpeksi() ${e.toString()}"
      };
    }
  }
}
