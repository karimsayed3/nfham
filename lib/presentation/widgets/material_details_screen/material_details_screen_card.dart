import 'package:flutter/material.dart';

class MaterialDetailsScreenCard extends StatelessWidget {
  final String materialName;
  // final dynamic onTap;
  const MaterialDetailsScreenCard({Key? key, required this.materialName, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: onTap,
      child: Card(
        elevation: 0.5,
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 12,vertical: 15),
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            materialName,
            style: const TextStyle(
                fontSize: 18,
                color: Colors.blue
            ),
          ),
        ),
      ),
    );
  }
}
