part of 'master_inpeksi_bloc.dart';

sealed class MasterInpeksiStat extends Equatable {
  MasterInpeksiStat(this.masterInpeksi);
  List<MasterInpeksiModel> masterInpeksi;
  @override
  List<Object> get props => [masterInpeksi];
}

final class MasterInpeksiInitial extends MasterInpeksiStat {
  MasterInpeksiInitial(super.masterInpeksi);
}

final class MasterInpeksiLoading extends MasterInpeksiStat {
  MasterInpeksiLoading(super.masterInpeksi);
}

final class MasterInpeksiSuccess extends MasterInpeksiStat {
  MasterInpeksiSuccess(super.masterInpeksi);
}
