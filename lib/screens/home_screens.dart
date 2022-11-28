import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const styleText = TextStyle(
      fontSize: 30,
      fontFamily: "Helvetica",
    );
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("HomeScreen")),
        elevation: 1.2,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            Text('click Add Counter', style: styleText),
            Text('15', style: styleText)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print("hola mundo");
        },
      ),
    );
  }
}
