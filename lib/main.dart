import 'package:adnan_ui/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'create_account.dart';
import 'status.dart';
import 'welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: () => MaterialApp(
          title: 'Flutter demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          //home: const WelcomeScreen(),
          //home: const CreateAccount(),
          //home: const SignIn(),
          home: const Status(),
        ),
      );
}
