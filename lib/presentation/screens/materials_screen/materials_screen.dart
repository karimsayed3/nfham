import 'package:flutter/material.dart';
import 'package:nfham2/presentation/widgets/materials_screen/ask_and_nswer.dart';
import 'package:nfham2/presentation/widgets/materials_screen/materials_widget.dart';

class MaterialsScreen extends StatefulWidget {
  final String  titleYearName;
  const MaterialsScreen({Key? key, required this.titleYearName}) : super(key: key);

  @override
  State<MaterialsScreen> createState() => _MaterialsScreenState();
}

class _MaterialsScreenState extends State<MaterialsScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title:  Text(widget.titleYearName),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'المواد',
                ),
                Tab(
                  text: 'اسأل وجاوب',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              MaterialsTab(),
              AskAndAnswer(),
            ],
          ),
        ),
      ),
    );
  }
}
