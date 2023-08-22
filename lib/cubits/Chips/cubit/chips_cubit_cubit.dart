import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'chips_cubit_state.dart';

class ChipsCubitCubit extends Cubit<int> {
  ChipsCubitCubit() : super(1);

  void setTag(int tag) {
    emit(tag);
  }
}

