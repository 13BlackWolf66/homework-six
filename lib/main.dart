import 'package:flutter/material.dart';
import 'package:hw_5/validator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter HW5',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigoAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter HW5'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _password  = '';

  void _onChanged(String text) {
    setState(() {
     _password = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Criterias:', style: TextStyle(fontSize: 20),),
              const Text('1 - Кирилиця маленькі,\n2 - Кирилиця великі,\n3 - Латинські великі,\n4 - ([];’\\/),\n Min length - 10',textAlign: TextAlign.start,),
              TextField(
                onChanged: _onChanged ,
              ),
              const SizedBox(
                height: 16,
              ),
               Text(
                Validator.validatePassword(_password),
                style: const TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
