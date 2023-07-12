import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../core/models/allinonboardscreen.dart';
import '../util/constant.dart';
import 'package:flutter_svg/svg.dart';



class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}



class _WelcomeScreenState extends State<WelcomeScreen> {


    int currentIndex = 0;

  List<AllinOnboardModel> allinonboardlist = [
    AllinOnboardModel(
        "assets/images/Time management-amico.svg",
        "You can make your project during the work",
        "Update your project"),
    AllinOnboardModel(
        "assets/images/personal goals checklist-amico.svg",
        "Write down your task so you don't forget",
        "Create a task"),
    AllinOnboardModel(
        "assets/images/Personal goals-amico.svg",
        "Acheve yours goals on the path to success",
        "Acheve your goals"),
  ];
  
  @override
  void initState() {
    super.initState();
  
  }

  @override
  Widget build(BuildContext context) {
    return SizerUtil.orientation == Orientation.portrait
        ? _widPortrait()
        : _widLandScape();
  }

//orientation portrait

  Widget _widPortrait() {
    return Scaffold(
     
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              itemCount: allinonboardlist.length,
              itemBuilder: (context, index) {
                return PageBuilderWidget(
                    title: allinonboardlist[index].titlestr,
                    description: allinonboardlist[index].description,
                    imgurl: allinonboardlist[index].imgStr);
              }),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.01.h,
            left: MediaQuery.of(context).size.width * 0.44,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                allinonboardlist.length,
                (index) => buildDot(index: index),
              ),
            ),
          ),
          currentIndex < allinonboardlist.length - 1
              ? Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.07.sp,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape:  RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0.sp),
                                  bottomRight: Radius.circular(20.0.sp))),
                        ),
                        child:  Text(
                          "Skip",
                          style: TextStyle(fontSize: 14.sp, color: primarycolor),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: primarycolor,
                          shape:  RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0.sp),
                                  bottomLeft: Radius.circular(20.0.sp))),
                        ),
                        child: Icon(
                         Icons.arrow_forward  , color:  Colors.white, size: 20.sp,
                        ),
                      )
                    ],
                  ),
                )
              : 
              Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.07.sp,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                     
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: primarycolor,
                          shape:  RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0.sp),
                                  bottomLeft: Radius.circular(20.0.sp))),
                        ),
                        child: Icon(
                         Icons.arrow_forward  , color:  Colors.white, size: 20.sp,
                        ),
                  ),
                    ],
                  ),
                )
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentIndex == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentIndex == index ? primarycolor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  Widget _widLandScape() {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                decoration: const BoxDecoration(color: Color.fromRGBO(240, 244, 243, 10)),
                child: FutureBuilder(builder: (context, snapshot) {
                 return Center();
                }))));
  }

}

class PageBuilderWidget extends StatelessWidget {
  String title;
  String description;
  String imgurl;
  PageBuilderWidget(
      {Key? key,
      required this.title,
      required this.description,
      required this.imgurl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            child:  SvgPicture.asset(imgurl),
          ),
          const SizedBox(
            height: 20,
          ),
          //Tite Text
          Text(title,
              style: GoogleFonts.inter(
                  color: blackolor,
                  fontSize: 24,
                  fontWeight: FontWeight.w700)),
          const SizedBox(
            height: 20,
          ),
          //discription
          Text(description,
              textAlign: TextAlign.justify,
              style: GoogleFonts.inter(
                color: blackolor,
                fontSize: 14,
              ))
        ],
      ),
    );
  }
}