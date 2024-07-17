import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DividerWithYearName extends StatelessWidget {
  final String yearName;
  const DividerWithYearName({Key? key, required this.yearName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Container(
            width: 100.w,
            height: 4.h,
            color: Colors.grey,
          ),
          SizedBox(width: 10.w,),
          Text(
              yearName,
            style: TextStyle(
              fontSize: 18.sp,
              color: Colors.grey,
            ),
          ),
          SizedBox(width: 10.w,),
          Container(
            width: 100.w,
            height: 4.h,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
