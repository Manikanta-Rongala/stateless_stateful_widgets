import 'package:flutter/material.dart';
import 'package:stateless_stateful_widgets/nextPage.dart';


void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget{
   MyApp({super.key});

   int increment = 0;
   Color buttonColor = Colors.black;

   void changeColor(){
     increment ++;
     if(buttonColor == Colors.black){
       buttonColor == Colors.red;
     }
     else{
       buttonColor == Colors.black;
     }
   }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: const Text("Stateless widget"),
         backgroundColor: Colors.deepPurple,
       ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text("Increment $increment"),
           Center(
             child: IconButton(onPressed: (){
               changeColor();
               print("Increment $increment");
             },
                 color: buttonColor,
                  icon: const Icon(Icons.add)),
           ),
         ],
       ),
     ),
     ),

    );
  }
}










