import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
            'Sign in to your \naccount',
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
            height: 30.sp,
          ),
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 18.sp),
              hintText: 'username',
              hintStyle: const TextStyle(color: Colors.white),
              prefixIcon: const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 18.sp),
              hintText: 'password',
              hintStyle: const TextStyle(color: Colors.white),
              prefixIcon: const Icon(
                Icons.lock,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 25.sp,
          ),
          Container(
            height: 50.sp,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25.sp))),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Sign in',
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          SizedBox(
            height: 12.sp,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Forgot password',
              style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
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
