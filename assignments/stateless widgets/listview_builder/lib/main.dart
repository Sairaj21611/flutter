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
          title: const Text("Listview Builder",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 28,
            color: Colors.white
          ),

          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 200, 128, 21),
        ),
        body: ListView.builder(
          itemCount: 31,
          physics:const AlwaysScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index){
            return Text(
             " index: $index",
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w500,
              color: Colors.orange
            ),);
          }
      ),
      )
    );
  }
}