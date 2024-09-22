import 'package:bhau_777/config/app_color.dart';
import 'package:bhau_777/config/app_style.dart';
import 'package:bhau_777/views/screens/all_game_screen.dart';
import 'package:bhau_777/views/screens/fund_screen.dart';
import 'package:bhau_777/views/screens/home_screen.dart';
import 'package:bhau_777/views/screens/passbook_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../screens/chat_support_screen.dart';
import '../screens/profile_screen.dart';


class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});
  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  final PageController pageController = PageController(initialPage: 2);
  int selectedIndex = 2;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      pageController.jumpToPage(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      //extendBody: false,
     // extendBodyBehindAppBar: false,

      bottomNavigationBar: Container(

        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10.sp))

        ),
        child: BottomAppBar(
         color: Colors.white,
          clipBehavior: Clip.antiAlias,

          child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: InkWell(
                    splashFactory: NoSplash.splashFactory,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset('assets/images/profiletab.svg'),
                        SizedBox(height: 10,),
                        Text('Profile',style: AppStyle.appBarTitleStyle(color: AppColor.bgClr,fontSize: 13.sp,fontWeight: FontWeight.w600),),
                      ],
                    ),
                    onTap: () {
                      onItemTapped(0);
                    },
                  ),
                ),
                Expanded(
                  child: InkWell(
                    splashFactory: NoSplash.splashFactory,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset('assets/images/pasbooktab.svg'),
                        SizedBox(height: 10,),
                        Text('Passbook',style: AppStyle.appBarTitleStyle(color: AppColor.bgClr,fontSize: 13.sp,fontWeight: FontWeight.w600),),
                      ],
                    ),
                    onTap: () {
                      onItemTapped(1);
                    },
                  ),
                ),
                InkWell(
                  child: Container(
                    height: 55.sp,
                    width: 55.sp,
                          decoration: BoxDecoration(color:AppColor.bgClr,
                          shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(color: Colors.black26,blurRadius: 5,spreadRadius: 2,offset: Offset(0, 2))
                            ],
                            image: DecorationImage(image: AssetImage('assets/images/home_tab.png'))
                          ),
                  ),
                  onTap: () {
                    onItemTapped(2);
                  },

                ),
                Expanded(
                  child: InkWell(
                    splashFactory: NoSplash.splashFactory,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset('assets/images/fundsIcontab.svg'),
                        SizedBox(height: 10,),
                        Text('Funds',style: AppStyle.appBarTitleStyle(color: AppColor.bgClr,fontSize: 13.sp,fontWeight: FontWeight.w600),),
                      ],
                    ),
                    onTap: () {
                      onItemTapped(3);
                    },
                  ),
                ),
                Expanded(
                  child: InkWell(
                    splashFactory: NoSplash.splashFactory,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset('assets/images/fundsIcontab.svg'),
                        SizedBox(height: 10,),
                        Text('Chat Support',style: AppStyle.appBarTitleStyle(color: AppColor.bgClr,fontSize: 10.sp,fontWeight: FontWeight.w600),),
                      ],
                    ),
                    onTap: () {
                      onItemTapped(4);
                    },
                  ),
                ),
              ]),
        ),
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children:  <Widget>[

          Center(
            child: ProfileScreen(),
          ),
          Center(
            child: PassbookScreen(),
          ),
          Center(
            child: HomeScreen(),
          ),
          Center(
            child: FundScreen(),
          ),
          Center(
            child: ChatSupportScreen(),
          ),
        ],
      ),
    );
  }
}