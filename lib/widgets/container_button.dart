import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teori_04/models/counter.dart';
import 'package:teori_04/widgets/purple_button.dart';

class ContainerButton extends StatelessWidget {
  ContainerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PurpleButton(
          icon: Icons.remove,
          onClick: Provider.of<Counter>(context, listen: false).decrase,
        ),
        PurpleButton(
          icon: Icons.add,
          onClick: context.read<Counter>().increase,
        ),
      ],
    );
  }
}
