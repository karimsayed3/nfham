import 'package:flutter/material.dart';
import 'package:nfham2/constants/strings.dart';
import 'package:nfham2/presentation/widgets/materials_screen/image_with_material_name.dart';

import '../../../data_layer/firebase_services.dart';

class MaterialsTab extends StatefulWidget {
  const MaterialsTab({Key? key, required this.gradeYear}) : super(key: key);

  final String gradeYear;

  @override
  State<MaterialsTab> createState() => _MaterialsTabState();
}

class _MaterialsTabState extends State<MaterialsTab> {
  FirestoreService service = FirestoreService();
  String term = "الاول";

  bool isFirstTerm = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'الفصل الدراسى ${isFirstTerm ? 'الاول' : 'الثاني'}',
                style: const TextStyle(fontSize: 20, color: Colors.black),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  //TODO: isSelected Here
                  setState(() {
                    isFirstTerm = !isFirstTerm;
                  });
                  service.getSubjectsForSemesterForGradeYear(
                    "egypt",
                    widget.gradeYear,
                    isFirstTerm
                        ? SemestersEnum.semester1.toString().split('.').last
                        : SemestersEnum.semester2.toString().split('.').last,
                  );
                },
                child: const Text('تغيير'),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: FutureBuilder(
              future: service.getSubjectsForSemesterForGradeYear(
                "egypt",
                widget.gradeYear,
                isFirstTerm
                    ? SemestersEnum.semester1.toString().split('.').last
                    : SemestersEnum.semester2.toString().split('.').last,
              ),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ImageWithMaterialName(
                        materialName: snapshot.data![index]['subjectName'],
                        image: snapshot.data![index]['image'],
                      );
                    },
                  );
                }
                if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
          // const ImageWithMaterialName(
          //   materialName: 'اللغة العربية',
          // ),
          // const ImageWithMaterialName(
          //   materialName: 'الرياضيات',
          // ),
          // const ImageWithMaterialName(
          //   materialName: 'اللغة الانجليزية - English',
          // ),
        ],
      ),
    );
  }
}
