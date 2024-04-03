import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teori_04/models/counter.dart';
import 'package:teori_04/screens/about.dart';
import 'package:teori_04/screens/keranjang.dart';
import 'package:teori_04/widgets/container_button.dart';
import 'package:teori_04/widgets/purple_button.dart';

class Home extends StatelessWidget {
  Home({super.key, required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    print("Build");
    return Scaffold(
      appBar: AppBar(
        title: Text("$title"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello ${context.read<Counter>().nama}",
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 40,
            ),
            Consumer<Counter>(
              builder: (context, value, child) => Text(
                "${value.value}",
                style: TextStyle(fontSize: 40),
              ),
            ),
            ContainerButton(),
            SizedBox(
              height: 24,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Kearanjang()));
                },
                icon: Icon(Icons.shopping_bag_outlined),
                label: Text("ke keranjang"))
          ],
        ),
      ),
    );
  }
}
