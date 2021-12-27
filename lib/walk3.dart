import 'package:clong_coding/sign_in.dart';
import 'package:clong_coding/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:clong_coding/theme/app_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class Walk3Screen extends StatefulWidget {
  const Walk3Screen({Key? key}) : super(key: key);

  @override
  State<Walk3Screen> createState() => _Walk3ScreenState();
}

class _Walk3ScreenState extends State<Walk3Screen> {
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
     designSize: const Size(375, 812),
     builder: (){
      return Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              SizedBox(height: 17.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Image.asset("assets/imgs/g12.png", width: 65.w, height: 65.h),
                  Text(
                    "Tamang\n FoodService",
                    textAlign: TextAlign.center,
                    style: AppTheme.regularTheme.textTheme.headline1?.copyWith(color: Colors.black),
                  ),
                ],
              ),

              Image.asset("assets/imgs/Illustrations-1.png", width:307.54.w),
              SizedBox(height: 20.h,),

              Column(
                  children: [
                    Text( 
                      "Choose your food",
                      textAlign: TextAlign.center,
                      style: AppTheme.regularTheme.textTheme.subtitle1?.apply(color: Colors.black),
                    ),
                    SizedBox(height: 15.h,),
                  
                    Container(
                      width: 310.w,
                      child: Text(
                      "Easily find your type of food craving and you'll get delivery in wide range.",
                      style: AppTheme.regularTheme.textTheme.bodyText1?.apply(color: AppColors.sGrey),
                      textAlign: TextAlign.center,
                    ),
                    ),
                  ],
              ),
              SizedBox(height: 22.h,),
              Image.asset("assets/imgs/Indicator-2.png", width:40.w),

              
              SizedBox(height: 22.h,),
              
              ElevatedButton(
                //TODO : GO TO NEXT PAGE
                onPressed: (){
                  Get.to(()=>SignInScreen());
                },
                child: const Text('GET STARTED')
              ),
            ],
          ),
        ),
      );
     }, 
    );
    }
}
