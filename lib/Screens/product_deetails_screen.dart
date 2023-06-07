import 'package:flutter/material.dart';

import '../models/prooduct_moodel.dart';

class ProductDetailsPage extends StatefulWidget {
  final Product productInfo;
  const ProductDetailsPage({super.key, required this.productInfo});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  bool showImage = false;

  @override
  void initState() {
    super.initState();
    // Delay the image appearance for 1 second
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        showImage = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final heiight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const SizedBox(
                            height: 20,
                            width: 20,
                            child: Image(
                                fit: BoxFit.contain,
                                image: AssetImage('assets/images/back.png')),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: width * 0.35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(
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
                                image: AssetImage(
                                    'assets/images/shopping-bag.png')),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: width * 0.8,
                        height: heiight * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(31, 142, 142, 142),
                        ),
                        child: Center(
                          child: Container(
                              height: heiight * 0.25,
                              width: width * 06,
                              child: Image.asset(
                                widget.productInfo.imageeUrl,
                                // fit: BoxFit.contain,
                                width: width * 025,
                              )),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
