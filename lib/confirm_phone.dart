import 'package:clong_coding/enter_address.dart';
import 'package:clong_coding/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ConfirmPhoneScreen extends StatefulWidget {
  const ConfirmPhoneScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmPhoneScreen> createState() => _ConfirmPhoneScreenState();
}

class _ConfirmPhoneScreenState extends State<ConfirmPhoneScreen> {
  TextEditingController emailController = TextEditingController(text: '');
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                // title: const Text(
                //   'Find res',
                //   textAlign: TextAlign.center,
                // ),
                ),
            body: SafeArea(
                child: Form(
                    key: _formKey,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 24.h),

                            Center(
                                //Text - Verify
                                child: Column(
                              children: [
                                Text(
                                  "Find restaurants near you",
                                  style: textTheme.headline3!.copyWith(
                                    color: AppColors.sBlack,
                                  ),
                                ),
                                SizedBox(height: 20.h),

                                //Text - Enter~
                                Text(
                                  "Please enter your location or allow access to\nyour location to find restaurants near you.",
                                  style: textTheme.bodyText1!.copyWith(
                                    color: AppColors.sGrey,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 34.h),

                                //Outlined Button
                                OutlinedButton(
                                    onPressed: () {
                                      //TODO - GO to Type location Page
                                      // Get.to(() => EnterAddressScreen());
                                    },
                                    child: Row(children: [
                                      Icon(Icons.directions_boat_filled),
                                      Text('Use current location'),


                                    ])),

                                SizedBox(height: 20.h),

                                //Elevated Button - Grey
                              ],
                            )),

                            SizedBox(height: 34.h),

                            //ElevatedButton - CONTINUE
                            Center(
                                child: Column(children: [
                              //Button - SIGN IN
                              ElevatedButton(
                                //TODO : GO TO NEXT PAGE
                                onPressed: () {
                                  Get.to(() => EnterAddressScreen());
                                },
                                child: const Text('CONTINUE'),
                              ),
                              SizedBox(height: 24.h),

                              //Didn't receive code? // Resend Again
                              RichText(
                                text: TextSpan(
                                  text: "Didn't receive code?   ",
                                  style: textTheme.caption!.copyWith(
                                    color: AppColors.sGrey,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "   Resend Again.", //파랑색으로 강조할 텍스트
                                      style: textTheme.caption!.copyWith(
                                        color: AppColors.sOrange,
                                      ),
                                      // recognizer: TapGestureRecognizer() //탭했을 때 액션 지정
                                      //   ..onTap = () {
                                      //     //TODO:Modify as per your requirement
                                      //     showSnackBar(title: "Yeeeeee!", scaffoldKey: _scaffoldKey);
                                      //   }
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 34.h),

                              Center(
                                child: Text(
                                  "By Signing up you agree to our Terms\nConditions & Privacy Policy.",
                                  style: textTheme.bodyText1!.copyWith(
                                    color: AppColors.sGrey,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ])),
                          ],
                        )))));
      },
    );
  }

  // Returns "Otp custom text field"
  Widget _otpTextField(int digit) {
    return new Container(
      width: 50.0,
      height: 50.0,
      alignment: Alignment.center,
      child: new Text(
        digit != null ? digit.toString() : "",
        style: new TextStyle(
          fontSize: 16.0,
          color: AppColors.sBlack,
        ),
      ),
      decoration: BoxDecoration(
//            color: Colors.grey.withOpacity(0.4),
          border: Border(
              bottom: BorderSide(
        width: 2.0,
        color: AppColors.sGrey,
      ))),
    );
  }
}


//Image.asset("assets/imgs/keyboard.png",width: 375.w, height: 291.h),
