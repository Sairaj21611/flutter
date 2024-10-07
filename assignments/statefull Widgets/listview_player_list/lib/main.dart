//listview player list
import 'package:flutter/material.dart';

void main(){
  runApp(const MainApp());
}
class MainApp extends StatefulWidget{
  const MainApp({super.key});

  @override
  State<MainApp> createState()=> _MainAppState();
}
class _MainAppState extends State<MainApp>{
  TextEditingController nameController = TextEditingController();

  String? myName;
  List<String> playerList = [];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Textfield Listview Demo",
          style:TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: Colors.white
          )),
          backgroundColor: const Color.fromARGB(255, 95, 23, 17),
          centerTitle: true,
        ),
        body:  Column(
          children: [
             const SizedBox(
              height: 20,

            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: nameController,
                style: const TextStyle(
                  fontSize: 30,      
                ),
                decoration: const InputDecoration(
                  hintText: "Enter Name",
                  hintStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                  ) ,
                  border: OutlineInputBorder(),
                ),
              ),
              
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap:(){
                myName = nameController.text.trim();
                if(myName!=""){
                  playerList.add(myName!);
                  nameController.clear();
                  setState(() {});
                }
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal:15,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 95, 23, 17),
                  borderRadius: BorderRadius.circular(15),
                ),
                child:const Text("Add Data",
                style: TextStyle(
                  fontSize:25,
                  color: Colors.white
                ),)
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ListView.builder(
              itemCount: playerList.length,
              shrinkWrap: true,
              itemBuilder: (context, index){
                return Text(
                  "Name : ${playerList[index]}",
                style: const TextStyle(
                  fontSize: 25,
                ));
              }
            )
        ],),
      ),
    );
  }
}