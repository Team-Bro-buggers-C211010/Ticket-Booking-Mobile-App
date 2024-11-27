import 'package:flutter/material.dart';

import 'counter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Student Info App",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the Counter page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Counter()),
            );
          },
          child: const Text('Go to Counter Page'),
        ),
      ),
    );
  }
}
