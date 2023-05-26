import 'package:flutter/material.dart';

import '../models/prooduct_moodel.dart';

class ProductDetailsPage extends StatelessWidget {
  final Product productInfo;
  const ProductDetailsPage({super.key, required this.productInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                      width: 20,
                      child: Image(
                          fit: BoxFit.contain,
                          image: AssetImage('assets/images/back.png')),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Icon(
                        color: Colors.redAccent,
                        Icons.favorite,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      child: Image(
                          fit: BoxFit.contain,
                          image: AssetImage('assets/images/share.png')),
                    ),
                    const SizedBox(
                      height: 20,
                      width: 20,
                      child: Image(
                          fit: BoxFit.contain,
                          image: AssetImage('assets/images/shopping-bag.png')),
                    ),
                  ],
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
