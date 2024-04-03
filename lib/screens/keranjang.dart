import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teori_04/models/counter.dart';

class Kearanjang extends StatelessWidget {
  const Kearanjang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Keranjang ${context.read<Counter>().nama}"),
        actions: [
          IconButton(
              onPressed: context.read<Counter>().increase,
              icon: Icon(Icons.add))
        ],
      ),
      body: Center(
        child: Consumer<Counter>(
          builder: (context, value, child) => Text(
            "Pesanan : ${value.value}",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
