import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Tarefas',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            TaskCard('Estudar'),
            TaskCard('Andar de Bike'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.orange,
        ),
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  final String taskName;

  const TaskCard(this.taskName,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(color: Colors.orange, height: 140),
          Container(
            color: Colors.white,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.grey,
                  width: 72,
                  height: 100,
                ),
                Text(taskName),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.arrow_drop_up),
                  style: ButtonStyle(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
