import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'replace_cubit_state.dart';

class ReplaceCubit extends Cubit<ReplaceCubitState> {
  ReplaceCubit() : super(ReplaceCubitInitial());


  void showtext(){
    emit(ShowText());
  }
  void Showimage(){
    emit(ShowImage());
  }
  void Showcircle(){
    emit(ShowCircle());
  }
  void ReplaceCubitInitia(){
    emit(ReplaceCubitInitial());
  }

}
