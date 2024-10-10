import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController namecontroller1 = TextEditingController();

  List<Map> data = [];
  String? MyName;
  String? ComName;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "App Bar",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 96, 27, 21),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
              child: TextField(
                controller: namecontroller,
                decoration: const InputDecoration(
                    hintText: "Name", border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
              child: TextField(
                controller: namecontroller1,
                decoration: const InputDecoration(
                    hintText: "Dream company", border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                MyName = namecontroller.text;
                ComName = namecontroller1.text;

                data.add({
                  "name": MyName,
                  "company": ComName,
                });
                namecontroller.clear();
                namecontroller1.clear();

                setState(() {});
              },
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                Color.fromARGB(255, 96, 27, 21),
              )),
              child: const Text(
                "submit",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
                    child: Container(
                      height: 135,
                      color: const Color.fromARGB(255, 102, 31, 26),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name : ${data[index]['name']}",
                              style: const TextStyle(
                                  fontSize: 25, color: Colors.white),
                            ),
                            Text(
                              "company : ${data[index]['company']}",
                              style: const TextStyle(
                                  fontSize: 25, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
