import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'DevQuiz',
            debugShowCheckedModeBanner: false,
            // theme: ThemeData(
            //     primarySwatch: Colors.purple
            // ),
            home: Scaffold(
                appBar: AppBar(
                    title: const Text('DevQuiz')
                ),
                floatingActionButton: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                        Icons.add,
                        size: 28,
                    ),
                    tooltip: 'Adicionar',
                ),
                body: Center(child: Container(
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Text(
                        'Olá mundo',
                        style: TextStyle(fontSize: 32, color: Colors.white)
                    ),
                ))
            ),
        );
    }
}