import 'package:bhau_777/data/repositories/api_service.dart';
import 'package:bhau_777/views/screens/starLine_dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../config/app_color.dart';
import '../../config/app_style.dart';
import 'all_game_screen.dart';
import 'jackpot_dashboard_screen.dart';

class HomeScreen extends StatefulWidget {
 final token;
 final id;
  const HomeScreen({super.key,required this.token, this.id,});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;

   String gameType = 'MainGame';
   //String? token;
   String userId = '';


  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    getid();
    print(widget.token);

    ApiService().getListForGame(userId: widget.id, token: widget.token);
  }
  Future<void> getid() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() async {
      userId= (await prefs.getString('userId'))!;
    });
  // print(token);
    print(userId);
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.sp))),
            toolbarHeight: 170.sp, // Set this height
            flexibleSpace: Container(
              decoration: BoxDecoration(
                color: AppColor.bgClr,
                image: DecorationImage(image: AssetImage('assets/images/appbarbg.png'),alignment: Alignment.topLeft),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15.sp),
                  bottomLeft: Radius.circular(15.sp),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                child: Column(
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
                        SizedBox(
                          width: 10.sp,
                        ),
                        SvgPicture.asset(
                          'assets/images/logo_login.svg',
                        ),
                        Spacer(),
                        SvgPicture.asset(
                          'assets/images/wallet.svg',
                        ),
                        SizedBox(
                          width: 10.sp,
                        ),
                        SvgPicture.asset(
                          'assets/images/bellIcon.svg',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.sp,
                    ),
                    Container(
                        height: 45.sp,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            23.sp,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    gameType = 'StarLine';
                                  });
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => StarlineDashboardScreen(),));
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 2.sp),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.sp, vertical: 5.sp),
                                    child: Text(
                                      'Shree Starline',
                                      style: AppStyle.appBarTitleStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),textAlign: TextAlign.center,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.sp),
                                    color: AppColor.bgClr,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    gameType = 'JackPot';
                                  });
Navigator.of(context).push(MaterialPageRoute(builder: (context) => JackpotDashboardScreen(),));
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 2.sp),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.sp, vertical: 5.sp),
                                    child: Text(
                                      'Shree Jackpot',
                                      style: AppStyle.appBarTitleStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),textAlign: TextAlign.center,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.sp),
                                    color: Colors.transparent,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                        ),
                    SizedBox(
                      height: 15.sp,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.sp, vertical: 5.sp),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(18.sp),
                              ),
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              )),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage('assets/images/wtspIcon.png'),
                              ),
                              SizedBox(
                                width: 2.sp,
                              ),
                              Text(
                                '+919540567567',
                                style: AppStyle.textfdTextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    size: 14),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.sp, vertical: 5.sp),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(18.sp),
                              ),
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              )),
                          child: Row(
                            children: [
                              Image(
                                image:
                                    AssetImage('assets/images/phoneIcon.png'),
                              ),
                              SizedBox(
                                width: 2.sp,
                              ),
                              Text(
                                '+919540567567',
                                style: AppStyle.textfdTextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    size: 14),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          body: FutureBuilder(
            future: ApiService().getListForGame(
                userId: widget.id,
                token:widget.token),
            builder: (context, snapshot) {
              var data = snapshot.data?.data?.details;
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 15.sp),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: Container(
                        margin: EdgeInsets.only(
                          bottom: 20.sp,
                          right: 20.sp,
                          left: 20.sp,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.sp),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26.withOpacity(0.2),
                                  blurRadius: 8),
                            ],
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/allgameCardSideIcon.png',
                                ),
                                alignment: Alignment.topLeft)),
                        child: Stack(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 10.sp),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Text(
                                          data?[index].providerName ?? 'Sharda',
                                          style: AppStyle.appBarTitleStyle(
                                            color: AppColor.gameTItleclr,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20.sp,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          data?[index].providerResult ?? '123-56-600',
                                          style: AppStyle.appBarTitleStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20.sp,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          'Betting is running for open',
                                          style: AppStyle.blackClrtxtSyle(
                                            color: AppColor.bgClr,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          height: 10.sp,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image(
                                                image: AssetImage(
                                                    'assets/images/dotImg.png')),
                                            Text(
                                              ' Open Bide : ',
                                              style: AppStyle.blackClrtxtSyle(
                                                color: AppColor.gameTimeClr,
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              '09:00 AM',
                                              style: AppStyle.blackClrtxtSyle(
                                                color: AppColor.gameTimeClr,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(width: 20.sp),
                                            Image(
                                                image: AssetImage(
                                                    'assets/images/dotImg.png')),
                                            Text(
                                              ' Close Bide : ',
                                              style: AppStyle.blackClrtxtSyle(
                                                color: AppColor.gameTimeClr,
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              '10:00 AM',
                                              style: AppStyle.blackClrtxtSyle(
                                                color: AppColor.gameTimeClr,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 5.sp, left: 5.sp),
                                child:
                                    SvgPicture.asset('assets/images/vertor1.svg'),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child:
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 10.sp,
                                    top: 32
                                        .sp), // Adjust the right padding as needed
                                child: Container(
                                  height: 50.sp,
                                  width: 50.sp,
                                  decoration: BoxDecoration(
                                    color: AppColor.bgClr,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      'assets/images/playIconWhiteRight.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AllGameScreen() ));
                      },
                    );
                  },
                  itemCount: snapshot.data?.data?.details?.length,
                ),
              );
            },
          )),
    );
  }

  Widget appbarWidget({
    String? title,
    required BuildContext context,
  }) {
    return Container(
      height: MediaQuery.of(context).size.height /
          3.5, // Height is dynamic based on screen size
      decoration: BoxDecoration(
        color: AppColor.bgClr,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(15.sp),
          bottomLeft: Radius.circular(15.sp),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        child: Column(
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
                SizedBox(
                  width: 10.sp,
                ),
                SvgPicture.asset(
                  'assets/images/logo_login.svg',
                ),
                Spacer(),
                SvgPicture.asset(
                  'assets/images/wallet.svg',
                ),
                SizedBox(
                  width: 10.sp,
                ),
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
                SizedBox(
                  width: 20.sp,
                ),
                Text(
                  title ?? 'SRIDEVI OPEN GAME',
                  style: AppStyle.appBarTitleStyle(
                      fontSize: 19.sp,
                      fontWeight:
                          FontWeight.w700), // Dynamically adjust font size
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
