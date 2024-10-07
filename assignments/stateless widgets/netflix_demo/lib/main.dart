

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        appBar: AppBar(
          title: const Text( "NETFLIX",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 35,
            color: Color.fromARGB(255, 153, 26, 17),
            shadows: [
              Shadow(
                offset: Offset(2.0, 2.0),
                blurRadius: 3.0,
                color: Color.fromARGB(255, 210, 73, 73),
               ),
              ], 
          ),),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 30, 29, 29)
        ),
        body: ListView.builder(
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                const Text("Action Movies",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://m.media-amazon.com/images/M/MV5BMjMwOTg0MzU4MV5BMl5BanBnXkFtZTgwODk2NjY3NTM@._V1_.jpg"),
                      ),
                      Container( 
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://m.media-amazon.com/images/M/MV5BMjMwOTg0MzU4MV5BMl5BanBnXkFtZTgwODk2NjY3NTM@._V1_.jpg"),
                      ), 
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://m.media-amazon.com/images/M/MV5BMjMwOTg0MzU4MV5BMl5BanBnXkFtZTgwODk2NjY3NTM@._V1_.jpg"),
                      ), 
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://m.media-amazon.com/images/M/MV5BMjMwOTg0MzU4MV5BMl5BanBnXkFtZTgwODk2NjY3NTM@._V1_.jpg"),
                      ),
                    ]
                    ,),
                )
              ],
            );
          } ,

        )
      ),
    );
  }
}