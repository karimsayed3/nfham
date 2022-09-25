import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nfham2/presentation/screens/materials_details_screen/material_details_screen_list_of_videos.dart';
import 'package:nfham2/presentation/widgets/material_details_screen/material_details_screen_card.dart';
import 'package:nfham2/presentation/widgets/material_details_screen/material_details_screen_unit_name.dart';
import 'package:nfham2/product_model.dart';
import 'dart:convert';
import 'package:flutter/services.dart' as rootBundle;


class MaterialDetailsScreen extends StatefulWidget {
  @override
  _MaterialDetailsScreenState createState() => _MaterialDetailsScreenState();
}

class _MaterialDetailsScreenState extends State<MaterialDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'اختر الصف',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          elevation: 0.0,
        ),
        body: FutureBuilder(
          future: ReadJsonData(),
          builder: (context, data) {
            if (data.hasError) {
              print(data.error.toString());
              return Center(child: Text("${data.error}"));
            } else if (data.hasData) {
              var items = data.data as List<ProductDataModel>;
              return ListView.builder(
                  itemCount: items == null ? 0 : items.length,
                  // itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MaterialDetailsScreenUnitName(
                                    unitName: items[index].unitName.toString(),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8, right: 8),
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      physics: ScrollPhysics(),
                                      // itemCount: 3,
                                      itemCount: items[index].lessons == null
                                          ? 0
                                          : items[index].lessons!.length,
                                      itemBuilder: (context, index2) {
                                        return InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    YoutubeView(
                                                      lessons: items[index]
                                                          .lessons[index2]
                                                      ['lessonName2'],
                                                      title: items[index].lessons[index2]
                                                      ['lessonName1'],
                                                    ),
                                              ),
                                            );
                                          },
                                          child: MaterialDetailsScreenCard(
                                              materialName:
                                              items[index].lessons[index2]
                                              ['lessonName1']
                                            // materialName: "",
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }

  Future<List<ProductDataModel>> ReadJsonData() async {
    final jsondata =
    await rootBundle.rootBundle.loadString('assets/images/data.json');
    final list = json.decode(jsondata) as List<dynamic>;
    return list.map((e) => ProductDataModel.fromJson(e)).toList();
  }

// Future<List<LessonDetails>> ReadLessons(data) async {
//   final jsondata = await data;
//   return jsondata.map((e) => LessonDetails.fromJson(e)).toList();
// }

}
