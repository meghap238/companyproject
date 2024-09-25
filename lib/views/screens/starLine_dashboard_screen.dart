import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/app_color.dart';
import '../../config/app_style.dart';

class StarlineDashboardScreen extends StatefulWidget {
  const StarlineDashboardScreen({super.key});

  @override
  State<StarlineDashboardScreen> createState() => _StarlineDashboardScreenState();
}

class _StarlineDashboardScreenState extends State<StarlineDashboardScreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.sp)),
        ),
        toolbarHeight: 100.sp, // Set this height
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/appbarbg.png'),
              alignment: Alignment.topLeft,
              fit: BoxFit.cover,
            ),
            color: AppColor.bgClr,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15.sp),
              bottomLeft: Radius.circular(15.sp),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp).copyWith(bottom: 20.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Row(
                  children: [
                    GestureDetector(
                      child: Container(
                        width: 30.sp,
                        height: 30.sp,

                        decoration: BoxDecoration(
                           color: Colors.transparent,
                            image: DecorationImage(image: AssetImage('assets/images/letwhiteArrow.png'))),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(width: 20.sp),
                    Text(
                      'STARLINE DASHBOARD',
                      style: AppStyle.appBarTitleStyle(
                        fontSize: 19.sp,
                        fontWeight: FontWeight.w700,
                      ), // Dynamically adjust font size
                      maxLines: 3,
                      textAlign: TextAlign.left,
                      softWrap: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp,vertical: 10.sp),
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset('assets/images/clockIcon.svg'),
                  SizedBox(width: 5.sp),
                  Text(
                    'History',
                    style: AppStyle.appBarTitleStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff333333),
                    ), // Dynamically adjust font size
                  ),
                  Spacer(),
                  Text(
                    'Notification',
                    style: AppStyle.appBarTitleStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff333333),
                    ), // Dynamically adjust font size
                  ),
                  SizedBox(width: 3.sp,),
                  SizedBox(
                    height: 35.sp,
                    width: 48.sp,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                            print(isSwitched);
                          });
                        },
                        activeTrackColor:  AppColor.bgClr,
                        activeColor: AppColor.bgClr,
                        thumbColor: MaterialStatePropertyAll(Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.sp),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8.sp,horizontal: 15.sp),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.sp),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 4,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Single Digit",
                          textAlign: TextAlign.center,
                          style: AppStyle.appBarTitleStyle(
                            color: AppColor.textBlackclr,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.sp,
                          ),
                        ),
                        Text(
                          "1-10.0",
                          textAlign: TextAlign.center,
                          style: AppStyle.appBarTitleStyle(
                            color: AppColor.bgClr,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15.sp,),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8.sp,horizontal: 15.sp),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.sp),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 4,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Single pana",
                          textAlign: TextAlign.center,
                          style: AppStyle.appBarTitleStyle(
                            color: AppColor.textBlackclr,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.sp,
                          ),
                        ),

                        Text(
                          "1-160.0",
                          textAlign: TextAlign.center,
                          style: AppStyle.appBarTitleStyle(
                            color: AppColor.bgClr,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],),
              SizedBox(height: 10.sp),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 8.sp,horizontal: 15.sp),
                                   decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.sp),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            blurRadius: 4,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Double Pana",
                            textAlign: TextAlign.center,
                            style: AppStyle.appBarTitleStyle(
                              color: AppColor.textBlackclr,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.sp,
                            ),
                          ),
                          SizedBox(width: 5.sp,),
                          Text(
                            "1-320.0",
                            textAlign: TextAlign.center,
                            style: AppStyle.appBarTitleStyle(
                              color: AppColor.bgClr,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15.sp,),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 8.sp,horizontal: 15.sp),
                                           decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.sp),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            blurRadius: 4,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Triple Pana",
                            textAlign: TextAlign.center,
                            style: AppStyle.appBarTitleStyle(
                              color: AppColor.textBlackclr,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.sp,
                            ),
                          ),

                          Text(
                            "1-160.0",
                            textAlign: TextAlign.center,
                            style: AppStyle.appBarTitleStyle(
                              color: AppColor.bgClr,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],),
              SizedBox(height: 15.sp),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(), // Disable GridView's own scrolling
                shrinkWrap: true, // Make GridView take only the necessary space
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 4 / 4,
                  mainAxisSpacing: 20.sp,
                  crossAxisSpacing: 20.sp,
                ),
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    children: [
                      Card(
                        color: Colors.white,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.sp),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.sp)
                              .copyWith(bottom: 5, top: 7.sp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                decoration: BoxDecoration(color: AppColor.bgClr,borderRadius: BorderRadius.circular(3.sp)),
                                margin: EdgeInsets.symmetric(horizontal: 22.sp),
                                padding: EdgeInsets.symmetric(vertical: 2.sp) ,
                                child: Text('490-3' ,  style: AppStyle.appBarTitleStyle(
                                        fontSize: 18.sp,
                                      ),textAlign: TextAlign.center,),
                              ),
                              SizedBox(height: 5.sp),
                              Text(
                                '10:00 AM',
                                style: AppStyle.appBarTitleStyle(
                                  fontSize: 18.sp,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 5.sp),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 5.sp),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.sp),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade400,
                                      blurRadius: 4,
                                    )
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 30.sp,
                                      width: 30.sp,
                                      margin: EdgeInsets.only(right: 3.sp),
                                      decoration: BoxDecoration(
                                        color: AppColor.bgClr,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/playbtnforfackpot.png',
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Play Game",
                                      textAlign: TextAlign.center,
                                      style: AppStyle.appBarTitleStyle(
                                        color: AppColor.bgClr,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5.sp),
                              Text(
                                'Closed for Today',
                                style: AppStyle.appBarTitleStyle(
                                  fontSize: 10.sp,
                                  color: AppColor.redShadeClr,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.center,
                                softWrap: true,
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: Image(
                          image: AssetImage('assets/images/Rectangle.png'),
                        ),
                      ),
                    ],
                  );
                },
              ),



            ],
          ),
        ),
      ),
    );
  }
}
