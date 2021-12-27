import 'package:clong_coding/confirm_phone.dart';
import 'package:clong_coding/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PhoneLoginScreen extends StatefulWidget {
  const PhoneLoginScreen({Key? key}) : super(key: key);

  @override
  State<PhoneLoginScreen> createState() => _PhoneLoginScreenState();
}

class _PhoneLoginScreenState extends State<PhoneLoginScreen> {
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
              title: const Text(
                'Login to Tamang Food\nServices',
                textAlign: TextAlign.center,
              ),
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
                                //Text - Get started
                                child: Column(
                              children: [
                                Text(
                                  "Get started with Foodly",
                                  style: textTheme.headline3!.copyWith(
                                    color: AppColors.sBlack,
                                  ),
                                ),
                                SizedBox(height: 20.h),

                                //Text - Enter~
                                Text(
                                  "Enter your phone number to use foodly and\nenjoy your food :)",
                                  style: textTheme.bodyText1!.copyWith(
                                    color: AppColors.sGrey,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            )),

                            SizedBox(height: 26.h),

                            //Text - PHONE NUMBER
                            Text(
                              "PHONE NUMBER",
                              style: textTheme.caption!.copyWith(
                                color: AppColors.sGrey,
                              ),
                            ),

                            //PHONE NUMBER+FORM
                            Stack(alignment: Alignment.center, children: [
                              TextFormField(
                                controller: emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  label: Row(
                                    children: [
                                      Row(children: [
                                        Image.asset("assets/imgs/uk.png",
                                            width: 32.w, height: 24.h),
                                        SizedBox(width: 2.w),
                                        Image.asset("assets/imgs/Path.png",
                                            width: 12.w, height: 6.h),
                                        SizedBox(width: 12.w),
                                      ]),
                                      Text.rich(
                                        TextSpan(
                                          children: <InlineSpan>[
                                            WidgetSpan(
                                              child: Text('+61',
                                                  style: textTheme.bodyText1!
                                                      .copyWith(
                                                          color: AppColors
                                                              .sBlack)),
                                            ),
                                            WidgetSpan(
                                              child: Text('0489632578',
                                                  style: textTheme.bodyText1!
                                                      .copyWith(
                                                          color:
                                                              AppColors.sGrey)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),

                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 2,
                                  ),

                                  // hintStyle: textTheme.bodyText1!
                                  //     .copyWith(color: AppColors.sBlack),
                                ),
                              ),
                            ]),
                            SizedBox(height: 159.h),

                            //ElevatedButton - SIGN UP
                            Center(
                                child: Column(children: [
                              //Button - SIGN IN
                              ElevatedButton(
                                //TODO : GO TO NEXT PAGE
                                onPressed: () {
                                  Get.to(() => ConfirmPhoneScreen());
                                },
                                child: const Text('SIGN UP'),
                              ),
                              SizedBox(height: 24.h),

                            ])),
                          
                          ],
                        ))
                        )));
      },
    );
  }
}

//Image.asset("assets/imgs/keyboard.png",width: 375.w, height: 291.h),
