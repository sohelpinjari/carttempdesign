import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class cart_order extends StatefulWidget {
  String? imagenevigator;
  String? pronamenevigatior;
  int? pricenamenevigatior;

  cart_order(
      {Key? key,
      this.imagenevigator,
      this.pronamenevigatior,
      this.pricenamenevigatior})
      : super(key: key);

  @override
  State<cart_order> createState() => _cart_orderState();
}

class _cart_orderState extends State<cart_order> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool? check = false;

  int sum = 0;
  int sumindex = 0;
  List<String> tabs = ["Blocked", "Cart"];
  List<bool> checkbox = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  int cart = 0;
  int i = 1;
int? price;
int? intialprice;
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      price = widget.pricenamenevigatior;
      intialprice = widget.pricenamenevigatior;

    });
  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey.shade300,
      // drawer: drawer(context),
      key: _scaffoldKey,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 81.h,
              child: ListView.builder(
                // padding: EdgeInsets.all(0),
                // visualDensity: VisualDensity(horizontal: 4, vertical: 4),
                // horizontalTitleGap: 0.0,

                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    // padding: EdgeInsets.all(0),
                    // alignment: Alignment.center,
                    height: 15.h,
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Color(0xfffafafa),
                      border: Border.all(color: Color(0xffe8e8e8)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            widget.imagenevigator.toString(),
                            height: 15.h,
                            width: 25.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                        // SizedBox(
                        //   width: 5.w,
                        // ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(1.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        widget.pronamenevigatior.toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 2.3.h),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 1.5.h),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                     '\₹ ' +'${price!.toInt()}'+ '.00',
                                        style: TextStyle(
                                            color: Color(0xff5a5a9f),
                                            fontSize: 2.5.h,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 1.3.w),
                            Padding(
                              padding: EdgeInsets.all(0.2.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        i++;
                                        price = price! + intialprice!;

                                        print(price);
                                      });
                                    },
                                    child: Container(
                                      height: 5.h,
                                      width: 18.w,
                                      child: Icon(
                                        Icons.add,
                                        color: Color(0xff5a5a9f),
                                      ),

                                      // child: Checkbox(
                                      //   // checkColor: Color(0xff333389),
                                      //   activeColor: Color(0xff333389),
                                      //
                                      //   value: checkbox[index],
                                      //   onChanged: (value) {
                                      //     setState(() {
                                      //       checkbox[index] = value!;
                                      //     });
                                      //
                                      //     // Handle checkbox value change
                                      //   },
                                      // ),
                                    ),
                                  ),
                                  SizedBox(height: 0.2.h),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 5.h,
                                    width: 18.w,
                                    child: Text(i.toString()),

                                    // child: Checkbox(
                                    //   // checkColor: Color(0xff333389),
                                    //   activeColor: Color(0xff333389),
                                    //
                                    //   value: checkbox[index],
                                    //   onChanged: (value) {
                                    //     setState(() {
                                    //       checkbox[index] = value!;
                                    //     });
                                    //
                                    //     // Handle checkbox value change
                                    //   },
                                    // ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (i > 1) {
                                          i--;
                                          price = price! - intialprice!;
                                          print(price);
                                        }
                                      });
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(left: 3.9.w),
                                      // decoration: BoxDecoration(
                                      //   color: Color(0xffe2e2ed),
                                      //
                                      //   // border: Border.all(
                                      //   //   // color:  Color(0xff5a5a9f),
                                      //   // ),
                                      //   borderRadius: BorderRadius.circular(20),
                                      // ),

                                      child: Icon(
                                        Icons.minimize,
                                        color: Color(0xff5a5a9f),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
             Container(
               height: 15.h,
               decoration: BoxDecoration(
                   color: Color(0xfff7f7f7),
                   borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(40),
                       topRight: Radius.circular(40))),
               child: Padding(
                 padding:  EdgeInsets.symmetric(horizontal: 2.h),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\₹ ' +  "$price"+ '.00',
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
                                  imagenevigator:
                                  widget.imagenevigator.toString(),
                                  pronamenevigatior:
                                  widget.pronamenevigatior.toString(),
                                  pricenamenevigatior:    widget.pricenamenevigatior,


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
                                  Icons.exit_to_app,
                                  color: Color(0xff99b7e2),
                                  size: 3.h,
                                ),
                                onPressed: () {},
                              ),
                              Text("Check Out", style: TextStyle(color: Color(0xff99b7e2)),),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff3e45aa),
                          borderRadius:
                          BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                    ),
                  ],
            ),
               ),
             ),

          ],
        ),
      ),
    )
    );
  }
}
