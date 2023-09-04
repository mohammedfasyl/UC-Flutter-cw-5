import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatefulWidget {
   MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
   int number1 = 1;

   int number2 = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        title: Text("Dice game"),
        backgroundColor: Colors.red,
          ),body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                Image.asset("assets/images/i_$number1.png",width: 150,),
                Image.asset("assets/images/i_$number2.png",width: 150,),
               ],

              ),
             SizedBox(height: 20,),
             ElevatedButton( style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan,

             ),
onPressed: (){
setState(() {
  number1 = Random().nextInt(3) +1;
  number2 = Random(). nextInt(3) +1;
});
},
child: Text('Play'),

             )

            ],
          )
          
           
         )
        ),
      );
    
    
  }
}
