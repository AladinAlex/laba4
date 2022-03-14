import 'package:flutter/material.dart';
import 'dart:math';


// class OutputRow{
//   String row = '2^';
//   int degree;
//     OutputRow (this.row, this.degree);
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

void _degree () {

}

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
const String outRow = '2 ^';
    return MaterialApp(
      title: 'Лабораторная работа №4',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:
         Scaffold(
          appBar: AppBar(
            title: const Text('Список элементов'),
          ),
           body: ListView.builder(
              padding: const EdgeInsets.fromLTRB(15, 25, 20, 15),
             itemCount: 63,
             itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text('$outRow $index = ${pow(2, index)}',
                        style: const TextStyle(fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      ),
                      const Divider(thickness: 1.5,)
                    ],
                  ),



                );
             },
           )
           )
        );
  }
}
// itemBuilder: (context, index) {
// return  Padding(padding: const EdgeInsets.fromLTRB(10,5,10, 5),
// child: Text('$outRow $index'),
// );
// }