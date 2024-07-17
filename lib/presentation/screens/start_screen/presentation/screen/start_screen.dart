import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nfham2/extensions/padding_extension.dart';
import '../../../select_country_screen/presentation/screen/select_country_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  SystemUiOverlayStyle getSystemUiOverlayStyle() {
    return const SystemUiOverlayStyle(
      statusBarColor: Color(0xff08ade3),
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: getSystemUiOverlayStyle(),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: const Color(0xff41cbf9),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .2,
                  width: MediaQuery.of(context).size.width * .8,
                  child: const Image(
                    image: NetworkImage(
                        'https://cdn6.aptoide.com/imgs/0/8/7/08702e48c6de35494853a4578f14556a_icon.png'),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "الوجهة الأولى لطلاب المدارس فى العالم العربى.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25.sp, color: Colors.white),
                ).hP8,
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .7,
                  height: 60.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SelectCountryScreen(),
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        "ابدأ",
                        style: TextStyle(
                            fontSize: 26.sp, color: const Color(0xff08ade3)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "تسجيل الدخول",
                    style: TextStyle(fontSize: 25.sp, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: Colors.white,
                      )),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            textDirection: TextDirection.rtl,
                            "للمساعدة اتصل / واتساب 201156788394+",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    textDirection: TextDirection.rtl,
                    "عن نفهم",
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.white,
                      textBaseline: TextBaseline.ideographic,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
