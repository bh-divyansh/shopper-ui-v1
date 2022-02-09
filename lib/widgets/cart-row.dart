import 'package:flutter/material.dart';

class CartRow extends StatelessWidget {
  const CartRow({Key? key, required this.dispColor}) : super(key: key);

  final Color dispColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 9),
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 17),
            child: Icon(
              Icons.add_shopping_cart,
              color: dispColor,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: dispColor),
            ),
          ),
        ),
        Expanded(child: SizedBox()),
        InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 90),
            child: Text(
              'BUY NOW',
              style: TextStyle(
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: dispColor),
                color: dispColor),
          ),
        ),
      ],
    );
  }
}
