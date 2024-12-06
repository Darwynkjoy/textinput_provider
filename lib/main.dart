import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:textinput_provider/textinput_provider.dart';
import 'package:textinput_provider/textprovider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>Textprovider(),
      child: MaterialApp(
        title: 'text input',
        debugShowCheckedModeBanner: false,
        home: TextinputProvider(),
      ),
    );
  }
}