import 'package:flutter/material.dart';
import 'package:shopper_ui/constants/constants.dart';

class ColorChoice extends StatelessWidget {
  const ColorChoice({
    Key? key,
    required this.primaryCC,
    required this.secondaryCC,
    required this.tertiaryCC,
  }) : super(key: key);
  final Color primaryCC;
  final Color secondaryCC;
  final Color tertiaryCC;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, bottom: 3),
          child: Text(
            'Color',
            style: TextStyle(color: Colors.grey.shade800),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 8),
              child: CircleAvatar(
                radius: 9,
                backgroundColor: primaryCC,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 8),
              child: CircleAvatar(
                radius: 9,
                backgroundColor: secondaryCC,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 8),
              child: CircleAvatar(
                radius: 9,
                backgroundColor: tertiaryCC,
              ),
            )
          ],
        ),
      ],
    );
  }
}
