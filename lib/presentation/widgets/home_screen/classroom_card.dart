import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nfham2/extensions/padding_extension.dart';

class ClassroomCard extends StatelessWidget {
  final int yearNumber;
  final dynamic onTap;

  const ClassroomCard({Key? key, required this.yearNumber, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        // width: 110.w,
        // height: 110.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                spreadRadius: 2.r,
                blurRadius: 2.r,
                offset: const Offset(2, 2),
                color: Colors.grey.shade300,
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'الصف',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              yearNumber.toString(),
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    ).hP16;
  }
}
