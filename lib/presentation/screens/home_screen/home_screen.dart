import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nfham2/presentation/widgets/home_screen/classroom_card.dart';
import 'package:nfham2/presentation/widgets/home_screen/divider_with_row_of_cards.dart';

import '../materials_screen/materials_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'اختر الصف',
              style: TextStyle(fontSize: 25.sp),
            ),
            elevation: 0.0,
          ),
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 20.h),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  DividerWithRowOfCards(
                    yearName: 'المرحلة الابتدائية',
                    onTap1: () {
                      // Navigator.pushNamed(context, '/select_country_screen');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MaterialsScreen(
                              titleYearName: "الاول الابتدائى",
                              gradeYear: "grade1",
                            ),
                          ));
                    },
                    onTap2: () {},
                    onTap3: () {},
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ClassroomCard(
                          yearNumber: 4,
                          onTap: () {},
                        ),
                      ),
                      Expanded(
                        child: ClassroomCard(
                          yearNumber: 5,
                          onTap: () {},
                        ),
                      ),
                      Expanded(
                        child: ClassroomCard(
                          yearNumber: 6,
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  DividerWithRowOfCards(
                      yearName: 'المرحلة الاعدادية',
                      onTap1: () {},
                      onTap2: () {},
                      onTap3: () {}),
                  SizedBox(
                    height: 15.h,
                  ),
                  DividerWithRowOfCards(
                      yearName: 'المرحلة الثانوية',
                      onTap1: () {},
                      onTap2: () {},
                      onTap3: () {}),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
