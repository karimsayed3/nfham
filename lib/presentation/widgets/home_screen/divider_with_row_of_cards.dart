import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nfham2/presentation/widgets/home_screen/classroom_card.dart';
import 'package:nfham2/presentation/widgets/home_screen/divider_with_year_name.dart';

class DividerWithRowOfCards extends StatelessWidget {
  final String yearName;
  final dynamic onTap1;
  final dynamic onTap2;
  final dynamic onTap3;
  const DividerWithRowOfCards({Key? key, required this.yearName, this.onTap1, this.onTap2, this.onTap3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DividerWithYearName(yearName: yearName),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ClassroomCard(
                yearNumber: 1,
                onTap: onTap1,
              ),
            ),
            Expanded(
              child: ClassroomCard(
                yearNumber: 2,
                onTap: onTap2,
              ),
            ),
            Expanded(
              child: ClassroomCard(
                yearNumber: 3,
                onTap: onTap3,
              ),
            ),
          ],
        )
      ],
    );
  }
}
