import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:linear_step_indicator/linear_step_indicator.dart';
import 'package:quizzio/pages/create_quiz/question_preview.dart';
import 'package:quizzio/utils/constants.dart';
import 'package:quizzio/utils/widgets/appbar.dart';
import 'package:quizzio/utils/widgets/common_widget.dart';

class CreateQuestion4 extends StatefulWidget {
  const CreateQuestion4({super.key});

  @override
  State<CreateQuestion4> createState() => _CreateQuestion4State();
}

class _CreateQuestion4State extends State<CreateQuestion4> {

      String _selectedText = 'Multiple Options';
 bool isSwitched = true;
 TextEditingController _addqsnController = TextEditingController();
 TextEditingController _titleController = TextEditingController();
 final pageController = PageController();
 late FocusNode text1, text2, text3, text4;

  List<String> _location = [
    'Multiple Options',
    'True or False',
    'Fill in the gaps',
    'Write Answer',
  ];


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor:  Color(0xFFFFF2EE),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarWithSearch(
                title: "Create Question",
               hasBackArrow: true,
              ),
              FullLinearStepIndicator(
          steps: 5,
          // lineHeight: 3.5,
          verticalPadding: 12,
          // activeNodeColor: Colors.brown,
          // inActiveNodeColor:  Colors.white,
          // activeLineColor: Colors.brown,
          // inActiveLineColor: const Color(0xffd1d5d8),
          controller: pageController,
          // labels: List<String>.generate(STEPS, (index) => "Step ${index + 1}"),
          complete: () {

            return Future.value(true);
          },
        ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        // Stepper(
                        //   type: StepperType.horizontal,
                        //   steps: getSteps(),
                        // ),

                        CustomDropDownMenu(
                        isRequired: true,
                        hintText: 'Select One',
                        list: _location,
                        fillColor: Colors.white,
                        leftPadding: 12,
                        verticalMargin: 12,
                        onChange: (val) {
                          _selectedText = val;
                          setState(() {});
                        },
                        height: 50,
                        selectedOption: _selectedText,
                        elevation: 0,
                        shadowColor: Colors.transparent,
                        borderRadius: BorderRadius.circular(0),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        textColor: const Color(0xFF3A4346),
                        icon: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 16,
                          color: Color(0xFF3A4346)
                        ),
                ),
                   
              MainContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 16,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [     
                         TitleText(
              title: 'Question Overview',
              color: kmaindarkColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            Container(
              height: 28,
              width: 68,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   ImageIcon(
                AssetImage("assets/icons/clock.png"),
                color: Color(0xFFFF7B54),
                size: 15,
             ),
                  Text('10 Sec'),
                ],
              ),
               decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: const Color(0xFFFFF2EE),
                              ),
            )
                       ],
                     ),
            SizedBox(height: 16,),
            Container(
              height: 153,
              width: Get.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffF7F8FE),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                ImageIcon(
                  AssetImage("assets/icons/mediaimg.png"),
                  size: 40,
                  color: kPrimaryColor,
             ),
                                   TitleText(
              title: 'Add Media',
              // color: kPrimaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
                                ],
                              ),
                            ),
      
                   space2C,
      
                   CustomTextField(
                  controller: _addqsnController,
                  labelText: 'Add Questions',
                  hintText: 'How old are you?',
                  isRequired: true,
                   suffixIcon: Align(
              widthFactor:1,
              heightFactor:1,
            ),
                ),

  SizedBox(height: 16,),
   Container(
                          height: 48,
                          width: 303,
                            decoration: BoxDecoration(
         gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF2765EC),
               Color(0xFF387FF5),
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(8)),
                            ),
                            child:    Center(
                              child: TitleText(
              title: '+ Add Answer',
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
                            ),
                        ),
  SizedBox(height: 16,),
                  ],
                ),
              ),

              space3C,
              space3C,

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
                   QuestionPreview()
                     ));
                  },
                  child: const Text('Add Question')),
              ),
            ),
         
         
                      ],
                    ),
                  ),
                  SizedBox(height: 32,),
          ],
        ),
      ),
    );
 
  }
}