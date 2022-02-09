import 'package:flutter/material.dart';
import 'package:shopper_ui/detail-screen.dart';

class Displayer extends StatelessWidget {
  const Displayer({
    Key? key,
    required this.dispColor,
    required this.name,
    required this.price,
    required this.bag_no,
  }) : super(key: key);

  final Color dispColor;
  final String name;
  final String price;
  final int bag_no;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              bag_no: bag_no,
              dispColor: dispColor,
              name: name,
              price: price,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: dispColor),
              height: MediaQuery.of(context).size.width / 2,
              width: MediaQuery.of(context).size.width / 2.19,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image(
                  image: AssetImage('assets/images/bag_$bag_no.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
              child: Text(
                name.toUpperCase(),
                style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
              child: Text(
                price,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
