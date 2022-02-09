import 'package:flutter/material.dart';

class SizeShower extends StatelessWidget {
  const SizeShower({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Size',
          style: TextStyle(color: Colors.grey.shade800),
        ),
        Text(
          '12 cm',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ],
    );
  }
}
