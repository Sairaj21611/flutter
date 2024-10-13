import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void openBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            children: [
              const Text(
                "BottomSheet Demo",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ),
              Container(
                height: 200,
                color: Colors.amber,
              )
            ],
          );
        });
  }
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title: const Text(
          "BottomSheet",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: Colors.white,

          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body:const Center(
        child:Text(
          "BottomSheet Demo",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.amber,
          ),
          )
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        openBottomSheet();
      },
      child: const Icon(Icons.add),
      ),
    );
  }
}
