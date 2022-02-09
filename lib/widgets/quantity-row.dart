import 'package:flutter/material.dart';

int cart_num = 0;

class QuantityRow extends StatefulWidget {
  const QuantityRow({Key? key}) : super(key: key);

  @override
  State<QuantityRow> createState() => _QuantityRowState();
}

class _QuantityRowState extends State<QuantityRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              if (cart_num > 0) {
                cart_num -= 1;
              }
            });
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 22, horizontal: 9),
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 7),
            child: Icon(
              Icons.remove,
              color: Colors.black,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Colors.grey),
            ),
          ),
        ),
        Text(
          '$cart_num',
          style: TextStyle(fontSize: 30),
        ),
        InkWell(
          onTap: () {
            setState(() {
              cart_num += 1;
            });
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 22, horizontal: 9),
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 7),
            child: Icon(
              Icons.add,
              color: Colors.black,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Colors.grey),
            ),
          ),
        ),
        Expanded(child: SizedBox()),
        InkWell(
          onTap: () {
            setState(() {
              //  need help
            });
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 22, horizontal: 9),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: Colors.red.shade400),
                color: Colors.red.shade400),
          ),
        ),
      ],
    );
  }
}
