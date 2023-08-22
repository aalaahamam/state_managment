import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';

class FlutterChipsTags extends StatefulWidget {
  @override
  _FlutterChipsState createState() => _FlutterChipsState();
  // const FlutterChipsTags({super.key});
}

class _FlutterChipsState extends State<FlutterChipsTags> {
  int tag = 1;
  List<String> tags = [];
  List<String> options = [
    'قيد التنفيذ',
    'الملغيه',
    'المكتملة',
    'تحت المراجعة',
    'تمت',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fast Filter'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ChipsChoice.single(
                value: tag,
                onChanged: (val) => 
                setState(() => tag = val),
                choiceItems: C2Choice.listFrom(
                    source: options, value: (i, v) => i, label: (i, v) => v),
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
                    // backgroundColor: Colors.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    )))
          ],
        ),
      ),
    );
  }
}
