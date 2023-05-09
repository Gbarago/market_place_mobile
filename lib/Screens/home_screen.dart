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

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});
  Color? nullableColor = Colors.grey;

  final String title;
  @override
  Widget build(BuildContext context) {
    Color nonNullableColor = nullableColor!; // explicit casting
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                    snap: false,
                    floating: true,
                    expandedHeight: 200,
                    flexibleSpace: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          width: width * 1,
                          child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/images/clothes_anger.png')),
                        ),
                        SizedBox(
                          width: width * 1,
                          child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/images/clothes_anger3.png')),
                        )
                      ],
                    )

                    //Placeholder(),
                    ),
                SliverPersistentHeader(
                  delegate: StickyWidget(),
                  pinned: true,
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return ListTile(title: Text('Item $index'));
                    },
                    childCount: 20,
                  ),
                ),
              ],
            ),
            Positioned(
              left: width * 0.05,
              top: height * 0.1,
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
                          color: Colors.grey[300] ?? nonNullableColor,
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
                    Badge(
                      backgroundColor: Colors.redAccent,
                      label: Text('5'),
                      child: Icon(Icons.message_outlined),
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    Badge(
                      backgroundColor: Colors.redAccent,
                      label: Text('5'),
                      child: Icon(Icons.shop_two),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StickyWidget extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text('Sticky Widget'),
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
