import 'package:clong_coding/sign_in.dart';
import 'package:clong_coding/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ResetEmailScreen extends StatefulWidget {
  const ResetEmailScreen({Key? key}) : super(key: key);

  @override
  State<ResetEmailScreen> createState() => _ResetEmailScreenState();
}

class _ResetEmailScreenState extends State<ResetEmailScreen> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: const Text('Forgot Password'),
            ),
            body: SafeArea(
                child: Form(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 23),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 24.h),

                            //Text - Welcome to
                            Text(
                              "Reset email sent",
                              style: textTheme.subtitle1!.copyWith(
                                color: AppColors.sBlack,
                              ),
                            ),
                            SizedBox(height: 10.h),

                            //Text - Enter~
                            Text(
                              "We have sent a instructions email to",
                              style: textTheme.bodyText1!.copyWith(
                                color: AppColors.sGrey,
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  "sajin tamang@figma.com",
                                  style: textTheme.bodyText1!.copyWith(
                                    color: AppColors.sGrey,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Get.to(() => const SignInScreen());
                                  },
                                  child: const Text(
                                    'Having problem?',
                                  ),
                                  // style: TextButton.styleFrom(
                                  //   primary: AppColors.sGrey
                                  // ),
                                ),
                              ],
                            ),
                            SizedBox(height: 27.h),
                            //ElevatedButton - SEND AGAIN
                            Center(
                                child: Column(children: [
                              //Button - SIGN IN
                              ElevatedButton(
                                //TODO : GO TO NEXT PAGE
                                onPressed: () {
                                  Get.to(()=>SignInScreen());
                                },
                                child: const Text('SEND AGAIN'),
                              ),
                            ])),

                            SizedBox(height: 123.h),
                            Image.asset("assets/imgs/Open Doodles.png",
                                width: 307.w, height: 237.03.h),
                          ],
                        )))));
      },
    );
  }
}
