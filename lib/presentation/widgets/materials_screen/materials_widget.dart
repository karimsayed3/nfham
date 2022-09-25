import 'package:flutter/material.dart';
import 'package:nfham2/presentation/widgets/materials_screen/image_with_material_name.dart';

class MaterialsTab extends StatefulWidget {
  const MaterialsTab({Key? key}) : super(key: key);

  @override
  State<MaterialsTab> createState() => _MaterialsTabState();
}

class _MaterialsTabState extends State<MaterialsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'الفصل الدراسى الأول',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  //TODO: isSelected Here
                },
                child: Text('تغيير'),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ImageWithMaterialName(
            materialName: 'اللغة العربية',
          ),
          ImageWithMaterialName(
            materialName: 'الرياضيات',
          ),
          ImageWithMaterialName(
            materialName:  'اللغة الانجليزية - English',
          ),
        ],
      ),
    );
  }
}
