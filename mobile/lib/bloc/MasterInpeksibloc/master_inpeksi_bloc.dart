import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile/models/MasterInpeksiModel.dart';
import 'package:mobile/repositories/MaterInpeksiRepositories.dart';

part 'master_inpeksi_event.dart';
part 'master_inpeksi_state.dart';

class MasterInpeksiBloc extends Bloc<MasterInpeksiEvent, MasterInpeksiStat> {
  late MasterInpeksiRepositories masterInpeksiRepositories =
      MasterInpeksiRepositories();
  MasterInpeksiBloc() : super(MasterInpeksiInitial([])) {
    on<MasterInpeksiGetDataEvent>((event, emit) async {
      emit(MasterInpeksiLoading(state.masterInpeksi));
      Map<String, dynamic> data =
          await masterInpeksiRepositories.getMasterInpeksi();
      if (data['error'] != true) {
        emit(MasterInpeksiSuccess(data['data']));
      }
    });
  }
}
