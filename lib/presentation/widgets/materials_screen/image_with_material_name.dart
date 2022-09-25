import 'package:flutter/material.dart';

class ImageWithMaterialName extends StatelessWidget {
  final String materialName;
  const ImageWithMaterialName({Key? key, required this.materialName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              spreadRadius: 3,
              blurRadius: 2,
              offset: Offset(2, 3),
              color: Colors.grey.shade300,
            ),
          ],
        ),
        height: 70,
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              child: Image(
                image: AssetImage('assets/images/work1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 70,
                color: Colors.blueGrey,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    materialName,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
