import 'package:carttempdesign/our_prod_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';

class ourproduct extends StatefulWidget {
  const ourproduct({Key? key}) : super(key: key);

  @override
  State<ourproduct> createState() => _ourproductState();
}

class products {
  String? image;
  String? Brand_Name;
  // String? Street_Wear;
  // String? Artist_Name;
  // String? size_s;
  // String? size_m;
  // String? size_l;

  String? id;

  int? Price;

  products(this.image, this.Brand_Name, this.Price, this.id);
}

class _ourproductState extends State<ourproduct> {
  List<products> images = [
    products("assets/download.jpg", "Nike Air Max 20", 1, '1'),
    products("assets/1672334109-jordan-3-1672334059.jpg", "Excee Sneekers", 260,
        "2"),
    products("assets/download (2).jpg", "Air Max Motion 2", 290, '3'),
    products("assets/download (3).jpg", "Leather Sneekers", 270, '4'),
    products(
        "assets/pexels-melvin-buezo-2529147.jpg", "Excee Sneekers", 240, '5'),
    products("assets/images.jpg", "Excee Sneekers", 240, '6'),
    products("assets/download.jpg", "Excee Sneekers", 240, '7'),
    products("assets/download.jpg", "Excee Sneekers", 240, '8'),
  ];

  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Index 0: Home',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 1: Business',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 2: School',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 3: person',
  //     style: optionStyle,
  //   ),
  // ];
  //
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xfff7f7f7),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.indigoAccent,
        elevation: 0,
        child: Container(
          child: Icon(
            Icons.shopping_cart,
            // color: Color(0xffa1dbf5),
            size: 3.h,
          ),
        ),
      ),

      // Center(
      //   child: _widgetOptions.elementAt(_selectedIndex),
      // ),

      bottomNavigationBar: BottomAppBar(
        //bottom navigation bar on scaffold
        color: Colors.grey.shade200,
        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin:
            10, //notche margin between floating button and bottom appbar
        child: SizedBox(
          height: 10.h,
          child: Row(
            //children inside bottom appbar
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.indigoAccent,
                  size: 4.h,
                ),
                onPressed: () {},
              ),
              // SizedBox(
              //   width: 2.h,
              // ),
              IconButton(
                icon: Icon(
                  Icons.favorite_sharp,
                  color: Colors.grey,
                  size: 4.h,
                ),
                onPressed: () {},
              ),
              SizedBox(
                width: 16.h,
              ),
              IconButton(
                icon: Icon(
                  Icons.ad_units_sharp,
                  color: Colors.grey,
                  size: 4.h,
                ),
                onPressed: () {},
              ),
              // SizedBox(
              //   width: 3.h,
              // ),
              IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey,
                  size: 5.h,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),

      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(2.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 4.h,
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "X",
                        style: TextStyle(
                            fontFamily: "roboto",
                            fontSize: 4.h,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff3e45aa)),
                      ),
                      Text(
                        "E",
                        style: TextStyle(
                            fontFamily: "roboto",
                            fontSize: 4.h,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffa1dbf5)),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 4.h,
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 3.h,
          // ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Our Product",
                    style: TextStyle(
                        fontSize: 4.h,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  // SizedBox(
                  //   width: 30,
                  // ),
                  Row(
                    children: [
                      Text(
                        "sort by",
                        style: TextStyle(fontSize: 2.h, color: Colors.grey),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Colors.grey,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(2.h),
                alignment: Alignment.center,
                height: 7.h,
                // width: MediaQuery.of(context).size.width * 0.40,
                decoration: const BoxDecoration(
                  color: Color(0xFFffffff),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,

                      blurRadius: 10.0, // soften the shadow
                      // spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        3.0, // Move to right 5  horizontally
                        3.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/1672334109-jordan-3-1672334059.jpg',
                      height: 5.h,
                      width: 3.h,
                    ),
                    SizedBox(
                      width: 4,
                    ), //
                    Text(
                      "Sneakers",
                      style: TextStyle(
                          fontSize: 2.h,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff414591)),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(2.h),

                alignment: Alignment.center,
                height: 7.h,
                // width: MediaQuery.of(context).size.width * 0.40,
                decoration: const BoxDecoration(
                  color: Color(0xFFffffff),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey,
                  //
                  //     blurRadius: 10.0, // soften the shadow
                  //     // spreadRadius: 1.0, //extend the shadow
                  //     offset: Offset(
                  //       3.0, // Move to right 5  horizontally
                  //       3.0, // Move to bottom 5 Vertically
                  //     ),
                  //   )
                  // ],
                ),

                child: Row(
                  children: [
                    Image.asset(
                      'assets/71Kzw7+-c2L._UX425_.jpg',
                      height: 5.h,
                      width: 3.h,
                    ),
                    Text(
                      "Watch",
                      style: TextStyle(
                          fontSize: 2.h,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff414591)),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(2.h),

                alignment: Alignment.center,
                height: 7.h,
                // width: MediaQuery.of(context).size.width * 0.40,
                decoration: const BoxDecoration(
                  color: Color(0xFFffffff),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey,
                  //
                  //     blurRadius: 10.0, // soften the shadow
                  //     // spreadRadius: 1.0, //extend the shadow
                  //     offset: Offset(
                  //       3.0, // Move to right 5  horizontally
                  //       3.0, // Move to bottom 5 Vertically
                  //     ),
                  //   )
                  // ],
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/91fhh+-CT6L._SX425_.jpg',
                      height: 5.h,
                      width: 3.h,
                    ),
                    Text(
                      "Backpack",
                      style: TextStyle(
                          fontSize: 2.h,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff414591)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // SizedBox(
          //   height: 2.h,
          // ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.all(2.h),
                child: Container(
                  height: 60.h,
                  child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: images.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 19.0,
                          childAspectRatio: 3.h / 4.9.h,
                          mainAxisSpacing: 15),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => add_cart(
                                          imagenevigator:
                                              (images[index].image).toString(),
                                          pronamenevigatior:
                                              (images[index].Brand_Name)
                                                  .toString(),
                                          pricenamenevigatior:
                                              images[index].Price,
                                        )));
                          },
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.favorite_sharp,
                                          color: Colors.grey,
                                          size: 3.h,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                        images[index].image.toString(),
                                      ),
                                      radius: 8.h,
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Text(
                                      images[index].Brand_Name.toString(),
                                      style: TextStyle(
                                          fontSize: 2.h,
                                          color: Color(0xff414591)),
                                    ),
                                    Text(
                                      '\₹ ' +
                                          images[index].Price.toString() +
                                          '.00',
                                      style: TextStyle(
                                          fontSize: 3.h,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff414591)),
                                    ),
                                    RatingBar.builder(
                                      itemSize: 5.w,
                                      initialRating: 4,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                  ],
                                ),
                                decoration: const BoxDecoration(
                                  color: Color(0xFFffffff),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // Container(
                          //   alignment: Alignment.center,
                          //   padding: const EdgeInsets.all(8),
                          //   child: Column(
                          //     children: [
                          //       Align(
                          //         alignment: Alignment.centerRight,
                          //         child: IconButton(
                          //           icon: Icon(
                          //             Icons.favorite_sharp,
                          //             color: Colors.red,
                          //             size: 3.h,
                          //           ),
                          //           onPressed: () {},
                          //         ),
                          //       ),
                          //       CircleAvatar(
                          //         backgroundImage: AssetImage(
                          //           'assets/download (1).jpg',
                          //         ),
                          //         radius: 8.h,
                          //       ),
                          //       SizedBox(
                          //         height: 2.h,
                          //       ),
                          //       Text(
                          //         'Excee Sneekers',
                          //         style:
                          //             TextStyle(fontSize: 2.h, color: Color(0xff414591)),
                          //       ),
                          //       Text(
                          //         '\$260.00',
                          //         style: TextStyle(
                          //             fontSize: 3.h,
                          //             fontWeight: FontWeight.bold,
                          //             color: Color(0xff414591)),
                          //       ),
                          //       RatingBar.builder(itemSize: 5.w,
                          //         initialRating: 3,
                          //         minRating: 1,
                          //         direction: Axis.horizontal,
                          //         allowHalfRating: true,
                          //         itemCount: 5,
                          //         itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          //         itemBuilder: (context, _) => Icon(
                          //           Icons.star,
                          //           color: Colors.amber,
                          //         ),
                          //         onRatingUpdate: (rating) {
                          //           print(rating);
                          //         },
                          //       ),
                          //     ],
                          //   ),
                          //   decoration: const BoxDecoration(
                          //     color: Color(0xFFffffff),
                          //     borderRadius: BorderRadius.all(
                          //       Radius.circular(20),
                          //     ),
                          //   ),
                          // ),
                          // Container(
                          //   alignment: Alignment.center,
                          //   padding: const EdgeInsets.all(8),
                          //   child: Column(
                          //     children: [
                          //       Align(
                          //         alignment: Alignment.centerRight,
                          //         child: IconButton(
                          //           icon: Icon(
                          //             Icons.favorite_sharp,
                          //             color: Colors.grey,
                          //             size: 3.h,
                          //           ),
                          //           onPressed: () {},
                          //         ),
                          //       ),
                          //       CircleAvatar(
                          //         backgroundImage: AssetImage(
                          //           'assets/download (2).jpg',
                          //         ),
                          //         radius: 8.h,
                          //       ),
                          //       SizedBox(
                          //         height: 2.h,
                          //       ),
                          //       Text(
                          //         'Excee Sneekers',
                          //         style:
                          //         TextStyle(fontSize: 2.h, color: Color(0xff414591)),
                          //       ),
                          //       Text(
                          //         '\$290.00',
                          //         style: TextStyle(
                          //             fontSize: 3.h,
                          //             fontWeight: FontWeight.bold,
                          //             color: Color(0xff414591)),
                          //       ),
                          //       RatingBar.builder(itemSize: 5.w,
                          //         initialRating: 3,
                          //         minRating: 1,
                          //         direction: Axis.horizontal,
                          //         allowHalfRating: true,
                          //         itemCount: 5,
                          //         itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          //         itemBuilder: (context, _) => Icon(
                          //           Icons.star,
                          //           color: Colors.amber,
                          //         ),
                          //         onRatingUpdate: (rating) {
                          //           print(rating);
                          //         },
                          //       ),
                          //     ],
                          //   ),
                          //   decoration: const BoxDecoration(
                          //     color: Color(0xFFffffff),
                          //     borderRadius: BorderRadius.all(
                          //       Radius.circular(20),
                          //     ),
                          //   ),
                          // ),
                          // Container(
                          //   alignment: Alignment.center,
                          //   padding: const EdgeInsets.all(8),
                          //   child: Column(
                          //     children: [
                          //       Align(
                          //         alignment: Alignment.centerRight,
                          //         child: IconButton(
                          //           icon: Icon(
                          //             Icons.favorite_sharp,
                          //             color: Colors.grey,
                          //             size: 3.h,
                          //           ),
                          //           onPressed: () {},
                          //         ),
                          //       ),
                          //       CircleAvatar(
                          //         backgroundImage: AssetImage(
                          //           'assets/1672334109-jordan-3-1672334059.jpg',
                          //         ),
                          //         radius: 8.h,
                          //       ),
                          //       SizedBox(
                          //         height: 2.h,
                          //       ),
                          //       Text(
                          //         'Excee Sneekers',
                          //         style:
                          //         TextStyle(fontSize: 2.h, color: Color(0xff414591)),
                          //       ),
                          //       Text(
                          //         '\$270.00',
                          //         style: TextStyle(
                          //             fontSize: 3.h,
                          //             fontWeight: FontWeight.bold,
                          //             color: Color(0xff414591)),
                          //       ),
                          //       RatingBar.builder(itemSize: 5.w,
                          //         initialRating: 5,
                          //         minRating: 1,
                          //         direction: Axis.horizontal,
                          //         allowHalfRating: true,
                          //         itemCount: 5,
                          //         itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          //         itemBuilder: (context, _) => Icon(
                          //           Icons.star,
                          //           color: Colors.amber,
                          //         ),
                          //         onRatingUpdate: (rating) {
                          //           print(rating);
                          //         },
                          //       ),
                          //     ],
                          //   ),
                          //   decoration: const BoxDecoration(
                          //     color: Color(0xFFffffff),
                          //     borderRadius: BorderRadius.all(
                          //       Radius.circular(20),
                          //     ),
                          //   ),
                          // ),
                          // Container(
                          //   padding: const EdgeInsets.all(8),
                          //   child: const Text('Fifth', style: TextStyle(fontSize: 20)),
                          //   color: Colors.yellow,
                          // ),
                          // Container(
                          //   padding: const EdgeInsets.all(8),
                          //   child: const Text('Six', style: TextStyle(fontSize: 20)),
                          //   color: Colors.blue,
                          // ),
                        );
                      }),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
