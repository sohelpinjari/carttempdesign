import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class thank_you extends StatefulWidget {
  String? id;
  String? idnev;
  String? imagenevigator;
  String? pronamenevigatior;
  int? pricenamenevigatior;
  thank_you({Key? key, this.id, this.idnev, this.imagenevigator,this.pronamenevigatior, this.pricenamenevigatior}) : super(key: key);

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
        body: Padding(
          padding: EdgeInsets.all(2.h),
          child: Column(


            children: [



              Container(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 3.h),
                ),
              ),
              SizedBox(height: 2.h),

              Container(
                height: 20.h,
                child: ListView.builder(
                  // padding: EdgeInsets.all(0),
                  // visualDensity: VisualDensity(horizontal: 4, vertical: 4),
                  // horizontalTitleGap: 0.0,

                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      // padding: EdgeInsets.all(0),
                      // alignment: Alignment.center,
                      height: 20.h,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Color(0xfffafafa),
                        border: Border.all(color: Color(0xffe8e8e8)),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              widget.imagenevigator.toString(),
                              height: 20.h,
                              width: 35.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(1.h),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          widget.pronamenevigatior
                                              .toString(),
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
                                          '\₹ ' +
                                              widget.pricenamenevigatior.toString() +
                                              '.00',
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
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [],
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
                // padding: EdgeInsets.all(0),
                // alignment: Alignment.center,
                height: 25.h,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  border: Border.all(color: Color(0xffe8e8e8)),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: EdgeInsets.all(3.h),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Book'),
                          Text(
                            '\₹ ' + '${price!.toInt()}' + '.00',
                            style: TextStyle(
                                color: Color(0xff5a5a9f),
                                fontSize: 2.5.h,
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
                            '₹ ' + tax.toString() + '.00',
                            // '\₹ ' +'${price!.toInt()}'+ '.00',
                            style: TextStyle(
                                color: Color(0xff5a5a9f),
                                fontSize: 2.5.h,
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
                            '₹ ' + finalprice.toString() + '.00',
                            // '\₹ ' +'${price!.toInt()}'+ '.00',
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
              ),

              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Order ID: ${widget.idnev}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 2.h),
                ),
              ),


              SizedBox(height: 2.h,),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Transaction ID: " + widget.id.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 2.h),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
