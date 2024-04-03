import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teori_04/models/counter.dart';
import 'package:teori_04/screens/home.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => Counter())],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      home: Home(
        title: "Lifecycle dari main",
      ),
    );
  }
}
