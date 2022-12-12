import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List names = [
      'Ibrahim', // 0
      'Ahmed', // 1
      'Osama', // 2
      'Ashraf', // 3
      'Ameer', // 4
    ];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            names.add('yara');
            print(names);
            print('length when press ${names.length}');
          });
        },
      ),
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        backgroundColor: const Color(0xff536f80),
        centerTitle: true,
        title: const Text(
          'App',
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            print('$index *');
            print('length : ${names.length} ');
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: getContainer(names, index),
            );
          },
        ),
      ),
    );
  }

  Widget getContainer(List names, int index) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: const Color(0xff536f80)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            '${names[index]}',
            style: const TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
