// import 'dart:math';

// import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;

//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20.0),
//         child: SafeArea(
//           child: Column(
//             children: [
//               const SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 children: [
//                   IconButton(
//                     icon: const Icon(Icons.search),
//                     onPressed: () {},
//                   ),
//                   const Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Search',
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                   Stack(
//                     children: [
//                       IconButton(
//                         icon:const Icon(Icons.shopping_bag),
//                         onPressed: () {
//                           // Add your shopping bag functionality here
//                         },
//                       ),
//                       Positioned(
//                         right: 0,
//                         child: Container(
//                           padding: EdgeInsets.all(1),
//                           decoration: BoxDecoration(
//                             color: Colors.red,
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           constraints: const BoxConstraints(
//                             minWidth: 18,
//                             minHeight: 18,
//                           ),
//                           child: const Text(
//                             '9',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 12,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Stack(
//                     children: [
//                       IconButton(
//                         icon: Icon(Icons.message),
//                         onPressed: () {
//                           // Add your message functionality here
//                         },
//                       ),
//                       Positioned(
//                         right: 0,
//                         child: Container(
//                           padding: EdgeInsets.all(1),
//                           decoration: BoxDecoration(
//                             color: Colors.red,
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           constraints: const BoxConstraints(
//                             minWidth: 18,
//                             minHeight: 18,
//                           ),
//                           child: Text(
//                             '5',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 12,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               Container(
//                 height: height * 0.8,
//                 child: GridView.builder(
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     crossAxisSpacing: 15,
//                     mainAxisSpacing: 15,
//                   ),
//                   itemCount: 20,
//                   itemBuilder: (BuildContext context, int index) {
//                     final randomColor = Color(Random().nextInt(0xffffffff));
//                     return Container(
//                       color: randomColor,
//                       child: Center(
//                         child: Text(
//                           'Item $index',
//                           style: const TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20.0,
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import '../models/dummy_data.dart';
import '../widgeets/home_widgwts.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            anchor: 0.05,
            slivers: <Widget>[
              SliverAppBar(
                snap: false,
                floating: true,
                expandedHeight: 200,
                flexibleSpace: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    PromotionsItems(
                      imagePath: 'assets/images/clothes_anger.png',
                      harshTag: '#Fashion Day',
                      largTeext: '80% OFF',
                      fadedText: 'Discover fashion that suits to your style',
                    ),
                    PromotionsItems(
                      imagePath: 'assets/images/beauty.png',
                      harshTag: '#BEAUTYSALRE',
                      largTeext: 'DISCOVER OUR BEAUTY SELECTION',
                      fadedText: '',
                      fontSizelargText: 17,
                      fontWeightelargText: FontWeight.w600,
                    ),
                  ],
                ),
              ),
              SliverPersistentHeader(
                delegate: StickyWidget(),
                pinned: true,
                floating: true,
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Column(
                      children: [
                        Text('Item $index'),
                        SizedBox(height: 15),
                        Container(
                          color: const Color.fromARGB(31, 142, 142, 142),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Best Sale Product',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'See more',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.teal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 15,
                          color: const Color.fromARGB(31, 142, 142, 142),
                        ),
                      ],
                    );
                  },
                  childCount: 1,
                ),
              ),
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  mainAxisExtent: 260,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    final prodItem = productItem[index];
                    return ProductTile(
                      prodItem: prodItem,
                    );
                  },
                  childCount: productItem.length,
                ),
              ),
            ],
          ),
          Positioned(
            left: width * 0.05,
            top: height * 0.065,
            child: SizedBox(
              width: width * 0.9,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: width * 0.67,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(
                        color: Colors.grey[300] ?? Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  const Badge(
                    backgroundColor: Colors.redAccent,
                    label: Text('1'),
                    child: Icon(Icons.shop_two),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  const Badge(
                    backgroundColor: Colors.redAccent,
                    label: Text('9+'),
                    child: Icon(Icons.message_outlined),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
