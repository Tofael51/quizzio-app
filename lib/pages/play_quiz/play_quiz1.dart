import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzio/pages/play_quiz/play_quiz2.dart';
import 'package:quizzio/utils/constants.dart';
import 'package:quizzio/utils/widgets/common_widget.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class PlayQuiz1 extends StatefulWidget {
  const PlayQuiz1({super.key});

  @override
  State<PlayQuiz1> createState() => _PlayQuiz1State();
}

class _PlayQuiz1State extends State<PlayQuiz1> {
  CountDownController controller = CountDownController();
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          children: [
               Container(
           decoration: new BoxDecoration(
                      color: kPrimaryColor
                        ),
                      child: Column(
                        children: [
                          SizedBox(height: 32,),
                          SizedBox(height: 44,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: StepProgressIndicator(
          totalSteps: 10,
          currentStep: 1,
          size: 8,
          padding: 0,
          selectedColor: Colors.white,
          unselectedColor: Colors.white70,
          roundedEdges: Radius.circular(8),
      ),
              ),
        SizedBox(height: 16,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child:   Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Container(
        height: 35,
           width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
         color: Color.fromRGBO(255, 255, 255, 0.3),
          ),
         child:  Center(
        child: TitleText(
          title: '01/10',
                color: Colors.white,
              fontSize: 14,
            fontWeight: FontWeight.w600,
              ),
            ), 
        ),
        
        Container(  
          height: 35,  
          width: 60,  
            decoration: BoxDecoration(  
              borderRadius: BorderRadius.circular(12),  
              color: Color.fromRGBO(255, 255, 255, 0.3),  
            ),
        
            child:  Row(  
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                ImageIcon(
                    AssetImage("assets/icons/points.png"), 
                    color: Colors.white, 
                    size: 15,  
               ),
          space2R,
                TitleText(
                       title: '10',
                       color: Colors.white,  
                      fontSize: 14, 
                      fontWeight: FontWeight.w600 
                    ),
              ],
            ), 
        ),  
          ], 
        ),
      ),
      space5C,
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 08),
        child:   Container( 
        height: 625,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40.0),
              topLeft: Radius.circular(40.0),
              ),
              color: Colors.white,
        ),
        child: Column(
          children: [
            SizedBox(height: 28,),
            CircularCountDownTimer(
     duration: 10,
     initialDuration: 0,
     controller: CountDownController(),
     width: 64,
     height: 64,
     ringColor: Colors.grey[300]!,
     ringGradient: null,
     fillColor: Colors.purpleAccent[100]!,
     fillGradient: null,
     backgroundColor: Colors.purple[500],
     backgroundGradient: null,
    //  strokeWidth: 20.0,
    //  strokeCap: StrokeCap.round,
     textStyle: TextStyle(
         fontSize: 33.0, color: Colors.white, fontWeight: FontWeight.bold),
     isReverse: false,
     isReverseAnimation: false,
     isTimerTextShown: true,
     autoStart: false,
     onStart: () {
        debugPrint('Countdown Started');
     },
     onComplete: () {
        debugPrint('Countdown Ended');
     },
     onChange: (String timeStamp) {
        debugPrint('Countdown Changed $timeStamp');
     },
     timeFormatterFunction: (defaultFormatterFunction, duration) {
        if (duration.inSeconds == 10) {
           return "Start";
        } else {
           return Function.apply(defaultFormatterFunction, [duration]);
        }
     },
 ),
  SizedBox(height: 50),
 Padding(
   padding: const EdgeInsets.symmetric(horizontal: 12),
   child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       TitleText(
        title: 'Who is the current President of the United States? ',
        color: kmaindarkColor,
       fontSize: 20,
       fontWeight: FontWeight.w600,
       ),
        SizedBox(height: 32),

       Container(
        height: 60,
        width: Get.width,
         decoration: new BoxDecoration(
           borderRadius: BorderRadius.all(Radius.circular(8)),
                      gradient: new LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF2765EC),
                          Color(0xFF387FF5),
                        ],     )
                        ),
          child:  Row(
           crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              space3R,
              TitleText(
        title: 'Barak Ovama',
        color: Colors.white,
       fontSize: 16,
       fontWeight: FontWeight.w600,
       ),
            ],
          ),
       ),
   
     SizedBox(height: 16),

       Container(
        height: 60,
        width: Get.width,
         decoration: new BoxDecoration(
           borderRadius: BorderRadius.all(Radius.circular(8)),
                      gradient: new LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFE84141),
                          Color(0xFF9C1D1B),
                        ],     )
                        ),
          child:  Row(
           crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              space3R,
              TitleText(
        title: 'Barak Ovama',
        color: Colors.white,
       fontSize: 16,
       fontWeight: FontWeight.w600,
       ),
            ],
          ),
       ),
     SizedBox(height: 16),

       Container(
        height: 60,
        width: Get.width,
         decoration: new BoxDecoration(
           borderRadius: BorderRadius.all(Radius.circular(8)),
                      gradient: new LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFFDD943),
                          Color(0xFFFA7B1A),
                        ],     )
                        ),
          child:  Row(
           crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              space3R,
              TitleText(
        title: 'Barak Ovama',
        color: Colors.white,
       fontSize: 16,
       fontWeight: FontWeight.w600,
       ),
            ],
          ),
       ),
     SizedBox(height: 16),

       Container(
        height: 60,
        width: Get.width,
         decoration: new BoxDecoration(
           borderRadius: BorderRadius.all(Radius.circular(8)),
                      gradient: new LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF13B77B),
                          Color(0xFF5FA415),
                        ],     )
                        ),
          child:  Row(
           crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              space3R,
              TitleText(
        title: 'Barak Ovama',
        color: Colors.white,
       fontSize: 16,
       fontWeight: FontWeight.w600,
       ),
            ],
          ),
       ),
   
   SizedBox(height: 44),

     SizedBox(
              width: Get.width,
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
                  PlayQuiz2()
                  ));
               },
               child: const Text('Next')
               ),
              ),
            ),
     ],
   ),
 )
          ],
        ),
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