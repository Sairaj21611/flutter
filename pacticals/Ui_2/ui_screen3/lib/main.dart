import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text(
              "Recomended",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(0, 91, 135, 1),
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            leading: const Icon(Icons.arrow_back_ios_new),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(1.0),
              child: Container(
                color: Colors.black,
                height: 1.0,
              ),
            ),
          ),
          body: Column(children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Start a new career",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: const ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                  Color.fromRGBO(0, 91, 135, 1),
                                ),
                              ),
                              child: const Text(
                                "Data Science",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: const ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                  Color.fromRGBO(212, 225, 232, 1),
                                ),
                              ),
                              child: const Text(
                                "Machine learnig",
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 91, 135, 1),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: const ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                  Color.fromRGBO(212, 225, 232, 1),
                                ),
                              ),
                              child: const Text(
                                "Apache Spark",
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 91, 135, 1),
                                ),
                              ),
                            ),
                          ),
                        ]),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                    children: [
                      Container(
                        height: 155,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 246, 245, 245)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(children: [
                            Container(
                              width: 135,
                              height: 135,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                      image: AssetImage("assets/image1.jpeg"))),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Data Science",
                                      style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const Text(
                                      "Harvad University",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    const SizedBox(
                                      height: 9,
                                    ),
                                    const Text(
                                      "Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(3),
                                          width: 95,
                                          height: 25,
                                          color: const Color.fromRGBO(
                                              212, 225, 232, 1),
                                          child: const Text(
                                            "Data Science",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  Color.fromRGBO(0, 91, 135, 1),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(3),
                                          width: 110,
                                          height: 25,
                                          color: const Color.fromRGBO(
                                              212, 225, 232, 1),
                                          child: const Text(
                                            "Machine Learning",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  Color.fromRGBO(0, 91, 135, 1),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ]),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 155,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 246, 245, 245)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(children: [
                            Container(
                              width: 135,
                              height: 135,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                      image: AssetImage("assets/image1.jpeg"))),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "AI & ML",
                                      style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const Text(
                                      "Harvad University",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    const SizedBox(
                                      height: 9,
                                    ),
                                    const Text(
                                      "Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(3),
                                          width: 110,
                                          height: 25,
                                          color: const Color.fromRGBO(
                                              212, 225, 232, 1),
                                          child: const Text(
                                            "Machine Learning",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  Color.fromRGBO(0, 91, 135, 1),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(3),
                                          width: 95,
                                          height: 25,
                                          color: const Color.fromRGBO(
                                              212, 225, 232, 1),
                                          child: const Text(
                                            "Decision Tree",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  Color.fromRGBO(0, 91, 135, 1),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ]),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 155,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 246, 245, 245)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(children: [
                            Container(
                              width: 135,
                              height: 135,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                      image: AssetImage("assets/image1.jpeg"))),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Big Data",
                                      style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const Text(
                                      "Harvad University",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    const SizedBox(
                                      height: 9,
                                    ),
                                    const Text(
                                      "Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(3),
                                          width: 75,
                                          height: 25,
                                          color: const Color.fromRGBO(
                                              212, 225, 232, 1),
                                          child: const Text(
                                            "Big Data",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  Color.fromRGBO(0, 91, 135, 1),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(3),
                                          width: 85,
                                          height: 25,
                                          color: const Color.fromRGBO(
                                              212, 225, 232, 1),
                                          child: const Text(
                                            "Apache spark",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  Color.fromRGBO(0, 91, 135, 1),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ]),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 155,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 246, 245, 245)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(children: [
                            Container(
                              width: 135,
                              height: 135,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                      image: AssetImage("assets/image1.jpeg"))),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Devops",
                                      style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const Text(
                                      "Harvad University",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    const SizedBox(
                                      height: 9,
                                    ),
                                    const Text(
                                      "Lorem ipsum dolor sit amet eget nunc dictum est penatibus nunc.",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(3),
                                          width: 75,
                                          height: 25,
                                          color: const Color.fromRGBO(
                                              212, 225, 232, 1),
                                          child: const Text(
                                            "Docker",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  Color.fromRGBO(0, 91, 135, 1),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(3),
                                          width: 80,
                                          height: 25,
                                          color: const Color.fromRGBO(
                                              212, 225, 232, 1),
                                          child: const Text(
                                            "kubernetes",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  Color.fromRGBO(0, 91, 135, 1),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ]),
        ));
  }
}
