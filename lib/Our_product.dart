import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';

class ourproduct extends StatefulWidget {
  const ourproduct({Key? key}) : super(key: key);

  @override
  State<ourproduct> createState() => _ourproductState();
}

class _ourproductState extends State<ourproduct> {
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
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {},
        backgroundColor: Colors.indigoAccent,
        elevation: 0,
        child: Container(
          height: 15.h,
          width: 15.h,
          child: Icon(
            Icons.shopping_cart,
            color: Color(0xffa1dbf5),
          ),
          decoration: BoxDecoration(
            color: Color(0xff3e45aa),
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xfff7f7f7),
                spreadRadius: 10,
                // blurRadius: 20,
                offset: Offset(3, 5),
              ),
            ],
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
            20, //notche margin between floating button and bottom appbar
        child: SizedBox(
          height: 12.h,
          child: Row(
            //children inside bottom appbar
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                width: 1.h,
              ),
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.indigoAccent,
                  size: 4.h,
                ),
                onPressed: () {},
              ),
              SizedBox(
                width: 2.h,
              ),
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
              SizedBox(
                width: 3.h,
              ),
              IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey,
                  size: 5.h,
                ),
                onPressed: () {},
              ),
              SizedBox(
                width: 1.h,
              ),
            ],
          ),
        ),
      ),

      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 5.h,
                  ),
                ),
              ),
              SizedBox(
                width: 90,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      "X",
                      style: TextStyle(
                        fontFamily: "roboto",
                          fontSize: 5.h,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3e45aa)),
                    ),
                    Text(
                      "E",
                      style: TextStyle(
                          fontFamily: "roboto",
                          fontSize: 5.h,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffa1dbf5)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 90,
              ),
              Container(
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 5.h,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Our Product",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 30,
                ),
                Row(
                  children: [
                    Text(
                      "sort by",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
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
          Padding(
            padding: EdgeInsets.only(
              top: 4.h,
              left: 1.h,
              right: 1.h,
            ),
            child: Row(
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
          ),
          SizedBox(
            height: 2.h,
          ),
          Container(
            height: 45.h,
            child: GridView.extent(
              scrollDirection: Axis.vertical,
              primary: false,
              padding: const EdgeInsets.all(16),
              crossAxisSpacing: 3.h,
              mainAxisSpacing: 3.h,
              maxCrossAxisExtent: 200.0,
              childAspectRatio: 3 / 5.2,
              children: <Widget>[
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
                          'assets/download.jpg',
                        ),
                        radius: 8.h,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        'Excee Sneekers',
                        style:
                        TextStyle(fontSize: 2.h, color: Color(0xff414591)),
                      ),
                      Text(
                        '\$240.00',
                        style: TextStyle(
                            fontSize: 3.h,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff414591)),
                      ),
                      RatingBar.builder(itemSize: 5.w,
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
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
                            color: Colors.red,
                            size: 3.h,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/download (1).jpg',
                        ),
                        radius: 8.h,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        'Excee Sneekers',
                        style:
                            TextStyle(fontSize: 2.h, color: Color(0xff414591)),
                      ),
                      Text(
                        '\$260.00',
                        style: TextStyle(
                            fontSize: 3.h,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff414591)),
                      ),
                      RatingBar.builder(itemSize: 5.w,
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
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
                          'assets/download (2).jpg',
                        ),
                        radius: 8.h,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        'Excee Sneekers',
                        style:
                        TextStyle(fontSize: 2.h, color: Color(0xff414591)),
                      ),
                      Text(
                        '\$290.00',
                        style: TextStyle(
                            fontSize: 3.h,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff414591)),
                      ),
                      RatingBar.builder(itemSize: 5.w,
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
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
                          'assets/1672334109-jordan-3-1672334059.jpg',
                        ),
                        radius: 8.h,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        'Excee Sneekers',
                        style:
                        TextStyle(fontSize: 2.h, color: Color(0xff414591)),
                      ),
                      Text(
                        '\$270.00',
                        style: TextStyle(
                            fontSize: 3.h,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff414591)),
                      ),
                      RatingBar.builder(itemSize: 5.w,
                        initialRating: 5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
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
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
