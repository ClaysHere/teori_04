import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teori_04/models/counter.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.watch<Counter>().value.toString()),
      ),
    );
  }
}
