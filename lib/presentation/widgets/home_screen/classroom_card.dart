import 'package:flutter/material.dart';

class ClassroomCard extends StatelessWidget {
  final int yearNumber;
  final dynamic onTap;
  const ClassroomCard({Key? key, required this.yearNumber, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(2, 2),
                color: Colors.grey.shade300,
              ),
            ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'الصف',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            Text(
              yearNumber.toString(),
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}
