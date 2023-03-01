import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class thank_you extends StatefulWidget {
  String? id;
  String? idnev;
  String? imagenevigator;
  String? pronamenevigatior;
  int? pricenamenevigatior;
  int? tax;
  int? finalprice;
  thank_you(
      {Key? key,
      this.tax,
      this.finalprice,
      this.id,
      this.idnev,
      this.imagenevigator,
      this.pronamenevigatior,
      this.pricenamenevigatior})
      : super(key: key);

  @override
  State<thank_you> createState() => _thank_youState();
}

class _thank_youState extends State<thank_you> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      widget.idnev.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff5821e),
        body: Stack(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(2.h),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 4.h,
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Transaction Detail',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 3.h),
                  ),
                ),
                SizedBox(height: 4.h),
                Container(
                  // padding: EdgeInsets.all(0),
                  // alignment: Alignment.center,
                  height: 70.h,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Color(0xfffafafa),
                    border: Border.all(color: Color(0xffe8e8e8)),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(3.h),
                        child: Column(
                          children: [
                            SizedBox(height: 1.h),
                            Container(
                              child: Text("Thank You",
                                  style: TextStyle(
                                      fontSize: 3.h, color: Colors.green)),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Container(
                              child: Text("Transaction Successful",
                                  style: TextStyle(fontSize: 2.h)),
                            ),
                            SizedBox(height: 1.h),
                            Container(
                              height: 20.h,
                              child: ListView.builder(
                                // padding: EdgeInsets.all(0),
                                // visualDensity: VisualDensity(horizontal: 4, vertical: 4),
                                // horizontalTitleGap: 0.0,

                                itemCount: 1,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    alignment: Alignment.center,
                                    // padding: EdgeInsets.all(0),
                                    // alignment: Alignment.center,
                                    height: 20.h,
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      color: Color(0xfffafafa),
                                      // border: Border.all(color: Color(0xffe8e8e8)),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: Image.asset(
                                            widget.imagenevigator.toString(),
                                            height: 20.h,
                                            width: 30.w,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 2.h),
                                            Padding(
                                              padding: EdgeInsets.all(1.h),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        widget.pronamenevigatior
                                                            .toString(),
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 2.h),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 1.5.h),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        '\₹ ' +
                                                            widget
                                                                .pricenamenevigatior
                                                                .toString() +
                                                            '.00',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff5a5a9f),
                                                            fontSize: 2.5.h,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            // SizedBox(width: 1.3.w),
                                            // Padding(
                                            //   padding: EdgeInsets.all(0.2.h),
                                            //   child: Column(
                                            //     crossAxisAlignment:
                                            //     CrossAxisAlignment.start,
                                            //     mainAxisAlignment:
                                            //     MainAxisAlignment.start,
                                            //     children: [],
                                            //   ),
                                            // ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Book'),
                                Text(
                                  '\₹ ' +
                                      widget.pricenamenevigatior.toString() +
                                      '.00',
                                  style: TextStyle(
                                      color: Color(0xff5a5a9f),
                                      fontSize: 2.3.h,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(height: 3.h),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Tax & Fees'),
                                Text(
                                  '₹ ' + widget.tax.toString() + '.00',
                                  // '\₹ ' +'${price!.toInt()}'+ '.00',
                                  style: TextStyle(
                                      color: Color(0xff5a5a9f),
                                      fontSize: 2.3.h,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(height: 1.h),
                            Divider(
                              height: 3.h,
                              color: Colors.black,
                            ),
                            SizedBox(height: 2.h),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Total'),
                                Text(
                                  '₹ ' + widget.finalprice.toString() + '.00',
                                  // '\₹ ' +'${price!.toInt()}'+ '.00',
                                  style: TextStyle(
                                      color: Color(0xff5a5a9f),
                                      fontSize: 2.3.h,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 13.h,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(3.h),
                              bottomRight: Radius.circular(3.h)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(2.1.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                // alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Text(
                                      "Order ID ",
                                      style: TextStyle(fontSize: 2.h),
                                    ),
                                    Text(
                                      ":  ${widget.idnev}",
                                      style: TextStyle(
                                        fontSize: 2.5.h,
                                        color: Color(0xff5a5a9f),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Container(
                                // alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Text(
                                      "Transaction ID : ",
                                      style: TextStyle(fontSize: 2.h),
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Expanded(
                                      child: Text(
                                        widget.id.toString(),
                                        style: TextStyle(
                                          fontSize: 2.h,
                                          color: Color(0xff5a5a9f),
                                        ),
                                        maxLines: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 14.h,
            left: 45.w,
            child: Container(
              height: 12.5.w,
              width: 12.5.w,
              child: Icon(
                Icons.check,
                color: Colors.white,
                size: 4.h,
              ),

              decoration: BoxDecoration(
                  color: Colors.green,

                  //DecorationImage
                  border: Border.all(color: Colors.white), //Border.all
                  // borderRadius: BorderRadius.circular(25),
                  shape: BoxShape.circle), //BoxDecoration
            ),
          ),
        ]),
      ),
    );
  }
}
