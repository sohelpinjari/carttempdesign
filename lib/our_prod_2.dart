import 'package:carttempdesign/cart_order.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class add_cart extends StatefulWidget {
  String? imagenevigator;
  String? pronamenevigatior;
  int? pricenamenevigatior;

  add_cart(
      {Key? key,
      this.imagenevigator,
      this.pronamenevigatior,
      this.pricenamenevigatior})
      : super(key: key);

  @override
  State<add_cart> createState() => _add_cartState();
}

class products {
  String? image;
  String? Brand_Name;

  // String? Street_Wear;
  // String? Artist_Name;
  // String? size_s;
  // String? size_m;
  // String? size_l;

  int? Price;

  products(this.image, this.Brand_Name, this.Price);
}

class _add_cartState extends State<add_cart> {
  List<products> images = [
    products("assets/product_1_img2.png", "Brand Name", 240),
  ];
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  List<String> image = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // tripur= [
    // widget.coloridnevigator.()
    //
    // ];
    image = [
      widget.pronamenevigatior.toString(),
      widget.imagenevigator.toString(),
      widget.pricenamenevigatior.toString()
    ];
  }

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
        6,
        (index) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade300,
              ),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: Container(
                height: 280,
                child: Center(
                    child: Text(
                  "Page $index",
                  style: TextStyle(color: Colors.indigo),
                )),
              ),
            ));
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Icon(
                    Icons.arrow_back,
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
                            // fontFamily: "roboto",
                            fontSize: 4.h,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff3e45aa)),
                      ),
                      Text(
                        "E",
                        style: TextStyle(
                            // fontFamily: "roboto",
                            fontSize: 4.h,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffa1dbf5)),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.favorite_sharp,
                    color: Colors.white,
                    size: 2.4.h,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xfff75058),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xfff75058),
                        spreadRadius: 10,
                        // blurRadius: 2,
                        // offset: Offset(1, 1),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.5.h),
          Container(
            alignment: Alignment.center,
            height: 4.5.h,
            width: 15.w,
            child: Text(
              "30%",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            decoration: BoxDecoration(
                color: Color(0xffa1dbf5),
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          SizedBox(
            height: 1.h,
          ),
          Stack(children: <Widget>[
            CircleAvatar(
              backgroundColor: Color(0xfffeefe6),
              radius: 15.4.h,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 15.h,
                child: CircleAvatar(
                  backgroundColor: Color(0xfffeefe6),
                  radius: 12.4.h,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 12.h,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage(widget.imagenevigator.toString()),
                      radius: 10.h,
                    ),
                  ),
                ),
              ),
            ),
          ]),
          SizedBox(
            height: 1.h,
          ),
          SmoothPageIndicator(
            controller: controller,
            count: 5,
            axisDirection: Axis.horizontal,
            effect: SlideEffect(
                spacing: 8.0,
                radius: 15.0,
                dotWidth: 15.0,
                dotHeight: 16.0,
                paintStyle: PaintingStyle.fill,
                strokeWidth: 1.5,
                dotColor: Color(0xffdcecf3),
                activeDotColor: Color(0xffa1dbf5)),
          ),
          SizedBox(
            height: 3.h,
          ),
          Stack(
            children: <Widget>[
              Container(
                height: 40.9.h,
                width: 50.h,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 2.h),
                      Padding(
                        padding: EdgeInsets.all(3.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.pronamenevigatior.toString(),
                              style: TextStyle(
                                  fontSize: 3.5.h,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff494f86)),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0xfffdd446),
                                  size: 3.h,
                                ),
                                Text(
                                  "(4.5)",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 2.h,
                                      color: Color(0xff9698ac)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.h),
                        child: Row(
                          children: [
                            Text(
                              "Built for natural motion, the nike ",
                              style: TextStyle(
                                  fontSize: 2.1.h, color: Color(0xff8589ae)),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 1.5.h,
                              width: 1.5.h,
                              child: Text(
                                "R",
                                style: TextStyle(
                                    fontSize: 1.1.h, color: Color(0xff8589ae)),
                              ),
                              decoration: BoxDecoration(
                                  // color: Color(0xffa1dbf5),
                                  border: Border.all(),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                            Container(
                              child: Text(
                                " Flex shoes ",
                                style: TextStyle(
                                    fontSize: 2.1.h, color: Color(0xff8589ae)),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(3.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text("Size:",
                                  style: TextStyle(
                                    fontSize: 2.3.h,
                                    color: Color(0xffAEAEBE),
                                  )),
                            ),
                            Container(
                                padding: EdgeInsets.all(9),
                                alignment: Alignment.center,
                                height: 6.h,
                                width: 10.h,
                                child: Text(
                                  "US 6",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 2.3.h),
                                ),
                                decoration: BoxDecoration(
                                    color: Color(0xffa1dbf5),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)))),
                            Container(
                              child: Text(
                                "      US 7      US 8      US 9",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 2.3.h),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text("Available Color:",
                                  style: TextStyle(
                                    fontSize: 2.3.h,
                                    color: Color(0xffAEAEBE),
                                  )),
                            ),
                            Container(
                              height: 5.h,
                              width: 5.h,
                              decoration: BoxDecoration(
                                color: Color(0xfffdd446),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xffff9f3da),
                                    spreadRadius: 5,
                                    blurRadius: 5,
                                    offset: Offset(1, 1),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 5.h,
                              width: 5.h,
                              decoration: BoxDecoration(
                                color: Color(0xffff6565d),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xfffff7dddd),
                                    spreadRadius: 5,
                                    blurRadius: 5,
                                    offset: Offset(1, 1),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 5.h,
                              width: 5.h,
                              decoration: BoxDecoration(
                                color: Color(0xffff9a1da),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xfffff8eaf3),
                                    spreadRadius: 5,
                                    blurRadius: 5,
                                    offset: Offset(1, 1),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 5.h,
                              width: 5.h,
                              decoration: BoxDecoration(
                                color: Color(0xfff6ea2ff),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xffffe2eaf9),
                                    spreadRadius: 5,
                                    blurRadius: 5,
                                    offset: Offset(1, 1),
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
                      Positioned(
                        top: 0.h,
                        child: Container(
                          alignment: Alignment.center,
                          height: 10.9.h,
                          width: 50.h,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\₹ ' +
                                      widget.pricenamenevigatior.toString() +
                                      '.00',
                                  style: TextStyle(
                                      fontSize: 4.h,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => cart_order(
                                                  imagenevigator: widget
                                                      .imagenevigator
                                                      .toString(),
                                                  pronamenevigatior: widget
                                                      .pronamenevigatior
                                                      .toString(),
                                                  pricenamenevigatior: widget
                                                      .pricenamenevigatior,
                                                )));
                                  },
                                  child: Container(
                                    height: 7.h,
                                    width: 38.w,
                                    child: Padding(
                                      padding: EdgeInsets.all(1.h),
                                      child: Row(
                                        children: [
                                          IconButton(
                                            icon: Icon(
                                              Icons.shopping_cart,
                                              color: Colors.indigoAccent,
                                              size: 3.h,
                                            ),
                                            onPressed: () {},
                                          ),
                                          Text("Add to Cart"),
                                        ],
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xffff7f7f7),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xfffffffff),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //Container
                // Container(
                //   width: 250,
                //   height: 250,
                //   color: Colors.black,
                // ), //Container

                decoration: BoxDecoration(
                    color: Color(0xfff7f7f7),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
              ),
            ], //<Widget>[]
          ),
        ],
      ),
    ));
  }
}
