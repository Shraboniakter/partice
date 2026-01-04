import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'core/binding/binding.dart';
import 'core/route/route.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (__, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Buyer App',
          initialRoute: AppRoutes.splash,
          getPages: AppRoutes().pages,
          initialBinding: AppBinding(),
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
              elevation: 0,
              centerTitle: false,
              backgroundColor: Colors.white,
              titleTextStyle: TextStyle(
                fontFamily: "Poppins",
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              iconTheme: IconThemeData(
                color: Colors.black,
              ),
            ),
          ),
        );
      },




    );
  }
}
