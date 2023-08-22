import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managment/cubits/pass/cubit/pass_cubit.dart';

class passWcubit extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
          create: (context) => PassCubit(),
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: BlocBuilder<PassCubit, bool>(
                    builder: (context, state) {
                      return TextFormField(
                        obscureText: state,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(fontSize: 30),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              context.read<PassCubit>().showpass();
                            },
                            child: Icon(
                              state ? Icons.visibility : Icons.visibility_off,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
      }
  }
