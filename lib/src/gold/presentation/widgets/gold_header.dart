import 'package:flutter/material.dart';

class GoldHeader extends StatelessWidget {
  const GoldHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Image(
          image: AssetImage('assets/bars.png'),
          width: 100,
        ),
        Text('Gold', style: Theme.of(context).textTheme.headlineLarge),
      ],
    );
  }
}
