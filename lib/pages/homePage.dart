import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() => setState(() => _counter++);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'D:/AK/Programs/Flutter/timepass/lib/assets/logo.png',
              height: 30, // adjust as needed
            ),
            const SizedBox(width: 10),
            const Text('Screen Taps'),
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: GestureDetector(
          onTap: _incrementCounter,
          behavior: HitTestBehavior.opaque,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('D:/AK/Programs/Flutter/timepass/lib/assets/bg.jpg'), // <-- Your background image
                fit: BoxFit.cover, // makes the image fill the screen
              ),
            ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                    'Counter:',
                    style: const TextStyle(fontSize: 48.0)),
                Text(
                  '$_counter',
                  style: const TextStyle(fontSize: 48.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}