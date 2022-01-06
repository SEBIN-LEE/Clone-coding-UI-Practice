import 'package:clong_coding/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              'HUG IN',
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ),
          drawer: Drawer(
            
              child: Column(
            children: [
              const SizedBox(height: 88.0),
              Row(
                children: [
                  //icon
                  Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  
                  //name
                  Text(
                    "이세빈 님",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  )

                ],
              ),
            ],
          )
              //     child: ListView(
              //   padding: EdgeInsets.zero,
              //   children: [
              //     const DrawerHeader(
              //       decoration: BoxDecoration(
              //         color: Colors.blue,
              //       ),
              //       child: Text('Drawer Header'),
              //     ),
              //     ListTile(
              //       title: const Text('Item 1'),
              //       onTap: () {
              //         // Update the state of the app.
              //         // ...
              //       },
              //     ),
              //     ListTile(
              //       title: const Text('Item 2'),
              //       onTap: () {
              //         // Update the state of the app.
              //         // ...
              //       },
              //     ),
              //   ],
              // )
              ),
        );
      },
    );
  }
}
