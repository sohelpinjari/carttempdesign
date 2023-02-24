import 'package:carttempdesign/check_out_details.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Our_product.dart';

class payment_method extends StatefulWidget {

  String? imagenevigator;
  String? pronamenevigatior;
  int? pricenamenevigatior;
   payment_method({Key? key, this.imagenevigator, this.pronamenevigatior, this.pricenamenevigatior, }) : super(key: key);

  @override
  State<payment_method> createState() => _payment_methodState();
}
class products {
  String? image;

String? Brand_Name;
// // String? Street_Wear;
// // String? Artist_Name;
// // String? size_s;
// // String? size_m;
// // String? size_l;
//
// int? Price;


  products(this.image, this.Brand_Name);
}


class _payment_methodState extends State<payment_method> {
  bool? check = false;

  // bool isChecked = false;
  List<products> images = [
    products("assets/Mastercard-logo.png", "**182", ),
    products("assets/paypal_PNG7.png", "**182", ),
    products("assets/images.png", "**182", ),

  ];
  List<String> image = [];
  List<bool> checkbox = [
    false,
    false,
    false,

  ];
  int cart = 0;
  int i = 1;
  int? price;
  int? intialprice;
  int? finalprice;
  int tax = 5;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      price = widget.pricenamenevigatior;
      intialprice = widget.pricenamenevigatior;
      finalprice = price! + tax;
      image = [

        widget.imagenevigator.toString(),

      ];
    });
  }

  // List<bool> radio = [
  //   true
  //
  // ];

  // String? gender = "male";

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
                "Payment Methods",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 3.h),
              ),
            ),
            Container(
              height: 37.h,
              child: ListView.builder(
                // padding: EdgeInsets.all(0),
                // visualDensity: VisualDensity(horizontal: 4, vertical: 4),
                // horizontalTitleGap: 0.0,

                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    // padding: EdgeInsets.all(0),
                    // alignment: Alignment.center,
                    height: 10.h,
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Color(0xfffafafa),
                      border: Border.all(color: Color(0xffe8e8e8)),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(3.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                               images[index].image.toString(),
                              // 'assets/preview.jpg',
                              // widget.imagenevigator.toString(),
                              height: 4.h,
                              width: 15.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            images[index].Brand_Name.toString(),
                            style: TextStyle(
                                fontSize: 2.5.h,
                                fontWeight: FontWeight.bold),
                          ),

                    // InkWell(
                    //   onTap: () {
                    //     setState(() {
                    //       isChecked = !isChecked;
                    //
                    //
                    //     });
                    //   },
                    //   child: Container(
                    //
                    //     width: 24,
                    //     height: 24,
                    //     decoration: BoxDecoration(
                    //
                    //       shape: BoxShape.circle,
                    //       border: Border.all(color: Colors.grey),
                    //       color: isChecked ? Colors.orange : Colors.transparent,
                    //     ),
                    //     child: Icon(
                    //       Icons.circle_outlined,
                    //       color: Colors.white,
                    //       size: 22,
                    //     ),
                    //   ),
                    // )
                          Container(
                            // height: 5.h,
                            // width: 15.w,
                            child:
                          //     Radio(
                          //  groupValue: gender,
                          //      value: images.length ,
                          // onChanged: (val) {
                          //   print(gender);
                          //   setState(() {
                          //     gender = val as String?;
                          //   });
                            Transform.scale(
                              scale: 1.5,
                              child:
                              Checkbox(
                                  materialTapTargetSize: MaterialTapTargetSize.padded,
                                  shape:RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15.0),
                                    ),),

                                // checkColor: Color(0xff333389),
                                activeColor: Color(0xff333389),

                                value: checkbox[index],
                                onChanged: (value) {
                                  setState(() {
                                    checkbox[index] = value!;
                                    if (index == 0 && checkbox[0]) {
                                      checkbox[1] = false;
                                      checkbox[2] = false;

                                    } else if (index != 0 && checkbox[index]) {
                                      checkbox[0] = false;


                                    }
                                  });

                                  // Handle checkbox value change
                                },
                              ),
                            ),
                          )],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height:35.h),
            Container(
              height: 8.h,
              decoration: BoxDecoration(
                  color: Color(0xfff7f7f7),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => check_out_details(
                              imagenevigator:
                              widget.imagenevigator.toString(),
                              pronamenevigatior:
                              widget.pronamenevigatior.toString(),
                              pricenamenevigatior:    widget.pricenamenevigatior,


                            )));

                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 5.h,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.all(1.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Confirm",
                            style: TextStyle(color: Color(0xff99b7e2)),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff3e45aa),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
