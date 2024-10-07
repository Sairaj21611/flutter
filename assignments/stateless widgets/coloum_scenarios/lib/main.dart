import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Color Scenario",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.white
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 76, 154, 221),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 229, 211, 211),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height:150,
                width: 150,
                color: const Color.fromARGB(255, 97, 18, 44)
              ),
            ],
          ),
        ),
      )
    );
  }
}