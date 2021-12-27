import 'package:clong_coding/reset_email.dart';
import 'package:clong_coding/theme/app_color.dart';
import 'package:clong_coding/walk3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  TextEditingController emailController = TextEditingController(text: '');
  final _formKey = GlobalKey<FormState>();

  bool _isObscure = true;

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
                    key: _formKey,
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 23),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                                                        SizedBox(height: 24.h),

                            //Text - Welcome to
                            Text(
                              "Forgot password",
                              style: textTheme.subtitle1!.copyWith(
                                color: AppColors.sBlack,
                              ),
                            ),
                            SizedBox(height: 10.h),

                            //Text - Enter~
                            Text(
                              "Enter your email address and we will\nsend you a reset instructions.",
                              style: textTheme.bodyText1!.copyWith(
                                color: AppColors.sGrey,
                              ),
                            ),
                            SizedBox(height: 26.h),

                            //Text - Email Address
                            Text(
                              "EMAIL ADDRESS",
                              style: textTheme.caption!.copyWith(
                                color: AppColors.sGrey,
                              ),
                            ),

                            //Email Address+FORM
                            Stack(alignment: Alignment.center, children: [
                              TextFormField(
                                controller: emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 2,
                                  ),
                                  hintText: "sajin tamang figma@",
                                  hintStyle: textTheme.bodyText1!
                                      .copyWith(color: AppColors.sBlack),
                                ),
                              ),
                            ]),
                            SizedBox(height: 24.h),

                            //ElevatedButton - RESET PASSWORD
                            Center(
                                child: Column(children: [
                              //Button - SIGN IN
                              ElevatedButton(
                                //TODO : GO TO NEXT PAGE
                                onPressed: () {
                                  Get.to(()=>ResetEmailScreen());
                                },
                                child: const Text('RESET PASSWORD'),
                              ),
                            ])),
                          ],
                        )))));
      },
    );
  }
}
