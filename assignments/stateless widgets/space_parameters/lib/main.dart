//space parameters
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Space parameters",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: Colors.white
          ),
          ),
          backgroundColor: const Color.fromARGB(255, 155, 142, 24),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 200,
                height:200,
                color: Colors.red,
              ),
              Container(
                width: 200,
                height:200,
                color: const Color.fromARGB(255, 25, 92, 147)
              )
            ],
          ),
        ),
      )
    );
  }

}