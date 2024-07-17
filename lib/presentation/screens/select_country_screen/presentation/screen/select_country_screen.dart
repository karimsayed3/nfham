import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nfham2/constants/colors.dart';
import 'package:nfham2/extensions/padding_extension.dart';

import '../../../home_screen/home_screen.dart';

class SelectCountryScreen extends StatelessWidget {
  const SelectCountryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.primary,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                "المناهج المتاحة",
                style: TextStyle(
                  fontSize: 25.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: ContryItemWidget(
                              countryName: "السعودية",
                              imagePath: "assets/images/sud_flag.png",
                              onTap: () {},
                            ),
                          ),
                          SizedBox(
                            width: 30.w,
                          ),
                          Expanded(
                            child: ContryItemWidget(
                              countryName: "مصر",
                              imagePath: "assets/images/egypt_flag.png",
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomeScreen(),
                                    ));
                              },
                            ),
                          ),
                        ],
                      ).hP16,
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: ContryItemWidget(
                              countryName: "الجزائر",
                              imagePath: "assets/images/gzair_flag.png",
                              onTap: () {},
                            ),
                          ),
                          SizedBox(
                            width: 30.w,
                          ),
                          Expanded(
                            child: ContryItemWidget(
                              countryName: "سوريا",
                              imagePath: "assets/images/syria_flag.png",
                              onTap: () {},
                            ),
                          ),
                        ],
                      ).hP16,
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: ContryItemWidget(
                              countryName: "تعليم حر",
                              imagePath: "assets/images/free_education.png",
                              onTap: () {},
                            ),
                          ),
                          SizedBox(
                            width: 30.w,
                          ),
                          Expanded(
                            child: ContryItemWidget(
                              countryName: "الكويت",
                              imagePath: "assets/images/quat_flag.png",
                              onTap: () {},
                            ),
                          ),
                        ],
                      ).hP16,
                    ],
                  ),
                ),
              ),
              // const Spacer(),
              SizedBox(
                height: 10.h,
              ),
              Image.asset("assets/images/nfham_trade_mark.png"),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContryItemWidget extends StatelessWidget {
  const ContryItemWidget({
    super.key,
    required this.imagePath,
    required this.countryName,
    required this.onTap,
  });

  final String imagePath;
  final String countryName;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        // height: 150.h,
        padding: EdgeInsets.symmetric(vertical: 5.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: ColorManager.primary,
          boxShadow: const [
            BoxShadow(
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 0),
              color: ColorManager.shadowColor,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath),
            SizedBox(
              height: 10.h,
            ),
            Text(
              countryName,
              style: TextStyle(
                fontSize: 20.sp,
                color: Colors.white,
              ),
            ),
          ],
        ).hP25,
      ),
    );
  }
}
