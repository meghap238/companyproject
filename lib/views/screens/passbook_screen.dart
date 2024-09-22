import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/app_color.dart';
import '../../config/app_style.dart';

class PassbookScreen extends StatefulWidget {
  const PassbookScreen({super.key});

  @override
  State<PassbookScreen> createState() => _PassbookScreenState();
}

class _PassbookScreenState extends State<PassbookScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.sp))),
        toolbarHeight: 100.sp, // Set this height
        flexibleSpace:Container(
          decoration: BoxDecoration(
            color: AppColor.bgClr,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15.sp),
              bottomLeft: Radius.circular(15.sp),
            ),
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.sp).copyWith(bottom: 20.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/leftErrowIcon.svg',
                    ),
                    SizedBox(width: 25.sp,),
                    Text(
                      'PASSBOOK',
                      style: AppStyle.appBarTitleStyle(fontSize: 19.sp, fontWeight: FontWeight.w700), // Dynamically adjust font size
                      maxLines: 3,
                      textAlign: TextAlign.left,
                      softWrap: true,
                    ),
                    Spacer(),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
return Container(
  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.sp))),

);
      },
        itemCount: 12,

      ),

    );
  }
}
