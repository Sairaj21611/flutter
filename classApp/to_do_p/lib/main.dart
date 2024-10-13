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

  String? name;
  String? name1; 

  List<Map> data = [];

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Info",
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 32, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 24, 78, 122),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: TextField(
                 controller: namecontroller,
                decoration: const InputDecoration(
                  hintText: "Name",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: TextField(
                controller: namecontroller1,
                decoration: const InputDecoration(
                  hintText: "Dream Company",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: ElevatedButton(
                onPressed: () {
                  name= namecontroller.text;
                   name1= namecontroller1.text;
                   data.add({
                    "myname": name,
                    "comname": name1,
                  }  );
                  namecontroller.clear();
                  namecontroller1.clear();

                   setState(() {
                     
                   });

                },
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Color.fromARGB(255, 24, 78, 122),
                  ),
                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 18, right: 18),
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 47, 49, 50),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        child:  Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Name : ${data[index]["myname"]}",
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Company Name :${data[index]["comname"]}",
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
