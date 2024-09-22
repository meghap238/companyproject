import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/app_color.dart';
import '../../config/app_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.sp))),
        toolbarHeight: 150.sp, // Set this height
        flexibleSpace:Container(
          decoration: BoxDecoration(
            color: AppColor.bgClr,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15.sp),
              bottomLeft: Radius.circular(15.sp),
            ),
          ),
          child:     Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                backgroundColor: Colors.transparent,

                toolbarHeight: 10.sp,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/menuIcon.svg',
                  ),
                  SizedBox(width: 10.sp,),
                  SvgPicture.asset(
                    'assets/images/logo_login.svg',
                  ),
                  Spacer(),
                  SvgPicture.asset(
                    'assets/images/wallet.svg',
                  ),
                  SizedBox(width: 10.sp,),
                  SvgPicture.asset(
                    'assets/images/bellIcon.svg',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      body: ListView.builder(
        itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.sp,vertical: 10.sp),
margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.sp),),boxShadow: [BoxShadow(color: Colors.black26,blurRadius: 5)]
          
        ),
        child: Column(
          children: [
          Text('KALYAN MORNING'),
          Text('123-56-600'),
          Text('Betting is running for open',style: AppStyle.blackClrtxtSyle(color: AppColor.bgClr,fontSize: 10.sp,fontWeight: FontWeight.w700),)
        ],
        ),
        );
      },
        itemCount: 12,
      ),
    );
  }
  Widget appbarWidget({
    String? title,
    required BuildContext context,

  }) {
    return
      Container(
      height: MediaQuery.of(context).size.height / 3.5, // Height is dynamic based on screen size
      decoration: BoxDecoration(
        color: AppColor.bgClr,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(15.sp),
          bottomLeft: Radius.circular(15.sp),
        ),
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.sp),
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              backgroundColor: Colors.transparent,

              toolbarHeight: 10.sp,
            ),

            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/menuIcon.svg',
                ),
                SizedBox(width: 10.sp,),
                SvgPicture.asset(
                  'assets/images/logo_login.svg',
                ),
                Spacer(),
                SvgPicture.asset(
                  'assets/images/wallet.svg',
                ),
                SizedBox(width: 10.sp,),
                SvgPicture.asset(
                  'assets/images/bellIcon.svg',
                ),
              ],
            ),
            SizedBox(height: 30.sp),
            Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/images/leftErrowIcon.svg',
                ),
                SizedBox(width: 20.sp,),
                Text(
                  title ?? 'SRIDEVI OPEN GAME',
                  style: AppStyle.appBarTitleStyle(fontSize: 19.sp, fontWeight: FontWeight.w700), // Dynamically adjust font size
                  maxLines: 3,
                  textAlign: TextAlign.left,
                  softWrap: true,
                ),


              ],
            ),
          ],
        ),
      ),
    );
  }
}
