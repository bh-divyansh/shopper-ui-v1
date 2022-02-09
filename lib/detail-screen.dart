import 'package:flutter/material.dart';
import 'widgets/color-choice.dart';
import 'constants/constants.dart';
import 'widgets/size-shower.dart';
import 'widgets/quantity-row.dart';
import 'widgets/cart-row.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
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
    // double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: dispColor,
      appBar: AppBar(
        backgroundColor: dispColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart_rounded,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 1.0, left: 15, bottom: 5),
                child: Text(
                  'Aristocratic Hand Bag',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.0, left: 13, bottom: 5),
                child: Text(
                  name,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 7.8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 1),
                child: Text(
                  'Price',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, bottom: 20),
                child: Text(
                  price,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 9,
                        width: MediaQuery.of(context).size.width,
                      ),
                      Row(
                        children: [
                          ColorChoice(
                            primaryCC: dispColor,
                            secondaryCC: clrBag2,
                            tertiaryCC: clrBag3,
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          SizeShower(),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                          style: TextStyle(
                              color: Colors.grey.shade600, wordSpacing: 4),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 4),
                        child: QuantityRow(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 0),
                        child: CartRow(
                          dispColor: dispColor,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 145, top: 80),
            child: Image(
              width: 237,
              height: 261,
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/images/bag_$bag_no.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// 145, 80
