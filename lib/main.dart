import 'package:clong_coding/hugin_front/home.dart';
import 'package:flutter/material.dart';
import 'package:clong_coding/theme/app_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.regularTheme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () {
        return Scaffold(
            body: SafeArea(
          child: Container(
            // alignment: -Alignment(4, 10),
            // width: 437,
            // height: 437,
            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //       image: AssetImage("assets/imgs/Circle Background.png"),
            //       fit: BoxFit.cover),
            // ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 23.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset("assets/imgs/g12.png",
                          width: 65.w, height: 65.h),
                      Text(
                        "Tamang\n FoodService",
                        textAlign: TextAlign.center,
                        style: AppTheme.regularTheme.textTheme.headline1
                            ?.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 33.h,
                  ),
                  Image.asset("assets/imgs/Illustration.png", width: 213.49.w),
                  SizedBox(
                    height: 33.h,
                  ),
                  Column(
                    children: [
                      Text(
                        "Welcome",
                        style: AppTheme.regularTheme.textTheme.headline2
                            ?.apply(color: Colors.black),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Container(
                        child: Text(
                          "It’s a pleasure to meet you. We are\nexcited that you’re here so let’s get\nstarted!",
                          style: AppTheme.regularTheme.textTheme.bodyText1
                              ?.apply(color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  ElevatedButton(
                      //TODO : GO TO NEXT PAGE
                      onPressed: () {
                        // Get.to(() => const Walk1Screen()); 
                        Get.to(() => const HomeScreen()); 
                      },
                      child: const Text('GET STARTED')),
                ],
              ),
            ),
          ),
        ));
      },
    );
  }
}

 // buildTextButton(){
  //   return TextButton(onPressed: (){}, child: Text('Text Button'),
  //   style: TextButton.styleFrom(
  //     primary: Colors.red,
  //     onSurface: Colors.green,
  //     elevation: 15.0,
  //     shadowColor: Colors.blue,
  //     padding: EdgeInsets.all(20),
  //     textStyle: TextStyle(fontWeight: FontWeight.bold),
  //   ));
  // }

  // buildElevatedButton(){
  //   return ElevatedButton(onPressed: (){}, child: Text('Elevated Button'),
  //   style: ElevatedButton.styleFrom(
  //     primary: Colors.red,
  //     onPrimary: Colors.purple,
  //     onSurface: Colors.green,
  //     elevation: 15.0,
  //     shadowColor: Colors.blue,
  //     padding: EdgeInsets.all(20),
  //     textStyle: TextStyle(fontWeight: FontWeight.bold),
  //   ) 
  //   );
  // }

  // buildOutlinedButton(){
  //   return OutlinedButton(onPressed: (){}, child: Text('Outlined Button'));
  // }
