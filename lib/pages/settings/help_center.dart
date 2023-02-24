import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quizzio/utils/constants.dart';
import 'package:quizzio/utils/widgets/appbar.dart';
import 'package:quizzio/utils/widgets/common_widget.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:  Color(0xFFFFF2EE),
       body: Column(
        children: [
           AppBarWithSearch(
                title: 'Help Center',
              ),

        Container(
          height: 72,
          width: 335,
           decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xFFFFFFFF),
                              ),
          child: Row(
            children: [
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 26),
                 child: ImageIcon(
                      AssetImage("assets/icons/customservice.png"),
                      color: kPrimaryColor,
                      size: 24,
             ),
               ),
                 TitleText(
                               title: 'Customer Service',
                               color: Color(0xFF212121),
                               fontSize: 16,
                               fontWeight: FontWeight.w600,
                             ),
            ],
          ),
        ),
        SizedBox(height: 16,),
        Container(
          height: 72,
          width: 335,
           decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xFFFFFFFF),
                              ),
          child: Row(
            children: [
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 26),
                 child: ImageIcon(
                      AssetImage("assets/icons/whatsapp.png"),
                      color: kPrimaryColor,
                      size: 24,
             ),
               ),
                 TitleText(
                               title: 'WhatsApp',
                               color: Color(0xFF212121),
                               fontSize: 16,
                               fontWeight: FontWeight.w600,
                             ),
            ],
          ),
        ),
        SizedBox(height: 16,),
        Container(
          height: 72,
          width: 335,
           decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xFFFFFFFF),
                              ),
          child: Row(
            children: [
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 26),
                 child: ImageIcon(
                      AssetImage("assets/icons/website.png"),
                      color: kPrimaryColor,
                      size: 24,
             ),
               ),
                 TitleText(
                               title: 'Website',
                               color: Color(0xFF212121),
                               fontSize: 16,
                               fontWeight: FontWeight.w600,
                             ),
            ],
          ),
        ),
        SizedBox(height: 16,),
        Container(
          height: 72,
          width: 335,
           decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xFFFFFFFF),
                              ),
          child: Row(
            children: [
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 26),
                 child: ImageIcon(
                      AssetImage("assets/icons/facebook.png"),
                      color: kPrimaryColor,
                      size: 24,
             ),
               ),
                 TitleText(
                               title: 'Facebook',
                               color: Color(0xFF212121),
                               fontSize: 16,
                               fontWeight: FontWeight.w600,
                             ),
            ],
          ),
        ),
        SizedBox(height: 16,),
        Container(
          height: 72,
          width: 335,
           decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xFFFFFFFF),
                              ),
          child: Row(
            children: [
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 26),
                 child: ImageIcon(
                      AssetImage("assets/icons/tweter.png"),
                      color: kPrimaryColor,
                      size: 24,
             ),
               ),
                 TitleText(
                               title: 'Twitter',
                               color: Color(0xFF212121),
                               fontSize: 16,
                               fontWeight: FontWeight.w600,
                             ),
            ],
          ),
        ),
        SizedBox(height: 16,),
        Container(
          height: 72,
          width: 335,
           decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xFFFFFFFF),
                              ),
          child: Row(
            children: [
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 26),
                 child: ImageIcon(
                      AssetImage("assets/icons/instagram.png"),
                      color: kPrimaryColor,
                      size: 24,
             ),
               ),
                 TitleText(
                               title: 'Instagram',
                               color: Color(0xFF212121),
                               fontSize: 16,
                               fontWeight: FontWeight.w600,
                             ),
            ],
          ),
        ),
        SizedBox(height: 66,),

      Container(
            height: 48,
            width: 335,
             decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(8),
             color: const Color(0xFFFFFFFF),
             border: Border.all(
              color: kPrimaryColor
             )
              ),
              child:  Center(
                child: TitleText(
                                   title: 'Change Password',
                                   color: kPrimaryColor,
                                   fontSize: 14,
                                   fontWeight: FontWeight.w600,
                                 ),
              ),
          ),
       
        ],
       ),
    );
  }
}