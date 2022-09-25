import 'package:flutter/material.dart';
import 'package:nfham2/presentation/widgets/material_details_screen/material_details_screen_card.dart';

class test2 extends StatefulWidget {
  final List<dynamic> lessons;

  const test2({Key? key,required this.lessons}) : super(key: key);

  @override
  State<test2> createState() => _test2State();
}

class _test2State extends State<test2> {
  @override
  Widget build(BuildContext context) {
    print(widget.lessons);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(bottom: 8),
          child: Padding(
            padding: EdgeInsets.only(left: 8, right: 8),
            child: ListView.builder(
              itemCount: widget.lessons.length,
              itemBuilder: (context, index2) {
                // return MaterialDetailsScreenCard(materialName: widget.lessons[index2],);
                return Card(
                  elevation: .5,
                  margin: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                  child: Container(
                    height: 90,
                    padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                    color: Colors.red,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

