import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managment/cubits/ButtonCubit/cubit/button_cubit_cubit.dart';
import 'package:state_managment/cubits/Chips/cubit/chips_cubit_cubit.dart';
import 'package:state_managment/cubits/Replacecubit/replace_cubit_cubit.dart';
import 'package:state_managment/screens/RepWithCuibt.dart';
import 'package:state_managment/screens/ReplaceWithState.dart';
import 'package:state_managment/screens/button.dart';
import 'package:state_managment/screens/fast_cubit.dart';
import 'package:state_managment/screens/fast_filter_setstate.dart';
import 'package:state_managment/screens/passWithSet.dart';
import 'package:state_managment/screens/passcubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(

      ///replace
      providers: [
        BlocProvider<ReplaceCubit>(
          create: (BuildContext context) => ReplaceCubit(),
        ),
      ],

      /////button
      child:MultiBlocProvider(
        providers: [
           BlocProvider<ButtonCubitCubit>(
          create: (BuildContext context) => ButtonCubitCubit(),)
        ],
        

        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          home: RadioScreen(),
        ),
      ),
    );
  }
}
