import 'package:flutter/material.dart';

import '../Screens/product_deetails_screen.dart';
import '../models/prooduct_moodel.dart';

class PromotionsItems extends StatelessWidget {
  const PromotionsItems(
      {super.key,
      required this.imagePath,
      required this.harshTag,
      required this.largTeext,
      required this.fadedText,
      this.fontSizelargText,
      this.fontWeightelargText});
  final String imagePath;
  final String harshTag;
  final String largTeext;
  final String fadedText;
  final double? fontSizelargText;
  final FontWeight? fontWeightelargText;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        SizedBox(
          width: width * 1,
          child: Image(fit: BoxFit.cover, image: AssetImage(imagePath)),
        ),
        Positioned(
          left: 20,
          top: height * 0.13,
          child: SizedBox(
            width: width * 0.42,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  harshTag,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Text(
                  textAlign: TextAlign.start,
                  largTeext,
                  style: TextStyle(
                      fontSize: fontSizelargText ?? 20,
                      fontWeight: fontWeightelargText == null
                          ? FontWeight.w900
                          : fontWeightelargText,
                      color: Colors.black),
                ),
                Text(
                  fadedText,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                MaterialButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  color: Colors.black54,
                  child: const Text(
                    'Check this out',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class ProductTile extends StatefulWidget {
  const ProductTile({super.key, required this.prodItem});
  final Product prodItem;

  @override
  State<ProductTile> createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  bool isFave = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    ProductDetailsPage(
                      productInfo: widget.prodItem,
                    ),
                transitionDuration: Duration(seconds: 1),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                }));
      },
      child: Stack(
        children: [
          Container(
            color: const Color.fromARGB(31, 142, 142, 142),
            child: GridTile(
              footer: GridTileBar(
                leading: const Icon(
                  Icons.star,
                  color: Colors.amberAccent,
                  size: 15,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.prodItem.rating} | ',
                      style:
                          const TextStyle(color: Colors.black54, fontSize: 10),
                    ),
                    Text(
                      widget.prodItem.itemsSold.toString(),
                      style:
                          const TextStyle(color: Colors.black54, fontSize: 10),
                    ),
                  ],
                ),
                trailing: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // const SizedBox(
                    //   width: 0,
                    // ),
                    Text(
                      '\$${widget.prodItem.price}',
                      style: const TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.w800,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              child: Container(
                // color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(
                      //fit: BoxFit.fitWidth,
                      image: AssetImage(widget.prodItem.imageeUrl),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5, top: 15),
                      child: Text(
                        widget.prodItem.name,
                        style: const TextStyle(color: Colors.black54),
                      ),
                    ),
                    const Text(
                      'Essential Mens\'s Short-Sleve Crewneck T-Shirt',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 5,
            top: 5,
            child: IconButton(
              onPressed: () {
                setState(() {
                  isFave = !isFave;
                });
              },
              icon: isFave
                  ? const Icon(color: Colors.redAccent, Icons.favorite)
                  : const Icon(
                      color: Colors.black54,
                      Icons.favorite_border,
                    ),
            ),
          )
        ],
      ),
    );
  }
}

class StickyWidget extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      // height: 600,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              SectionsTabIcons(
                imageUrl: 'assets/images/application.png',
                title: 'Category',
              ),
              SectionsTabIcons(
                imageUrl: 'assets/images/airplane.png',
                title: 'Flight',
              ),
              SectionsTabIcons(
                imageUrl: 'assets/images/bill.png',
                title: 'Bills',
              ),

              SectionsTabIcons(
                imageUrl: 'assets/images/world.png',
                title: 'Data Plan',
              ),
              SectionsTabIcons(
                imageUrl: 'assets/images/top-up.png',
                title: 'Top Up',
              ), // SectionsTabIcons(),
              // SectionsTabIcons(),
            ],
          )
        ],
      ),
    );
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}

class SectionsTabIcons extends StatelessWidget {
  const SectionsTabIcons(
      {super.key, required this.imageUrl, required this.title});
  final String imageUrl;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 40,
      width: 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 30,
            height: 20,
            child: Image(
              fit: BoxFit.contain,
              image: AssetImage(imageUrl),
            ),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 8),
          )
        ],
      ),
    );
  }
}
