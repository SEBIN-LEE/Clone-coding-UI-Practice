import 'package:clong_coding/forgot.dart';
import 'package:clong_coding/sign_up.dart';
import 'package:clong_coding/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
              title: const Text('Sign In'),
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
                              "Welcome to Tamang\nFood Services",
                              style: textTheme.subtitle1!.copyWith(
                                color: AppColors.sBlack,
                              ),
                            ),
                            SizedBox(height: 14.h),

                            //Text - Enter~
                            Text(
                              "Enter your Phone number or Email\naddress for sign in Enjoy your food :)",
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
                                  suffixIcon: Icon(
                                    Icons.check,
                                    color: AppColors.sOrange,
                                  ),
                                  // * - Diffrent Ways (check Icon)
                                  // Align(
                                  //   alignment: Alignment.centerRight,
                                  //   child: Padding(
                                  //     padding: EdgeInsets.only(right: 6),
                                  //     child: Icon(
                                  //       Icons.check,
                                  //       color: AppColors.sOrange,
                                  //     )
                                  //   )
                                  // )

                                  hintText: "21900513@handong.edu",
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
                                      icon: Icon(_isObscure
                                          ? Icons.visibility
                                          : Icons.visibility_off),
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
                            SizedBox(height: 20.h),

                            //Text - Forget Password?
                            Center(
                                child: Column(children: [
                              TextButton(
                                style: TextButton.styleFrom(
                                  primary: AppColors.sGrey, // foreground
                                ),
                                onPressed: () {
                                  Get.to(() => ForgotScreen());
                                },
                                child: const Text(
                                  'Forget Password?',
                                ),
                                // style: TextButton.styleFrom(
                                //   primary: AppColors.sLightGrey
                                // ),
                              ),
                              SizedBox(height: 20.h),

                              //Button - SIGN IN
                              ElevatedButton(
                                //TODO : GO TO NEXT PAGE
                                onPressed: () {
                                  // Get.to(()=>Walk2Screen());
                                },
                                child: const Text('SIGN IN'),
                              ),
                            ])),

                            SizedBox(height: 20.h),

                            //Text - Don't have account? / Button - Create new account
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Don't have account?",
                                  style: textTheme.caption!.copyWith(
                                    color: AppColors.sGrey,
                                  ),
                                ),
                                TextButton(
                                    //TODO : should be Center
                                    onPressed: () {
                                      Get.to(() => SignUpScreen());
                                    },
                                    child: const Text('Create new account')),
                              ],
                            ),
                            SizedBox(height: 20.h),

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
                                    SizedBox(height: 20.h),

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
