import 'package:flutter/material.dart';

class AskAndAnswer extends StatelessWidget {
  const AskAndAnswer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'قريبا!..',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
