import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

List<Color> colors = [
  const Color.fromRGBO(250, 232, 232, 1),
  const Color.fromRGBO(232, 237, 250, 1),
  const Color.fromRGBO(250, 249, 232, 1),
  const Color.fromRGBO(250, 232, 250, 1),
];

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "To-Do list",
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 26, color: Colors.white),
          ),
          backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
          centerTitle: false,
        ),
        body: ListView.builder(
            itemCount: 5,
            physics: const AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  left: 15,
                  right: 15,
                ),
                child: Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: colors[index % colors.length],
                    ),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 18,
                              ),
                              CircleAvatar(
                                maxRadius: 35,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.image,
                                  size: 32,
                                  color: Color.fromRGBO(199, 199, 199, 1),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "10 july 2023",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color.fromRGBO(132, 132, 132, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Lorem Ipsum is simply setting industry",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  "Simply dummy text of the printing and typesetting industry.Loren ipsum has been the industry standard dummy text ever since 1500",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.edit,
                                      color: Color.fromRGBO(0, 139, 149, 1),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(
                                      Icons.delete,
                                      color: Color.fromRGBO(0, 139, 149, 1),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )),
              );
            }),
      ),
    );
  }
}
