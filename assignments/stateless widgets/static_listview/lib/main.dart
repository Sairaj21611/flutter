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
          title: const Text(
            "Static Listview",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 28,
              color: Colors.white
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 227, 12, 83),
        ),
        body: 
          ListView(
            children:[ 
              Image.network(
               "https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"
               ),
               const Icon(Icons.favorite,
               color: Color.fromARGB(255, 179, 26, 15),),
               const Text("Bhari",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 30,
                  color: Colors.black87,
                ),
              ),
                Image.network("https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png",),
                GestureDetector(
                  onTap: () {
                    print("Button pressed");
                  },
                  child: Container(
                    height: 50,
                    color: Colors.amber,
                    child: const Text(
                      "Press me",
                      ),
                  ),
                ),
               
            ]
          ) ,
              )
    );
  }
}