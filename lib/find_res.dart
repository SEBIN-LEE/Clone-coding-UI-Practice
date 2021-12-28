import 'package:clong_coding/enter_address.dart';
import 'package:clong_coding/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FindResScreen extends StatefulWidget {
  const FindResScreen({Key? key}) : super(key: key);

  @override
  State<FindResScreen> createState() => _FindResScreenState();
}

class _FindResScreenState extends State<FindResScreen> {
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
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.near_me),
                                          SizedBox(width: 18.w),
                                          Text(
                                            'Use current location',
                                            style:
                                                textTheme.bodyText1!.copyWith(
                                              color: AppColors.sOrange,
                                            ),
                                          ),
                                        ])),

                                //Elevated Button - Grey
                              ],
                            )),

                            SizedBox(height: 20.h),

                            //ElevatedButton - Enter New Address
                            Center(
                                child: Column(children: [
                              //Button - SIGN IN
                              ElevatedButton(
                                //TODO : GO TO NEXT PAGE
                                onPressed: () {
                                  // Get.to(() => EnterAddressScreen());
                                },
                                child: const Text('CONTINUE'),
                              ),
                              SizedBox(height: 24.h),
                            ])),
                          ],
                        )))));
      },
    );
  }

}