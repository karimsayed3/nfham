import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../screens/materials_details_screen/material_details_screen.dart';

class ImageWithMaterialName extends StatelessWidget {
  final String materialName;
  final String image;

  const ImageWithMaterialName(
      {Key? key, required this.materialName, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const MaterialDetailsScreen(),));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.r),
              bottomRight: Radius.circular(10.r)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              spreadRadius: 3,
              blurRadius: 2,
              offset: const Offset(2, 3),
              color: Colors.grey.shade300,
            ),
          ],
        ),
        height: 100.h,
        child: Row(
          children: [
            SizedBox(
              width: 80.w,
              height: 100.h,
              child: Image(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                height: 100.h,
                color: Colors.blueGrey,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    materialName,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
