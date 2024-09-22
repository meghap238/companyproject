import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/app_color.dart';
import '../../config/app_style.dart';

class FundScreen extends StatefulWidget {
  const FundScreen({super.key});

  @override
  State<FundScreen> createState() => _FundScreenState();
}

class _FundScreenState extends State<FundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                // AppBar(
                //   backgroundColor: Colors.transparent,
                //   toolbarHeight: 10.sp,
                // ),
                Spacer(),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/leftErrowIcon.svg',
                    ),
                    SizedBox(width: 25.sp,),
                    Text(
                      'Funds',
                      style: AppStyle.appBarTitleStyle(fontSize: 19.sp, fontWeight: FontWeight.w700), // Dynamically adjust font size
                      maxLines: 3,
                      textAlign: TextAlign.left,
                      softWrap: true,
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      'assets/images/wallet.svg',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
     body: ListView.builder(

       reverse: false,
       padding: EdgeInsets.symmetric(horizontal: 20.sp,vertical: 15.sp).copyWith(top: 20.sp),
       itemCount: 12,
         itemBuilder: (context, index) {
       return Card(
         elevation: 10,
         shadowColor: Colors.black26,
         margin: EdgeInsets.only(bottom: 20.sp),
         color: Colors.white,
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.sp),),side: BorderSide(color: AppColor.bgClr, width: 1 )),
       child: ListTile(
         horizontalTitleGap: 25.sp,
       contentPadding: EdgeInsets.symmetric(horizontal: 25.sp),
         subtitle:Text('You can add fund to your wallet',style: AppStyle.appBarTitleStyle(fontSize: 12.sp,color: AppColor.textBlackclr,fontWeight: FontWeight.w600),),
         leading:   SvgPicture.asset(
           'assets/images/cardaddfund.svg',
         ),
         title: Text('Add Fund',style: AppStyle.appBarTitleStyle(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.w600),),
         trailing: Container(width: 50.sp,height: 50.sp,
           decoration: BoxDecoration(shape: BoxShape.circle,color: AppColor.bgClr,
           image: DecorationImage(image: AssetImage('assets/images/errowright.png'))
           ),),
       ),

       );
     },



     ),
    );
  }
  Widget appbarWidget({
    String? title,
    required BuildContext context,

  }) {
    return Container(
      height: MediaQuery.of(context).size.height /5.5, // Height is dynamic based on screen size
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
            AppBar(
              backgroundColor: Colors.transparent,
              toolbarHeight: 10.sp,
            ),
            Spacer(),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/leftErrowIcon.svg',
                ),
                SizedBox(width: 25.sp,),
                Text(
                  'Funds',
                  style: AppStyle.appBarTitleStyle(fontSize: 19.sp, fontWeight: FontWeight.w700), // Dynamically adjust font size
                  maxLines: 3,
                  textAlign: TextAlign.left,
                  softWrap: true,
                ),
                Spacer(),
                SvgPicture.asset(
                  'assets/images/wallet.svg',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//
// getValue() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   String? stringValue = prefs.getString('deviceId');
//   return stringValue;
// }
