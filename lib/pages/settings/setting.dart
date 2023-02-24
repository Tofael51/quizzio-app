import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzio/pages/settings/faq.dart';
import 'package:quizzio/pages/settings/help_center.dart';
import 'package:quizzio/pages/settings/notification.dart';
import 'package:quizzio/pages/settings/profile_update.dart';
import 'package:quizzio/utils/constants.dart';
import 'package:quizzio/utils/widgets/appbar.dart';
import 'package:quizzio/utils/widgets/common_widget.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:  Color(0xFFFFF2EE),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             AppBarWithSearch(
                title: 'Setting',
              ),
            
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text('ACCOUNT',
                      style: GoogleFonts.rubik(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF0C092A),
                      ),
                      ),
              ),
                SizedBox(height: 14,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                 GestureDetector(
                   child: Container(
                                 height: 80,
                                 width: 340,
                                 decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xFFFFFFFF),
                                  ),
                                 child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                      children: [
                         CircleAvatar(
                                        radius: 25,
                                        backgroundColor: Color(0xFFFFF2EE),
                                        child:  Center(
                                  child:    ImageIcon(
                        AssetImage("assets/images/profiletile.png"),
                        color: kPrimaryColor,
                        size: 24,
                              ),
                               ),
                                      ),
                            space3R,
                            space3R,
                               TitleText(
                               title: 'Update Profile',
                               color: kparagraphColor,
                               fontSize: 16,
                               fontWeight: FontWeight.w500,
                             ),
                      ],
                    ),
                    ImageIcon(
                        AssetImage("assets/icons/backbtn.png"),
                        color: Color(0xFF0C092A),
                        size: 24,
                              ),
                      ],
                    ),
                                 ),
                               ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  UpdateProfile()
                  ));
                }
                       
                 ),
             
              ],
            ),
          ),
             
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleText(
                    title: 'Notification',
                    color: kmaindarkColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
            ),
                  Switch(
            activeColor: Colors.white,
            activeTrackColor: kPrimaryColor,
            value: isSwitched,
            onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
            },
          ),
                  ],
                ),
              ),
               
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: GestureDetector(
                     child: Container(
                                   height: 80,
                                   width: 340,
                                   decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: const Color(0xFFFFFFFF),
                                    ),
                                   child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                        children: [
                           CircleAvatar(
                                          radius: 25,
                                          backgroundColor: Color(0xFFFFF2EE),
                                          child:  Center(
                                    child:    ImageIcon(
                          AssetImage("assets/images/notifytile.png"),
                          color: kPrimaryColor,
                          size: 24,
                                ),
                                 ),
                                        ),
                              space3R,
                              space3R,
                                 TitleText(
                                 title: 'Notification',
                                 color: kparagraphColor,
                                 fontSize: 16,
                                 fontWeight: FontWeight.w500,
                               ),
                        ],
                      ),
                      ImageIcon(
                          AssetImage("assets/icons/backbtn.png"),
                          color: Color(0xFF0C092A),
                          size: 24,
                                ),
                        ],
                      ),
                                   ),
                                 ),
                   onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  Notify()
                  ));
                }
                   ),
                 ),
             
        SizedBox(height: 14,),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: GestureDetector(
                     child: Container(
                                   height: 80,
                                   width: 340,
                                   decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: const Color(0xFFFFFFFF),
                                    ),
                                   child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                        children: [
                           CircleAvatar(
                                          radius: 25,
                                          backgroundColor: Color(0xFFFFF2EE),
                                          child:  Center(
                                    child:    ImageIcon(
                          AssetImage("assets/images/abouttile.png"),
                          color: kPrimaryColor,
                          size: 24,
                                ),
                                 ),
                                        ),
                              space3R,
                              space3R,
                                 TitleText(
                                 title: 'About Quizzio',
                                 color: kparagraphColor,
                                 fontSize: 16,
                                 fontWeight: FontWeight.w500,
                               ),
                        ],
                      ),
                      ImageIcon(
                          AssetImage("assets/icons/backbtn.png"),
                          color: Color(0xFF0C092A),
                          size: 24,
                                ),
                        ],
                      ),
                                   ),
                                 ),
                      onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  FAQabout()
                  ));
                }
                   ),
                 ),
             
        SizedBox(height: 14,),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: GestureDetector(
                     child: Container(
                                   height: 80,
                                   width: 340,
                                   decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: const Color(0xFFFFFFFF),
                                    ),
                                   child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                        children: [
                           CircleAvatar(
                                          radius: 25,
                                          backgroundColor: Color(0xFFFFF2EE),
                                          child:  Center(
                                    child:    ImageIcon(
                          AssetImage("assets/images/helptile.png"),
                          color: kPrimaryColor,
                          size: 24,
                                ),
                                 ),
                                        ),
                              space3R,
                              space3R,
                                 TitleText(
                                 title: 'Help Center',
                                 color: kparagraphColor,
                                 fontSize: 16,
                                 fontWeight: FontWeight.w500,
                               ),
                        ],
                      ),
                      ImageIcon(
                          AssetImage("assets/icons/backbtn.png"),
                          color: Color(0xFF0C092A),
                          size: 24,
                                ),
                        ],
                      ),
                                   ),
                                 ),
                     onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  HelpCenter()
                  ));
                }
                   ),
                 ),
             
             SizedBox(height: 155,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: GestureDetector(
          child: Container(
                height: 48,
                width: 335,
                 decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(8),
                 color: const Color(0xFFFFFFFF),
                 border: Border.all(
                  color: kPrimaryColor
                 )
                  ),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        ImageIcon(
                          AssetImage("assets/icons/logout.png"),
                          color: kPrimaryColor,
                          size: 24,
                                ),
                                space2R,
                                         TitleText(
                                         title: 'Logout',
                                         color: kPrimaryColor,
                                         fontSize: 14,
                                         fontWeight: FontWeight.w600,
                                       ),
                    ],
                  ),
              ),
        onTap: (){
          
                          showModalBottomSheet<void>(
            context: context,
            backgroundColor: const Color(0xFFFFF8F6),
            shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32.0),
            topRight: Radius.circular(32.0),
          ),
        ),
            builder: (BuildContext context) {
                  return SizedBox(
                    height: 250,
                  child: Column(
                    children: [
                      SizedBox(height: 12,),
                       HorizontalDivider(
                              color:const Color(0xFFB3B7BF),
                              thickness: 6,
                              horizontalMargin: 155,
                            ),
                             SizedBox(height: 12,),
                       TitleText(
                                         title: 'Logout',
                                         color: kmaindarkColor,
                                         fontSize: 24,
                                         fontWeight: FontWeight.w600,
                                       ),
                      SizedBox(height: 12,),
                       HorizontalDivider(
                              color:const Color(0xFFB3B7BF),
                              thickness: 1,
                              horizontalMargin: 22,
                            ),
                          SizedBox(height: 12,),
                           TitleText(
                                         title: 'Are you sure you want to log out?',
                                         color: Color(0xFF424242),
                                         fontSize: 20,
                                         fontWeight: FontWeight.w600,
                                       ),
                         SizedBox(height: 32,),

                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 20),
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 48,
                                width: 162,
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color(0xFFFFFFFF),
                                  border: Border.all(
                                    color: kPrimaryColor
                                  )
                                ),
                                child:  Center(
                                  child: TitleText(
                                             title: 'Cancel',
                                             color: kPrimaryColor,
                                             fontSize: 14,
                                             fontWeight: FontWeight.w600,
                                           ),
                                ),
                              ),

                   Container(
                                height: 48,
                                width: 162,
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: kPrimaryColor,
                                ),
                                child:  Center(
                                  child: TitleText(
                                             title: 'Yes, Logout',
                                             color: const Color(0xFFFFFFFF),
                                             fontSize: 14,
                                             fontWeight: FontWeight.w600,
                                           ),
                                ),
                              ),
                       
                            ],
                           ),
                         ),

                    ],
                  ),
                  );

            },
          );
                    
        },
        ),
      ),
       
          ],
        ),
      ),
    );
  }
}