import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // we want scrollable effect
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              // list inside widget is represented by children
              // children needs when we have to show more than one widgets inside a widget
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      children: [
                        Text("Good Morning"),
                        Text("Book Tickets")
                      ],
                    ),
                    Container(
                      color: Colors.red,
                      width: 100,
                      height: 70,                  )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Search icon"),
                    Text("Empty space")
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
