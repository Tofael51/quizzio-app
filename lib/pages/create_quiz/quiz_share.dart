import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quizzio/pages/play_quiz/quiz.dart';
import 'package:quizzio/utils/constants.dart';
import 'package:quizzio/utils/widgets/appbar.dart';
import 'package:quizzio/utils/widgets/common_widget.dart';
import 'package:share_plus/share_plus.dart';


class CreateQuiz extends StatefulWidget {
  const CreateQuiz({super.key});

  @override
  State<CreateQuiz> createState() => _CreateQuizState();
}

class _CreateQuizState extends State<CreateQuiz> {
  @override
  Widget build(BuildContext context) {
    return 
    
    Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                  ClipPath(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 310,
            color: kPrimaryColor,
            child:   AppBarWithSearch(
                title: "Quiz",
               hasBackArrow: true,
              ),
          ),
          clipper: CustomClipPath(),
        ),
         Positioned(
            // top: 0,
            bottom: -33,
            left: 35,
            child:   Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 208,
                width: 320,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                     color: Colors.white,
                                    width: 4
                                  )
                                ),
                child:   Image.asset("assets/images/quiztop.png",
            height: 44,
            ),
                              ),
            ),
      
          ),
              ],
            ),
            SizedBox(height: 32,),
         Column(
          children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                    TitleText(
              title: 'General Quiz',
              color: kmaindarkColor,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
            space3C,
            space3C,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              MainContainer(
                color:  Color(0xFFFFF2EE),
                height: 110,
                width: 110,
                borderRadius: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      CircleAvatar(
                                  radius: 18,
                                  backgroundColor: kPrimaryColor,
                                  child:  Center(
                            child:    ImageIcon(
                  AssetImage("assets/icons/qsn.png"),
                  color: Colors.white,
                  size: 15,
             ),
              ),
                                ),
                                space1C,
                                 TitleText(
              title: '10 question',
              color: kmaindarkColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
                  ],
                ),
              ),
             
              MainContainer(
                color:  Color(0xFFFFF2EE),
                height: 110,
                width: 110,
                borderRadius: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      CircleAvatar(
                                  radius: 18,
                                  backgroundColor: Color(0xFFFF981F),
                                  child:  Center(
                            child:    ImageIcon(
                  AssetImage("assets/icons/points.png"),
                  color: Colors.white,
                  size: 15,
             ),
              ),
                                ),
                                space1C,
                                 TitleText(
              title: '100 points',
              color: kmaindarkColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
                  ],
                ),
              ),

    
              MainContainer(
                color:  Color(0xFFFFF2EE),
                height: 110,
                width: 110,
                borderRadius: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      CircleAvatar(
                                  radius: 18,
                                  backgroundColor: Color(0xFF05A1DC),
                                  child:  Center(
                            child:    ImageIcon(
                  AssetImage("assets/icons/clock.png"),
                  color: Colors.white,
                  size: 15,
             ),
              ),
                                ),
                                space1C,
                                 TitleText(
              title: '60 sec',
              color: kmaindarkColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
                  ],
                ),
              )
              ],
            ),
 space3C,
            space3C,
              TitleText(
              title: 'Description',
              color: kPrimaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            space3C,
             TitleText(
              title: 'Any time is a good time for a quiz and even better if that happens to be a football themed quiz!',
              color: kparagraphColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),

            space3C,
            space3C,

            Row(
              children: [
                  CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Color(0xFFC4D0FB),
                                  child:  Center(
                            child:    ImageIcon(
                  AssetImage("assets/icons/qsn.png"),
                  color: Colors.white,
                  size: 15,
             ),
              ),
                                ),
                                space3R,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   TitleText(
              title: 'Habibul Hasan Hira',
              color: kmaindarkColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            space2C,
                   TitleText(
              title: 'Quiz Creator',
              color: kparagraphColor,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
                ],
              )
              ],
            ),

            SizedBox(height: 32,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 SizedBox(
              width: 275,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                ),
                child: GestureDetector(
                    onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>
                       QuizScreen()
                       ));
                    },
                    child: const Text('Play Quiz')),
              ),
            ),
            space3R,
             GestureDetector(
               child: CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Color(0xFFFFF2EE),
                                    child:  Center(
                              child:    ImageIcon(
                                              AssetImage("assets/icons/share.png"),
                                              color: kPrimaryColor,
                                              size: 15,
                                         ),
                ),
                                  ),
                                  onTap: ()async{
                                  await  Share.share('share text',subject: 'any subjcy');
                                  },
             ),
             
              ],
            )
           
            ],
          ),
        )
       
          ],
         )
       
          ],
        ),
      ),
    );
 
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius=10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.arcToPoint(Offset(size.width, size.height),
        radius: Radius.elliptical(30, 10));
    path.lineTo(size.width, 0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}