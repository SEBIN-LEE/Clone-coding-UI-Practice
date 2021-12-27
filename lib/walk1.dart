import 'package:clong_coding/theme/app_color.dart';
import 'package:clong_coding/walk2.dart';
import 'package:flutter/material.dart';
import 'package:clong_coding/theme/app_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class Walk1Screen extends StatefulWidget {
  const Walk1Screen({Key? key}) : super(key: key);

  @override
  State<Walk1Screen> createState() => _Walk1ScreenState();
}

class _Walk1ScreenState extends State<Walk1Screen> {
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
     designSize: const Size(375, 812),
     builder: (){
      return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              SizedBox(height: 30.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  Image.asset("assets/imgs/g12.png", width: 65.w, height: 65.h),
                  Text(
                    "Tamang\n FoodService",
                    textAlign: TextAlign.center,
                    style: AppTheme.regularTheme.textTheme.headline1?.copyWith(color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 20.h,),

              Image.asset("assets/imgs/Group 4.png", width:299.w),

              Column(
                  children: [
                    Text( 
                      "All your\nfavorites",
                      textAlign: TextAlign.center,
                      style: AppTheme.regularTheme.textTheme.subtitle1?.apply(color: Colors.black),
                    ),
                    // SizedBox(height: 7.h,),
                  
                    Container(
                      width: 249.w,
                      child: Text(
                      "Order from the best local restaurants with easy, on-demand delivery",
                      style: AppTheme.regularTheme.textTheme.bodyText1?.apply(color: AppColors.sGrey),
                      textAlign: TextAlign.center,
                    ),
                    ),
                  ],
              ),
              SizedBox(height: 30.h,),
              Image.asset("assets/imgs/Indicator.png", width:40.w),

              
              SizedBox(height: 32.h,),
              
              ElevatedButton(
                //TODO : GO TO NEXT PAGE
                onPressed: (){
                  Get.to(()=>Walk2Screen());
                },
                child: const Text('GET STARTED')
              ),
            ],
          ),

          )
          
        ),
      );
     }, 
    );
    }
}
