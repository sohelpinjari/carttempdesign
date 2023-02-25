import 'package:carttempdesign/PaypalPayment.dart';
import 'package:carttempdesign/payment_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_paypal/flutter_paypal.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';

class check_out_details extends StatefulWidget {
  String? imagenevigator;
  String? pronamenevigatior;
  int? pricenamenevigatior;
  check_out_details(
      {Key? key,
      this.imagenevigator,
      this.pronamenevigatior,
      this.pricenamenevigatior})
      : super(key: key);

  @override
  State<check_out_details> createState() => _check_out_detailsState();
}

class _check_out_detailsState extends State<check_out_details> {
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
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(2.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                "Checkout Details",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 3.h),
              ),
            ),
            SizedBox(height: 3.h),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    height: 25.h,
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
                                                  '${price!.toInt()}' +
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
                    height: 12.h,
                    child: ListView.builder(
                      // padding: EdgeInsets.all(0),
                      // visualDensity: VisualDensity(horizontal: 4, vertical: 4),
                      // horizontalTitleGap: 0.0,

                      itemCount: 1,
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
                                    'assets/paypal_PNG7.png',
                                    // widget.imagenevigator.toString(),
                                    height: 4.h,
                                    width: 15.w,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  '**182',
                                  style: TextStyle(
                                      fontSize: 2.5.h,
                                      fontWeight: FontWeight.bold),
                                ),
                                // GestureDetector(
                                //   onTap: () {
                                //     Navigator.push(
                                //             context,
                                //             MaterialPageRoute(
                                //                 builder: (context) => payment_method(
                                //                   imagenevigator:
                                //                   widget.imagenevigator.toString(),
                                //                   pronamenevigatior:
                                //                   widget.pronamenevigatior.toString(),
                                //                   pricenamenevigatior:    widget.pricenamenevigatior,
                                //
                                //
                                //                 )));
                                //
                                //         },
                                //   child: Text('Change',
                                //       style: TextStyle(
                                //           fontSize: 2.5.h,
                                //           fontWeight: FontWeight.bold,
                                //           color: Color(0xff5a5a9f))),
                                // ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
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
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (BuildContext context) =>
                          //         UsePaypal(
                          //             sandboxMode: true,
                          //             clientId:
                          //             "Ad4MfIRjqBNOhnvGxvg-FocKsc2xTbYa6x1Wxmust02CZtOx3YzzTsWotxwHeIcetWUn6BFXAenALwxj",
                          //             secretKey:
                          //             "EFJUgQz4LImHw32NyKYwlQKapYJBo4hhkLHYCCD1CyVEGtuGCWxkDhJ7Umq749kf6zt2pDP-3eIN96kJ",
                          //             returnURL:
                          //             "https://samplesite.com/return",
                          //             cancelURL:
                          //             "https://samplesite.com/cancel",
                          //             transactions: [
                          //               {
                          //                 "amount": {
                          //                   "total":
                          //                   '245',
                          //                   "currency": "USD",
                          //                   "details": {
                          //                     "subtotal":
                          //                     '240',
                          //                     "shipping": '0',
                          //                     "shipping_discount": 0
                          //                   }
                          //                 },
                          //                 "description":
                          //                 "The payment transaction description.",
                          //                 // "payment_options": {
                          //                 //   "allowed_payment_method":
                          //                 //       "INSTANT_FUNDING_SOURCE"
                          //                 // },
                          //                 "item_list": {
                          //                   "items": [
                          //                     {
                          //                       "name":
                          //                       'sohel',
                          //                       "price":
                          //                       '245',
                          //                       "quantity":1,
                          //                       "currency": "USD"
                          //                     }
                          //                   ],
                          //
                          //                   // shipping address is not required though
                          //                   "shipping_address": {
                          //                     "recipient_name":
                          //                     "asd",
                          //                     "line1":
                          //                     "asdasd",
                          //                     "line2":
                          //                     "ddd",
                          //                     "city":
                          //                     "zcxzcx",
                          //                     "country_code": "US",
                          //                     "postal_code": "395004",
                          //                     "phone": "1020503305",
                          //                     "state": "Texas"
                          //                   },
                          //                 }
                          //               }
                          //             ],
                          //             note:
                          //             "Contact us for any questions on your order.",
                          //             onSuccess: (Map params) async {
                          //               Fluttertoast.showToast(
                          //                   msg:
                          //                   "Paid : \$ 245",
                          //                   toastLength:
                          //                   Toast.LENGTH_SHORT,
                          //                   gravity: ToastGravity.CENTER,
                          //                   timeInSecForIosWeb: 1,
                          //                   backgroundColor: Colors.red,
                          //                   textColor: Colors.white,
                          //                   fontSize: 16.0);
                          //
                          //               Text("onSuccess: $params");
                          //             },
                          //             onError: (error) {
                          //               Fluttertoast.showToast(
                          //                   msg: "Connection Error",
                          //                   toastLength:
                          //                   Toast.LENGTH_SHORT,
                          //                   gravity: ToastGravity.CENTER,
                          //                   timeInSecForIosWeb: 1,
                          //                   backgroundColor: Colors.red,
                          //                   textColor: Colors.white,
                          //                   fontSize: 16.0);
                          //
                          //               print("onError: $error");
                          //             },
                          //             onCancel: (params) {
                          //               Fluttertoast.showToast(
                          //                   msg: "Payment Cancelled",
                          //                   toastLength:
                          //                   Toast.LENGTH_SHORT,
                          //                   gravity: ToastGravity.CENTER,
                          //                   timeInSecForIosWeb: 1,
                          //                   backgroundColor: Colors.red,
                          //                   textColor: Colors.white,
                          //                   fontSize: 16.0);
                          //               print('cancelled: $params');
                          //             }),
                          //   ),
                          // );

                          ////github code
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) => UsePaypal(
                                    sandboxMode: true,
                                    clientId:
                                    "AeTlljGALqTeaPOFRqoMUEegumbHe7eI5k8gZQiF9wb1dnVEocU35IR8xSf76mT62PmNXJ8IPXjQJCJ3",
                                    secretKey:
                                    "EFE5YRnFi0Ut-QNZSobX-gEmS9g7-cAUN8Z-DlidjIngCnk8inPkTgFXfAE9hJK7cM1fVbs6s0pfH3__",
                                    returnURL: "https://samplesite.com/return",
                                    cancelURL: "https://samplesite.com/cancel",
                                    transactions:  [

                                      {
                                        "amount": {
                                          "total": widget.pricenamenevigatior,
                                          "currency": "USD",
                                          "details": {
                                            "subtotal": widget.pricenamenevigatior,
                                            "shipping": '0',
                                            "shipping_discount": 0
                                          }
                                        },
                                        "description":
                                        "The payment transaction description.",
                                        // "payment_options": {
                                        //   "allowed_payment_method":
                                        //       "INSTANT_FUNDING_SOURCE"
                                        // },
                                        "item_list": {
                                          "items": [
                                            {
                                              "name": "A demo product",
                                              "quantity": 1,
                                              "price": widget.pricenamenevigatior,
                                              "currency": "USD"
                                            }
                                          ],

                                          // shipping address is not required though
                                          "shipping_address": {
                                            "recipient_name": "Jane Foster",
                                            "line1": "Travis County",
                                            "line2": "",
                                            "city": "Austin",
                                            "country_code": "US",
                                            "postal_code": "73301",
                                            "phone": "+00000000",
                                            "state": "Texas"
                                          },
                                        }
                                      }
                                    ],
                                    note: "Contact us for any questions on your order.",
                                    onSuccess: (Map params) async {
                                      Fluttertoast.showToast(
                                          msg:


                                          "Paid : \$ ${widget.pricenamenevigatior}",
                                          toastLength:
                                          Toast.LENGTH_SHORT,
                                          // gravity: ToastGravity.CENTER,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.red,
                                          textColor: Colors.white,
                                          fontSize: 16.0);
                                      Text("onSuccess: $params");

                                      


                                    },
                                    onError: (error) {
                                      Fluttertoast.showToast(
                                          msg: "Connection Error",
                                          toastLength:
                                          Toast.LENGTH_SHORT,
                                          // gravity: ToastGravity.CENTER,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.red,
                                          textColor: Colors.white,
                                          fontSize: 16.0);
                                      print("onError: $error");
                                    },
                                    onCancel: (params) {
                                      Fluttertoast.showToast(
                                          msg: "Payment Cancelled",
                                          toastLength:
                                          Toast.LENGTH_SHORT,
                                          // gravity: ToastGravity.CENTER,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.red,
                                          textColor: Colors.white,
                                          fontSize: 16.0);
                                      print('cancelled: $params');
                                    }



                                    ),
                              ));



                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (BuildContext context) => PaypalPayment(
                          //       onFinish: (number) async {
                          //
                          //         // payment done
                          //         print('order id: '+number);
                          //
                          //       },
                          //     ),
                          //   ),
                          // );
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (BuildContext context) =>
                          //         UsePaypal(
                          //             sandboxMode: true,
                          //             clientId:
                          //             "AX8Iqc4WKBgxRXtEl_hNIb7QN6roR4dxGgVbGrR6WuXTncqGyy1kb-xjfsJ_4RPKtsyVpOk0ia04Lv_g",
                          //             secretKey:
                          //             "EGFMgAdjWR-Ls0WqGnCzrjRyO7plbJcLCcq6vBL8WZxkl2PQvOiUqp0x7hgEkquLyMpr5CmgLc0CWBRl",
                          //             returnURL:
                          //             "https://samplesite.com/return",
                          //             cancelURL:
                          //             "https://samplesite.com/cancel",
                          //             transactions: [
                          //               {
                          //                 "amount": {
                          //                   "total":
                          //                   '${controller.totalPrice.value}',
                          //                   "currency": "USD",
                          //                   "details": {
                          //                     "subtotal":
                          //                     '${controller.totalPrice}',
                          //                     "shipping": '0',
                          //                     "shipping_discount": 0
                          //                   }
                          //                 },
                          //                 "description":
                          //                 "The payment transaction description.",
                          //                 // "payment_options": {
                          //                 //   "allowed_payment_method":
                          //                 //       "INSTANT_FUNDING_SOURCE"
                          //                 // },
                          //                 "item_list": {
                          //                   "items": [
                          //                     {
                          //                       "name":
                          //                       '${controller.cartProducts[0].name}',
                          //                       "price":
                          //                       '${controller.totalPrice.value}',
                          //                       "quantity": controller
                          //                           .cartProducts[0]
                          //                           .quantity,
                          //                       "currency": "USD"
                          //                     }
                          //                   ],
                          //
                          //                   // shipping address is not required though
                          //                   "shipping_address": {
                          //                     "recipient_name":
                          //                     "${stepfalse!.datapickk!.name}",
                          //                     "line1":
                          //                     "${stepfalse!.datapickk!.add}",
                          //                     "line2":
                          //                     "${stepfalse!.datapickk!.add1}",
                          //                     "city":
                          //                     "${stepfalse!.datapickk!.city}",
                          //                     "country_code": "US",
                          //                     "postal_code": "${stepfalse!.datapickk!.zip}",
                          //                     "phone": "${stepfalse!.datapickk!.phone}",
                          //                     "state": "Texas"
                          //                   },
                          //                 }
                          //               }
                          //             ],
                          //             note:
                          //             "Contact us for any questions on your order.",
                          //             onSuccess: (Map params) async {
                          //               Fluttertoast.showToast(
                          //                   msg:
                          //                   "Paid : \$100",
                          //                   toastLength:
                          //                   Toast.LENGTH_SHORT,
                          //                   gravity: ToastGravity.CENTER,
                          //                   timeInSecForIosWeb: 1,
                          //                   backgroundColor: Colors.red,
                          //                   textColor: Colors.white,
                          //                   fontSize: 16.0);
                          //               // controller.isEmptyCart;
                          //               Text("onSuccess: $params");
                          //             },
                          //             onError: (error) {
                          //               Fluttertoast.showToast(
                          //                   msg: "Connection Error",
                          //                   toastLength:
                          //                   Toast.LENGTH_SHORT,
                          //                   gravity: ToastGravity.CENTER,
                          //                   timeInSecForIosWeb: 1,
                          //                   backgroundColor: Colors.red,
                          //                   textColor: Colors.white,
                          //                   fontSize: 16.0);
                          //
                          //               print("onError: $error");
                          //             },
                          //             onCancel: (params) {
                          //               Fluttertoast.showToast(
                          //                   msg: "Payment Cancelled",
                          //                   toastLength:
                          //                   Toast.LENGTH_SHORT,
                          //                   gravity: ToastGravity.CENTER,
                          //                   timeInSecForIosWeb: 1,
                          //                   backgroundColor: Colors.red,
                          //                   textColor: Colors.white,
                          //                   fontSize: 16.0);
                          //               print('cancelled: $params');
                          //             }),
                          //   ),
                          // );
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => payment_method(
                          //           // imagenevigator:
                          //           // widget.imagenevigator.toString(),
                          //           // pronamenevigatior:
                          //           // widget.pronamenevigatior.toString(),
                          //           // pricenamenevigatior:    widget.pricenamenevigatior,
                          //
                          //
                          //         )));

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
                                  "Pay Now",
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
          ],
        ),
      ),
    ));
  }
}
