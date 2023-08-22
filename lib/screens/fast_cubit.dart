
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:state_managment/cubits/Chips/cubit/chips_cubit_cubit.dart';

class ChipsCubit extends StatelessWidget {
  final List<String> options = [
    'قيد التنفيذ',
    'الملغيه',
    'المكتملة',
    'تحت المراجعة',
    'تمت',
  ];


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChipsCubitCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Fast Filter'),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              BlocBuilder<ChipsCubitCubit, int>(
                builder: (context, tag) {
                  return ChipsChoice.single(
                    value: tag,
                    onChanged: (val) => context.read<ChipsCubitCubit>().setTag(val),
                    choiceItems: C2Choice.listFrom(
                      source: options,
                      value: (i, v) => i,
                      label: (i, v) => v,
                    ),
                    choiceActiveStyle: const C2ChoiceStyle(
                      color: Colors.white,
                      borderColor: Colors.red,
                      backgroundColor: Colors.red,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    choiceStyle: const C2ChoiceStyle(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}










// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
// import 'package:state_managment/cubits/Chips/cubit/chips_cubit_cubit.dart';

// // class TagCubit extends Cubit<int> {
// //   TagCubit() : super(1);

// //   void setTag(int tag) {
// //     emit(tag);
// //   }
// // }

// class ChipsCubit extends StatelessWidget {

//  ChipsCubit ({super.key});

//   final List<String> options = [
//     'قيد التنفيذ',
//     'الملغيه',
//     'المكتملة',
//     'تحت المراجعة',
//     'تمت',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Fast Filter'),
//         ),
//         body: Padding(
//           padding: EdgeInsets.all(10),
//           child: Column(
//             children: [
//               BlocBuilder<ChipsCubitCubit,ChipsCubitState >(
//                 builder: (context, tag) {
//                   return ChipsChoice.single(
//                     value: tag,
//                     onChanged: (val) => context.read<ChipsCubitCubit>().showchips(),
//                     choiceItems: C2Choice.listFrom(
//                       source: options,
//                       value: (i, v) => i,
//                       label: (i, v) => v,
//                     ),
//                     choiceActiveStyle: const C2ChoiceStyle(
//                       color: Colors.white,
//                       borderColor: Colors.red,
//                       backgroundColor: Colors.red,
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(5),
//                       ),
//                     ),
//                     choiceStyle: const C2ChoiceStyle(
//                       color: Colors.black,
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(5),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       );
    
//   }
// }


//   // return BlocProvider(
//     //   create: (context) => ChipsCubitCubit(),