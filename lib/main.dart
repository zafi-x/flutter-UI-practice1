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
      // title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[200],
      body: Center(
        child: Container(
          width: 350,
          height: 85,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white),
            borderRadius: const BorderRadius.all(
              Radius.circular(35),
            ),
          ),
          // ignore: prefer_const_constructors
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.cyan[50],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    width: 35,
                    height: 35,
                    child: const Icon(
                      Icons.add,
                      color: Color.fromARGB(255, 0, 55, 119),
                      size: 30,
                    ),
                  ),
                  const Text('Follow'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.cyan[50],
                        borderRadius: BorderRadius.circular(30)),
                    width: 35,
                    height: 35,
                    child: const Icon(
                      Icons.message,
                      color: Color.fromARGB(255, 0, 55, 119),
                    ),
                  ),
                  const Text('message'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.cyan[50],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    width: 35,
                    height: 35,
                    child: const Icon(
                      Icons.favorite_border,
                      color: Color.fromARGB(255, 0, 55, 119),
                    ),
                  ),
                  const Text(
                    'like',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              )
            ],
          ),
        ),
      ),

      // backgroundColor: Color.fromARGB(255, 150, 177, 199),
      // body: Center(
      //   child: Container(
      //     decoration: const BoxDecoration(
      //       color: Color.fromARGB(255, 43, 170, 209),
      //     ),
      //     width: 200,
      //     height: 200,
      //     child: const Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         Text(
      //           'hello',
      //           style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
      //         ),
      //         Icon(
      //           Icons.woman,
      //           color: Colors.amber,
      //           size: 34,
      //         ),
      //         Icon(
      //           Icons.man,
      //           color: Colors.amber,
      //           size: 34,
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
