import 'package:flutter/material.dart';

import 'counterpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RiverPod'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: ((context) => const CounterPage()))
            );
          },
          child: const Text('Go to Counter Page'),
        ),
      ),
    );
  }
}
