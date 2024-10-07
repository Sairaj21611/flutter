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
          actions: const [
            Icon(Icons.shopping_cart),
            Icon(Icons.search)
          ],
          title: const Text("AppBar",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 28,
              color:Colors.white
            ),),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  } 
}