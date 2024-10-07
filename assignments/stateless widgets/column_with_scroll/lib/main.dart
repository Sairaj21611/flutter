//column with scroll
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
          title: const Text("Column Demo",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                    ),),
                backgroundColor: const Color.fromARGB(255, 23, 65, 99),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network("https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),
              Container(
                height: 200,
                width: 200,
                color: const Color.fromARGB(255, 152, 42, 79),
              ),
              Image.network("https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),
              Container(
                height: 200,
                width: 200,
                color: const Color.fromARGB(255, 152, 42, 79),
              ),
              Image.network("https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),
              Container(
                height: 200,
                width: 200,
                color: const Color.fromARGB(255, 152, 42, 79),
              ),
            ],
          ),
        ),
      ),
    );
  }
}