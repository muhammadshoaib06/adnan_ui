import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 1.sw,
        height: 1.sh,
        color: Colors.deepOrange.withOpacity(0.4),
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(
              height: 250.sp,
              child: Stack(
                children: [
                  Positioned(
                    top: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      height: 150.sp,
                      padding: EdgeInsets.only(
                          left: 20.sp, right: 20.sp, top: 40.sp),
                      decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40.sp),
                              bottomRight: Radius.circular(40.sp))),
                      child: Row(
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Status',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    height: 50.sp,
                                    width: 50.sp,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border:
                                            Border.all(color: Colors.white)),
                                    child: Icon(
                                      Icons.person,
                                      color: Colors.white,
                                      size: 30.sp,
                                    ))),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 50.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        height: 80.sp,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 35.sp),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.sp))),
                        child: Center(
                            child: Text(
                          '71:50:00',
                          style: TextStyle (
                              fontSize: 50.sp,
                              color: Colors.black54,
                              fontWeight: FontWeight.w600),
                        )),
                      ))
                ],
              ),
            ),
            Container(
              height: 350.sp,
              width: double.infinity,
              padding: EdgeInsets.all(12.sp),
              margin: EdgeInsets.symmetric(horizontal: 35.sp),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12.sp))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Text('Question',
                    style: TextStyle (
                        fontSize: 22.sp,
                        color: Colors.black54,
                        fontWeight: FontWeight.w600),
                  )),
                  Expanded(child: Text('What are the names of the veins' * 3,
                    style: TextStyle (
                        fontSize: 16.sp,
                        color: Colors.black54,
                        fontWeight: FontWeight.w300),
                  )),
                  Expanded(child: Row(children: [
                    Container(
                      height: 20.sp,
                      width: 60.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.sp)),
                        border: Border.all(color: Colors.deepOrange)
                      ),
                      child: Center(child: Text('Medical', style: TextStyle(
                        fontSize: 12.sp,
                      ),),),
                    ),
                    SizedBox(width: 8.sp,),
                    Container(
                      height: 20.sp,
                      width: 60.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.sp)),
                        border: Border.all(color: Colors.deepOrange)
                      ),
                      child: Center(child: Text('Zoology', style: TextStyle(
                        fontSize: 12.sp,
                      ),),),
                    ),
                  ],)),
                  Expanded(
                    child: Row(
                      children: [
                        Icon(Icons.access_time, size: 17.sp,),
                        SizedBox(width: 8.sp,),
                        Text('Start time', style: TextStyle(
                          fontSize: 15.sp,
                        ),),

                      ],
                    ),
                  ),
                  Expanded(
                    child: Text('02:30 PM, 02 May 2022', style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600
                    ),),
                  ),
                  Expanded(child: Row(
                    children: [
                      Expanded(
                        child: Text('Answer Status: ', style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600
                        ),),
                      ),
                      Expanded(
                        child: Text('Pending', style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                           color: Colors.deepOrange
                        ),),
                      ),
                    ],
                  )),
                  const Spacer()
                ],
              )
            ),
            
          ],
        ),
      ),
    );
  }
}
