import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzio/pages/settings/setting.dart';
import 'package:quizzio/utils/constants.dart';
import 'package:quizzio/utils/widgets/appbar.dart';
import 'package:quizzio/utils/widgets/common_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  static const String routeName = '/profile';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:  Color(0xFFFFF2EE),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
            height: 333,
            width: double.infinity,
              decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
              ),
             color: kPrimaryColor
        ),
        child: Column(
          children: [
            AppBarWithSearch(
              title: 'My Profile',
            ),
            CircleAvatar(
                                      radius: 33,
                                        backgroundColor: Color(0xFFC4D0FB),
            backgroundImage: AssetImage("assets/images/profileimg.png"),
                                    ),
             TitleText(
              title: 'Nataliya Mun',
              color:  Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
           ),
           Positioned(
            left: 30,
            bottom: -35,
            child: Container(
              height: 126,
              width: 330,
                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: const Color(0xFFFFFFFF),
                              ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 33),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Color(0xFFFFF2EE),
                                    child:  Center(
                              child:    ImageIcon(
                    AssetImage("assets/icons/pointsprofile.png"),
                    color: kPrimaryColor,
                    size: 24,
             ),
              ),
                                  ),
                                  space1C,
                                   TitleText(
              title: 'Points',
              color: kparagraphColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
                                   TitleText(
              title: '590',
              color: kmaindarkColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
                    ],
                  ),
              
                      Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Color(0xFFFFF2EE),
                                    child:  Center(
                              child:    ImageIcon(
                    AssetImage("assets/icons/rankprofile.png"),
                    color: kPrimaryColor,
                    size: 24,
             ),
              ),
                                  ),
                                  space1C,
                                   TitleText(
              title: 'Rank',
              color: kparagraphColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
                                   TitleText(
              title: '#06',
              color: kmaindarkColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
                    ],
                  ),

                      Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Color(0xFFFFF2EE),
                                    child:  Center(
                              child:    ImageIcon(
                    AssetImage("assets/icons/quizprofile.png"),
                    color: kPrimaryColor,
                    size: 24,
             ),
              ),
                                  ),
                                  space1C,
                                   TitleText(
              title: 'Quiz',
              color: kparagraphColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
                                   TitleText(
              title: '106',
              color: kmaindarkColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
                    ],
                  ),
              
                    ],
                  ),
                ),
            ),
            ),
            Positioned(
              top: 62,
              right: 14,
              child: GestureDetector(
                child: Icon(Icons.settings,
                color: Colors.white,
                size: 38,
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                   Settings()
                     ));
                },
              ),
              ),
            ],
           ),
           SizedBox(height: 65,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 16),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MainContainer(
                  height: 36,
                  child:  TitleText(
                title: 'Statistics',
                color:  Color(0xFF171F46),
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
                ),
                MainContainer(
                  height: 36,
                  child:  TitleText(
                title: 'Played Quiz',
                color:  Color(0xFF171F46),
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
                ),
                MainContainer(
                  height: 36,
                  child:  TitleText(
                title: 'Details',
                color:  Color(0xFF171F46),
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
                ),
              ],
             ),
           ),
          SizedBox(height: 15,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 16),
             child: TitleText(
                  title: 'Your Achievements',
                  color:  kmaindarkColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
           ),
              SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MainContainer(
                      height: 115,
                      width: 162,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                  Image.asset("assets/icons/quizpassed.png"),
                     SizedBox(height: 8,),
                  Text('124',
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF212121),
                  ),
                  ),
                  SizedBox(height: 8,),
                  Text('Quiz Passed',
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF616161),
                  ),
                  ),
                        ],
                      ),
                    ),
             

                    MainContainer(
                        height: 115,
                      width: 162,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                  Image.asset("assets/icons/quizposition.png"),
                     SizedBox(height: 8,),
                  Text('38',
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF212121),
                  ),
                  ),
                  SizedBox(height: 8),
                  Text('Top 3 Positions',
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF616161),
                  ),
                  ),
                        ],
                      ),
                    ),
             
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

