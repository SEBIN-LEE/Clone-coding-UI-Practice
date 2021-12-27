import 'package:clong_coding/theme/app_color.dart';
import 'package:clong_coding/walk3.dart';
import 'package:flutter/material.dart';
import 'package:clong_coding/theme/app_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Walk2Screen extends StatefulWidget {
  const Walk2Screen({Key? key}) : super(key: key);

  @override
  State<Walk2Screen> createState() => _Walk2ScreenState();
}

class _Walk2ScreenState extends State<Walk2Screen> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () {
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                  height: 20.h,
                ),
                Image.asset("assets/imgs/Illustrations.png", width: 299.w),
                SizedBox(
                  height: 20.h,
                ),
                Column(
                  children: [
                    Text(
                      "Free delivery offers",
                      textAlign: TextAlign.center,
                      style: AppTheme.regularTheme.textTheme.subtitle1
                          ?.apply(color: Colors.black),
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Container(
                      width: 310.w,
                      child: Text(
                        "Free delivery for new customers via Apple Pay and others payment methods.",
                        style: AppTheme.regularTheme.textTheme.bodyText1
                            ?.apply(color: AppColors.sGrey),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Image.asset("assets/imgs/Indicator-1.png", width: 40.w),
                SizedBox(
                  height: 26.h,
                ),
                ElevatedButton(
                    //TODO : GO TO NEXT PAGE
                    onPressed: () {
                      Get.to(() => Walk3Screen());
                    },
                    child: const Text('GET STARTED')),
              ],
            ),
          ),
        );
      },
    );
  }
}
