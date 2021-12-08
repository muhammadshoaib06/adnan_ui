import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 25.sp, vertical: 25.sp),
        children: [
          Container(
            height: 100.sp,
            width: 100.sp,
            margin: EdgeInsets.only(top: 60.sp, bottom: 50.sp),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Text('Logo'),
            ),
          ),
          SizedBox(
            height: 12.sp,
          ),
          Text(
            'Welcome back',
            style: TextStyle(
                fontSize: 25.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 12.sp,
          ),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            style: TextStyle(
                fontSize: 18.sp,
                color: Colors.white,
                fontWeight: FontWeight.w200),
          ),
          SizedBox(
            height: 80.sp,
          ),
          Container(
            height: 50.sp,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25.sp))),
            child: Row(
              children: [
                const Expanded(
                    child: Align(
                        alignment: Alignment.center,
                        child: Icon(Icons.arrow_circle_down_sharp))),
                Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Sign in with google',
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 30.sp,
          ),
          Container(
            height: 50.sp,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25.sp))),
            child: Row(
              children: [
                const Expanded(
                    child: Align(
                        alignment: Alignment.center, child: Icon(Icons.email))),
                Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Sign in with Email',
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 40.sp,
          ),
          Align(
            alignment: Alignment.center,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Don\'t have account \n',
                style: TextStyle(fontSize: 15.sp),
                children: const <TextSpan>[
                  TextSpan(
                      text: 'Sign up here',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
