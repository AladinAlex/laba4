import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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