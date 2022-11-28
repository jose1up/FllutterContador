// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  void _addCounter() {
    setState(() {
      counter++;
    });
  }

  void _subCounter() {
    setState(() {
      counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const styleText = TextStyle(
      fontSize: 30,
      fontFamily: "Helvetica",
    );
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("CounterScrean")),
        elevation: 1.2,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: _addCounter, child: const Icon(Icons.add)),
            const SizedBox(
              width: 20,
            ),
            Text('$counter', style: styleText),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: _subCounter,
              child: const Icon(Icons.remove),
            )
          ],
        ),
      ),
      floatingActionButton: CustomFloantingActions(
          addCounter: _addCounter,
          removeCounter: _subCounter,
          resetCounter: _resetCounter),
    );
  }
}

class CustomFloantingActions extends StatelessWidget {
  final Function addCounter;
  final Function removeCounter;
  final Function resetCounter;

  const CustomFloantingActions(
      {Key? key,
      required this.addCounter,
      required this.removeCounter,
      required this.resetCounter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FloatingActionButton(
            backgroundColor: Colors.green[700],
            child: const Icon(Icons.exposure_plus_1),
            onPressed: () => {addCounter()},
            tooltip: "add 1 "),
        FloatingActionButton(
            backgroundColor: Colors.red[700],
            child: const Icon(Icons.refresh_outlined),
            onPressed: () => {resetCounter()},
            tooltip: "reset counter"),
        FloatingActionButton(
          backgroundColor: Colors.green[700],
          child: const Icon(Icons.exposure_minus_1),
          onPressed: () => {removeCounter()},
          tooltip: "reduce 1",
        ),
      ],
    );
  }
}
