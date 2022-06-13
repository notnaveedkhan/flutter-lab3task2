import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 3 Task 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController numberController = TextEditingController();

  String message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab 3 Task 2'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: numberController,
                decoration: const InputDecoration(
                  labelText: 'Enter any number',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 8.0,
              ),
              ElevatedButton(
                  onPressed: () => {
                        setMessage(int.parse(numberController.text)),
                      },
                  child: const Text('Check')),
              const SizedBox(
                height: 8.0,
              ),
              Text(message)
            ],
          ),
        ),
      ),
    );
  }

  setMessage(int number) {
    if (number % 2 == 0) {
      setState(() {
        message = '$number is even';
      });
    } else {
      setState(() {
        message = '$number is odd';
      });
    }
  }
}
