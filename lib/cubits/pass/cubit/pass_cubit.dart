import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'pass_state.dart';

class PassCubit extends Cubit<bool> {
  PassCubit() : super(true);


  void showpass(){
    emit(!state);
  }

}
