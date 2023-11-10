part of 'master_inpeksi_bloc.dart';

sealed class MasterInpeksiEvent extends Equatable {
  const MasterInpeksiEvent();

  @override
  List<Object> get props => [];
}

class MasterInpeksiGetDataEvent extends MasterInpeksiEvent {}
