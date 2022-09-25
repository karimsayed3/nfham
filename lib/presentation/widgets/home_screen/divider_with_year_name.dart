import 'package:flutter/material.dart';

class DividerWithYearName extends StatelessWidget {
  final String yearName;
  const DividerWithYearName({Key? key, required this.yearName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Container(
            width: 80,
            height: 2,
            color: Colors.grey,
          ),
          Text(
              yearName,
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          Container(
            width: 80,
            height: 2,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
