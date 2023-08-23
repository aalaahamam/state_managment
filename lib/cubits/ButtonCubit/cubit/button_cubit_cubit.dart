import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'button_cubit_state.dart';

class ButtonCubitCubit extends Cubit<ButtonCubitState> {
   ButtonCubitCubit() : super(   ButtonCubitInitial());

   int currentValue = 0;

  void toggleRadios(value) {
    currentValue = value;
    emit(ButtonCubitInitial());
  }
}

