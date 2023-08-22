import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget>
 {
    bool text = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      
        
          Center(
        child: TextFormField(
          obscureText: text,
          decoration: InputDecoration(
            labelText: 'Password',labelStyle: TextStyle(fontSize: 30),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  text = !text;
                });
              },
              child: Icon(
                text ? Icons.visibility : Icons.visibility_off,
              ),
            ),
          ),
        ),
          )
        ]
          ),
      ));
  }
}
  
