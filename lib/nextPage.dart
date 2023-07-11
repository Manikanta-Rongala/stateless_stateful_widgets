import 'package:flutter/material.dart';


void main(){
  runApp(const IncrementNumber());

}

class IncrementNumber extends StatefulWidget {
  const IncrementNumber({Key? key}) : super(key: key);

  @override
  State<IncrementNumber> createState() => _IncrementNumberState();
}

class _IncrementNumberState extends State<IncrementNumber> {
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
          title: const Text("Stateful widget"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Increment $increment"),
              Center(
                child: IconButton(onPressed: (){
                  setState(() {
                    changeColor();
                    print("Increment $increment");
                  });
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

