import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(const MyApp());

}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context){
    print("height : ${MediaQuery.of(context).size.height}");
    print("height : ${MediaQuery.of(context).size.height}");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container Gradient",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: Colors.white
          ),),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 174, 159, 20),
        ),
        body:Center(
          child: Container(
            height:200,
            width: 200,
            alignment: Alignment.bottomLeft,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 185, 61, 52),
                  Color.fromARGB(255, 42, 101, 148)
                ],
              ),
            ),
            child: const Text("Hello world",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w500,
              color: Colors.black
            ),),
          ),
          
        )
      ),
    );
  }
}