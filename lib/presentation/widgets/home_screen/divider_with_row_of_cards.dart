import 'package:flutter/material.dart';
import 'package:nfham2/presentation/widgets/home_screen/classroom_card.dart';
import 'package:nfham2/presentation/widgets/home_screen/divider_with_year_name.dart';

class DividerWithRowOfCards extends StatelessWidget {
  final String yearNamel;
  final dynamic onTap1;
  final dynamic onTap2;
  final dynamic onTap3;
  const DividerWithRowOfCards({Key? key, required this.yearNamel, this.onTap1, this.onTap2, this.onTap3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DividerWithYearName(yearName: yearNamel),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClassroomCard(
              yearNumber: 1,
              onTap: onTap1,
            ),
            ClassroomCard(
              yearNumber: 2,
              onTap: onTap2,
            ),
            ClassroomCard(
              yearNumber: 3,
              onTap: onTap3,
            ),
          ],
        )
      ],
    );
  }
}
