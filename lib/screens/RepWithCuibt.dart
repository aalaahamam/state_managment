import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managment/cubits/Replacecubit/replace_cubit_cubit.dart';
import 'package:state_managment/cubits/Replacecubit/replace_cubit_cubit.dart';
import 'package:state_managment/cubits/Replacecubit/replace_cubit_cubit.dart';

class ReplaceWithCuibt extends StatelessWidget {
  const ReplaceWithCuibt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
            height: 200,
          ),
          ///// blocbuilder
      
          BlocBuilder<ReplaceCubit, ReplaceCubitState>(
            builder: (context, state) {
      
      
                 if(state is ShowText){
              return Text("data with cubit ",style: TextStyle(
                fontSize: 20
              ),);
      
                 }else if (state is ShowImage){
                            return  SizedBox(
            height: 200,
            width: 100,
            child: Image.network(
                "https://pub.dev/packages/flutter_bloc/versions/8.1.3/gen-res/gen/logo.webp"),
          );
                 }else if (state is ShowCircle){
                  return Container(
            height: 200,
            width: 200,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.yellow),
          );
      
                 }else {
                  return Text(" initial ",style: TextStyle(
                fontSize: 20
              ),);
                 }
      
      
      
      
            },
          ),
      
        
      
         
      
          SizedBox(
            height: 100,
          ),
          ElevatedButton(
              onPressed: () {
                context.read<ReplaceCubit>().showtext();
              },
              child: Text("show text" ,style: TextStyle(
                fontSize: 22
              ),)),
          ElevatedButton(
              onPressed: () {
                context.read<ReplaceCubit>().Showimage();
              },
              child: Text("show image" ,style: TextStyle(
                fontSize: 20
              ),)),
          ElevatedButton(
              onPressed: () {
                context.read<ReplaceCubit>().Showcircle();
              },
              child: Text("show circle" ,style: TextStyle(
                fontSize: 20
              ),)),
          ElevatedButton(
              onPressed: () {
                context.read<ReplaceCubit>().ReplaceCubitInitia();
              },
              child: Text("show initial " ,style: TextStyle(
                fontSize: 20
              ),)),
        ]),
      ),
    );
  }
}
