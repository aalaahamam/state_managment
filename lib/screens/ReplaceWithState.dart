import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';



class ReplaceSet extends StatefulWidget {
  @override
  ReplaceSetState createState() => ReplaceSetState();
}

class ReplaceSetState extends State<ReplaceSet> {
    String content = '';
  int selectedButton = 0;



@override
   Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Button Example'),
       ),
     body:Column(children: [

     
      Container(
  padding: EdgeInsets.all(140),
  child: selectedButton == 1
      ? Text(content,style: TextStyle(fontSize: 20))
      : selectedButton == 2
          ? Image.network('https://pub.dev/packages/flutter_bloc/versions/8.1.3/gen-res/gen/logo.webp',width: 100,height: 100,)
          : selectedButton == 3
              ? CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('https://example.com/avatar.jpg'),
                )
              : Text(content,style: TextStyle(fontSize: 20)),
),      


    ElevatedButton(
      onPressed: () {
        setState(() {
          selectedButton = 1;
          content = 'data with set state';
        });
      },
      child: Text('show text',style: TextStyle(fontSize: 30),),
    ),



    ElevatedButton(
      onPressed: () {
        setState(() {
          selectedButton = 2;
          content = 'Image from network';
        });
      },
      child: Text('show image',style: TextStyle(fontSize: 30)),
    ),



    ElevatedButton(
      onPressed: () {
        setState(() {
          selectedButton = 3;
          content = 'Circle';
        });
      },
      child: Text('show circle',style: TextStyle(fontSize: 30)),
    ),



    ElevatedButton(
      onPressed: () {
        setState(() {
          selectedButton = 4;
          content = 'Another type of content';
        });
      },
      child: Text('clear',style: TextStyle(fontSize: 30)),
    ),


  




  ],
  
)

);

   }}










































  
  // void showText() {
  //   setState(() {
  //     content = ' data with set state';
  //   });
  // }

  // void showImage() {
  //   setState(() {
  //     content = '"https://pub.dev/packages/flutter_bloc/versions/8.1.3/gen-res/gen/logo.webp';

  //   });
  // }

  // void clearContent() {
  //   setState(() {
  //     content = '';
  //   });
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('Button Example'),
  //     ),
  //     body: Center(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           ElevatedButton(
  //             onPressed: showText,
  //             child: Text('Show Text'),
  //           ),
  //           ElevatedButton(
  //             onPressed: showImage,
  //             child: Text('Show Image'),
  //           ),
  //           ElevatedButton(
  //             onPressed: clearContent,
  //             child: Text('Clear'),
  //           ),
  //           SizedBox(height: 20),
  //           content.isNotEmpty
  //               ? content.contains('assets/images/')
  //                   ? Image.asset(content)
  //                   : Text(content)
  //               : Container(),
  //         ],
  //       ),
  //     ),
  //   );
  // }




















// class ReplaceWithState extends StatefulWidget {
//   const ReplaceWithState({super.key});


//   @override
//   State<ReplaceWithState> createState() => _ReplaceWithStateState();
// }

// class _ReplaceWithStateState extends State<ReplaceWithState> {
//     int _shape = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(mainAxisSize: MainAxisSize.min, children: [
//           SizedBox(
//             height: 200,
//           ),

 



          //  ElevatedButton(
          //     onPressed: () {
          //       setState(() {
          //       Text("data with cubit ",style: TextStyle(
          //       fontSize: 20
          //     ),);
          //       });
          //     },
          //     child: Text("show text" ,style: TextStyle(
          //       fontSize: 22
          //     ),)),


          //  ElevatedButton(
          //     onPressed: () {
          //       setState(() {
          //       Text("data with cubit ",style: TextStyle(
          //       fontSize: 20
          //     ),);
          //       });
          //     },

          //     child: Text("show text" ,style: TextStyle(
          //       fontSize: 22
          //     ),)),

          //  ElevatedButton(
          //     onPressed: () {
          //       setState(() {
          //       Text("data with cubit ",style: TextStyle(
          //       fontSize: 20
          //     ),);
          //       });
          //     },
          //     child: Text("show text" ,style: TextStyle(
          //       fontSize: 22
          //     ),)),

              
          //  ElevatedButton(
          //     onPressed: () {
          //       setState(() {
          //       Text("data with cubit ",style: TextStyle(
          //       fontSize: 20
          //     ),);
          //       });
          //     },
          //     child: Text("show text" ,style: TextStyle(
          //       fontSize: 22
          //     ),)),





      // ElevatedButton(
      //           onPressed: () {
      //             _counter++;

      //             (() {});

      //             print("  Our ITI Counter is : ${_counter}");
      //           },
      //           child: Text("+")),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text("$_counter"),
      //       ),
      //       ElevatedButton(
      //           onPressed: () {
      //             setState(() {
      //               _counter--;
      //             });

      //             print("  Our ITI Counter is : ${_counter}");
      //           },
      //           child: Text("_"))
      //     ],
      //   ),