import 'package:flutter/material.dart';
import 'package:nfham2/presentation/widgets/home_screen/classroom_card.dart';
import 'package:nfham2/presentation/widgets/home_screen/divider_with_row_of_cards.dart';
import 'package:nfham2/presentation/widgets/home_screen/divider_with_year_name.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('اختر الصف'),
            elevation: 0.0,
          ),
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            child: Column(
              children: [
                DividerWithRowOfCards(
                    yearNamel: 'المرحلة الابتدائية',
                    onTap1: () {},
                    onTap2: () {},
                    onTap3: () {}),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClassroomCard(
                      yearNumber: 4,
                      onTap: () {},
                    ),
                    ClassroomCard(
                      yearNumber: 5,
                      onTap: () {},
                    ),
                    ClassroomCard(
                      yearNumber: 6,
                      onTap: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                DividerWithRowOfCards(
                    yearNamel: 'المرحلة الاعدادية',
                    onTap1: () {},
                    onTap2: () {},
                    onTap3: () {}),
                const SizedBox(
                  height: 10,
                ),
                DividerWithRowOfCards(
                    yearNamel: 'المرحلة الثانوية',
                    onTap1: () {},
                    onTap2: () {},
                    onTap3: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
