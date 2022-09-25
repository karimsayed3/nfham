import 'package:flutter/material.dart';

class MaterialDetailsScreenUnitName extends StatelessWidget {
  final String unitName;
  const MaterialDetailsScreenUnitName({Key? key, required this.unitName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      unitName,
      style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),
    );
  }
}
