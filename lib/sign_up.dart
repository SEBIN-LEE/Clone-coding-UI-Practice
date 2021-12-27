import 'package:clong_coding/phone_login.dart';
import 'package:clong_coding/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                            //Text - Welcome to
                            Text(
                              "Create Account",
                              style: textTheme.subtitle1!.copyWith(
                                color: AppColors.sBlack,
                              ),
                            ),
                            SizedBox(height: 5.h),

                            //Text - Enter~
                            Text(
                              "Enter your Name, Email and Password",
                              style: textTheme.bodyText1!.copyWith(
                                color: AppColors.sGrey,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "for sign up.",
                                  style: textTheme.bodyText1!.copyWith(
                                    color: AppColors.sGrey,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Get.to(() => const SignInScreen());
                                  },
                                  child: const Text(
                                    'Already have account?',
                                  ),
                                  // style: TextButton.styleFrom(
                                  //   primary: AppColors.sGrey
                                  // ),
                                ),
                              ],
                            ),
                            SizedBox(height: 34.h),

                            //Text - FULL NAME
                            Text(
                              "FULL NAME",
                              style: textTheme.caption!.copyWith(
                                color: AppColors.sGrey,
                              ),
                            ),

                            //FULL NAME+FORM
                            Stack(alignment: Alignment.center, children: [
                              TextFormField(
                                controller: emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 2,
                                  ),
                                  suffixIcon: Icon(
                                    Icons.check,
                                    color: AppColors.sOrange,
                                  ),
                                  hintText: "Sajin Tamang",
                                  hintStyle: textTheme.bodyText1!
                                      .copyWith(color: AppColors.sBlack),
                                ),
                              ),
                            ]),
                            SizedBox(height: 22.h),

                            //Text - Email address
                            Text(
                              "EMAIL ADDRESS",
                              style: textTheme.caption!.copyWith(
                                color: AppColors.sGrey,
                              ),
                            ),

                            //Email address+FORM
                            Stack(alignment: Alignment.center, children: [
                              TextFormField(
                                controller: emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 2,
                                  ),
                                  suffixIcon: Icon(
                                    Icons.check,
                                    color: AppColors.sOrange,
                                  ),
                                  hintText: "sajin tamang figma @.com",
                                  hintStyle: textTheme.bodyText1!
                                      .copyWith(color: AppColors.sBlack),
                                ),
                              ),
                            ]),
                            SizedBox(height: 22.h),

                            //Text - PASSWORD

                            Text(
                              "PASSWORD",
                              style: textTheme.caption!.copyWith(
                                color: AppColors.sGrey,
                              ),
                            ),

                            //PASSWORD+FORM
                            Stack(alignment: Alignment.center, children: [
                              TextFormField(
                                controller: emailController,
                                obscureText: _isObscure,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 2,
                                  ),
                                  suffixIcon: IconButton(
                                      icon: Icon(
                                        Icons.check,
                                        color: AppColors.sOrange,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _isObscure = !_isObscure;
                                        });
                                      }),
                                  hintText: "******",
                                  hintStyle: textTheme.bodyText1!
                                      .copyWith(color: AppColors.sBlack),
                                ),
                              ),
                            ]),
                            SizedBox(height: 24.h),

                            //Text - Forget Password?
                            Center(
                                child: Column(children: [
                              //Button - SIGN IN
                              ElevatedButton(
                                //TODO : GO TO NEXT PAGE
                                onPressed: () {
                                  Get.to(()=>PhoneLoginScreen());
                                },
                                child: const Text('SIGN UP'),
                              ),
                            ])),
                            SizedBox(height: 24.h),
                            //Text - Enter~
                            Center(
                              child: Text(
                                "By Signing up you agree to our Terms\nConditions & Privacy Policy.",
                                style: textTheme.bodyText1!.copyWith(
                                  color: AppColors.sGrey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 34.h),

                            //Text - Or
                            Center(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Or",
                                      style: textTheme.bodyText1!.copyWith(
                                        color: AppColors.sBlack,
                                      ),
                                    ),
                                    SizedBox(height: 24.h),

                                    //BUTTON - CONNECT WITH FACEBOOK
                                    ElevatedButton(
                                      onPressed: () {
                                        // Get.to(()=>Walk2Screen());
                                      },
                                      child: Row(children: <Widget>[
                                        Image.asset(
                                          'assets/imgs/facebook.png',
                                          height: 24.0,
                                          width: 24.0,
                                        ),
                                        SizedBox(width: 30.w),
                                        const Center(
                                            child: Text(
                                          'CONNECT WITH FACEBOOK',
                                        )),
                                      ]),
                                      style: ElevatedButton.styleFrom(
                                          primary: AppColors.aNavy),
                                    ),
                                    SizedBox(height: 16.h),

                                    //BUTTON - CONNECT WITH GOOGLE
                                    ElevatedButton(
                                      onPressed: () {
                                        // Get.to(()=>Walk2Screen());
                                      },
                                      child: Row(children: <Widget>[
                                        Image.asset(
                                          'assets/imgs/google.png',
                                          height: 24.0,
                                          width: 24.0,
                                        ),
                                        SizedBox(width: 30.w),
                                        const Center(
                                            child: Text(
                                          'CONNECT WITH GOOGLE',
                                        )),
                                      ]),
                                      style: ElevatedButton.styleFrom(
                                          primary: AppColors.aSkyBlue),
                                    ),
                                  ]),
                            ),
                          ],
                        )))));
      },
    );
  }
}
