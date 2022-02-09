import 'package:flutter/material.dart';
import 'package:shopper_ui/constants/constants.dart';
import 'widgets/displayer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart_rounded,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0, bottom: 10),
            child: Text(
              'Women',
              style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Displayer(
                dispColor: clrBag1,
                name: 'Office Code',
                price: 'Rs. 500',
                bag_no: 1,
              ),
              Displayer(
                dispColor: clrBag2,
                name: 'Belt Bag',
                price: 'Rs. 500',
                bag_no: 2,
              ),
            ],
          ),
          Row(
            children: [
              Displayer(
                dispColor: clrBag3,
                name: 'Hang Top',
                price: 'Rs. 500',
                bag_no: 3,
              ),
              Displayer(
                dispColor: clrBag4,
                name: 'Old Fashion',
                price: 'Rs. 500',
                bag_no: 4,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
