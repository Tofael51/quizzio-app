import 'package:flutter/material.dart';
import 'package:quizzio/pages/dashboard/ui/book_doctor_appointment_section.dart';
import 'package:quizzio/pages/dashboard/ui/healthcare_section.dart';
import 'package:quizzio/pages/dashboard/ui/top_order_lab_test_section.dart';
import 'package:quizzio/pages/dashboard/ui/top_selling_medicine_section.dart';
import 'package:quizzio/utils/constants.dart';
import 'package:quizzio/utils/widgets/appbar.dart';
import 'package:quizzio/utils/widgets/common_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);
  static String routeName = '/dashboard';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
       backgroundColor: Color(0xFFFFF2EE),
       body: SingleChildScrollView(
         child: Column(
          children: [
            SizedBox(height: 65,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               
              children: [
               Row(
                children: [
                    CircleAvatar(
                                      radius: 33,
                                        backgroundColor: Color(0xFFC4D0FB),
            backgroundImage: AssetImage("assets/images/manimg.png"),
                                    ),
                    space2R,
               Column(
                 children: [
                   TitleText(
              title: 'Hello Hira  👋',
              color:  Color(0xFF171F46),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
                   TitleText(
              title: 'Welcome back again!',
              color: kparagraphColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
                 ],
               ),
                ],
               ),
                 CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.white,
                                      child:  Center(
                                child:    ImageIcon(
                      AssetImage("assets/icons/notification.png"),
                      color: Color(0xFF171F46),
                      size: 15,
                 ),
                  ),
                                    ),
              ],
             ),
           ),
               SizedBox(height: 24,),
                       Container(
                    height: 146,
                    width: 335,
                     decoration: BoxDecoration(
         gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFFFF7B54),
               Color(0xFFFF7E58),
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(16)),
                            ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(children: [
                      Image.asset("assets/images/dashboardd.png",
         height: 122,
         width: 122,
          fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  TitleText(
                         title: 'Upcoming Quiz',
                         color: Colors.white,  
                        fontSize: 12, 
                        fontWeight: FontWeight.w700 
                      ),
                        SizedBox(height: 8,),
                  TitleText(
                         title: 'Science Smarts: A\nBrain-Busting Quiz',
                         color: Colors.white,  
                        fontSize: 16, 
                        fontWeight: FontWeight.w600 
                      ),
                      SizedBox(height: 11,),
                        Container(  
          height: 30,  
          width: 80,  
            decoration: BoxDecoration(  
              borderRadius: BorderRadius.circular(20),  
              color: Color.fromRGBO(255, 255, 255, 0.3),  
            ),
        
            child:   Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 ImageIcon(
                    AssetImage("assets/icons/play.png"), 
                    color: Colors.white, 
                    size: 18,  
               ),
               space1R,
                TitleText(
                           title: 'Play Now',
                           color: Colors.white,  
                          fontSize: 10, 
                          fontWeight: FontWeight.w500 
                        ),
              ],
            ),
               ),  
              ],
            ),
          )
                    ]),
                  ),
                  ),
            SizedBox(height: 22,),
            TitleText(
                         title: 'Popular Categories',
                         color: kmaindarkColor,  
                        fontSize: 16, 
                        fontWeight: FontWeight.w500 
                      ),
                      SizedBox(height: 12,),
            Row(
              children: [
                space4R,
                 Column(
                   children: [
                     CircleAvatar(
                                      radius: 33,
            backgroundImage: AssetImage("assets/icons/row1.png"),
                                    ),
                                     SizedBox(height: 8,),
                                      TitleText(
                         title: 'All Quiz',
                         color: kPrimaryColor,  
                        fontSize: 12, 
                        fontWeight: FontWeight.w400 
                      ),
                   ],
                 ),
              ],
            ),

                                              
            const HealthCareSection(),

            SizedBox(height: 52,),
            
          ],
         ),
       ),
    );
  }
}
