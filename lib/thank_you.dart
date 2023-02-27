import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class thank_you extends StatefulWidget {
  String? id;
  thank_you({Key? key, this.id}) : super(key: key);

  @override
  State<thank_you> createState() => _thank_youState();
}

class _thank_youState extends State<thank_you> {
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
                  'Thank You ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 3.h),
                ),
              ),
              SizedBox(height: 2.h),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "ID: " + widget.id.toString(),
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
