import 'package:clong_coding/theme/app_color.dart';
import 'package:clong_coding/theme/app_textstyle.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData regularTheme = ThemeData(
      colorScheme: const ColorScheme.light().copyWith(
        primary: AppColors.sOrange,
        secondary: AppColors.sBlack,
      ),
      textTheme: TextTheme(
        headline1: AppTextStyle.headline1,
        headline2: AppTextStyle.headline2,
        headline3: AppTextStyle.headline3,
        subtitle1: AppTextStyle.subtitle,
        subtitle2: AppTextStyle.subhead,
        bodyText1: AppTextStyle.body,
        caption: AppTextStyle.caption,
        button: AppTextStyle.button,
      ),
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        titleTextStyle: TextStyle(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColors.sOrange),
            minimumSize: MaterialStateProperty.all(const Size(450, 48)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ))),
      ),

      // ** Edit Now **
      // outlinedButtonTheme: OutlinedButtonThemeData(
      //   style: ButtonStyle(
      //     backgroundColor: MaterialStateProperty.all<Color>(AppColors.sBlack),
      //     minimumSize: MaterialStateProperty.all(const Size(450, 48)),
      //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      //         RoundedRectangleBorder(
      //       side: BorderSide(color: AppColors.sOrange),
      //       borderRadius: BorderRadius.circular(8.0),
      //     )),
      //   ),
      // ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        
        style: OutlinedButton.styleFrom(
          // fixedSize: (width: 48),
          // padding: EdgeInsets.symmetric(horizontal: 18.0), //content padding inside button

          side: BorderSide(color: AppColors.sOrange),
          minimumSize: const Size(450, 48),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))
          
          ),
        ),
      
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: AppColors.sOrange,
          textStyle: AppTextStyle.caption,
        ),
      ));
}