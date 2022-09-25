class ProductDataModel {
  String? unitName;
  int? id;
  var lessons;

  ProductDataModel({
    this.unitName,
    this.lessons,
    this.id,
  });

  ProductDataModel.fromJson(Map<String, dynamic> json) {
    unitName = json['unitName'];
    lessons = json['lessons'];
    id = json['id'];
  }
}

class LessonDetails {
  String? lessonName1;
  var lessonName2 = [];

  LessonDetails({this.lessonName1, required this.lessonName2});

  LessonDetails.fromJson(Map<String, dynamic> json) {
    lessonName1 = json['lessonName1'];
    json['lessonName2'].forEach((e) {
      lessonName2.add(e);
    });
  }
}
