
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managment/cubits/ButtonCubit/cubit/button_cubit_cubit.dart';


class RadioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ButtonCubitCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Radio Buttons'),
        ),
        body: BlocBuilder<ButtonCubitCubit, ButtonCubitState>(
          builder: (context, state) {
            return ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Radio $index'),
                  leading: Radio(
                    value: index,
                    groupValue: state == seclectedButton ? index : null,
                    onChanged: (value) {
                      if (state == seclectedButton) {
                        context.read<ButtonCubitCubit>().unselectButton();
                      } else {
                        context.read<ButtonCubitCubit>().selectButton();
                      }
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}













