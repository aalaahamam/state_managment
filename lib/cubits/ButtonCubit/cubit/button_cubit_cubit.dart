import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'button_cubit_state.dart';

class ButtonCubitCubit extends Cubit<ButtonCubitState> {
   ButtonCubitCubit() : super(unseclectedButton());

  void selectButton(){

    emit(seclectedButton());
  }
  
  void unselectButton(){

    emit(unseclectedButton());
  }


  


}

