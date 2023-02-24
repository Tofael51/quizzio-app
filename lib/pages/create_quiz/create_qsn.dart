import 'package:flutter/material.dart';
import 'package:linear_step_indicator/linear_step_indicator.dart';
import 'package:get/get.dart';
import 'package:quizzio/pages/create_quiz/truefalse.dart';
import 'package:quizzio/utils/constants.dart';
import 'package:quizzio/utils/widgets/appbar.dart';
import 'package:quizzio/utils/widgets/common_widget.dart';

const int STEPS = 6;

class CreateQuestion1 extends StatefulWidget {
  const CreateQuestion1({super.key});

  @override
  State<CreateQuestion1> createState() => _CreateQuestion1State();
}

class _CreateQuestion1State extends State<CreateQuestion1> {

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
int _activeCurrentStep = 0;

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Scaffold(
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
          steps: 6,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                  hintText: 'What is capital of Banglades |',
                  isRequired: true,
                   suffixIcon: Align(
              widthFactor:1,
              heightFactor:1,
            ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [     
                        
                        Container(
                          height: 78,
                          width: 146,
                            decoration: BoxDecoration(
         gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF2765EC),
               Color(0xFF387FF5
),
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(8)),
                            ),
                            child:    Center(
                              child: 
                              GestureDetector(
                                child: TitleText(
                                            title: '+ Add Answer',
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
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
                    height: 311,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child:
                        
                         Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 10,),
                  
                            HorizontalDivider(
                              color:const Color(0xFFB3B7BF),
                              thickness: 6,
                              horizontalMargin: 133,
                            ),
                           SizedBox(height: 10,),
                            CustomTextField(
                  controller: _titleController,
                  labelText: 'Add Answer*',
                  // textFieldHeight: 94,
                  horizontalPadding: 0,
                  fillColor: Colors.blue,
                   suffixIcon: const Align(
              widthFactor:1,
              heightFactor:1,
            ),
                ),
                 SizedBox(height: 18,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleText(
                                            title: 'Correct answer',
                                            color: kmaindarkColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),

                                           Switch(
                                            activeColor: kPrimaryColor,
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),
                  ],
                ),
                 SizedBox(height: 18,),
                SizedBox(
                  width: Get.width,
              height: 48,
                  child: ElevatedButton(onPressed: (){
                    //     Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    // CreateQuestion1()
                    // // ForgetScreen()
                    //  ));
                  },
                   style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                   child: Text('Apply')
                   ),
                )
          ],
                        ),
                    
                      ),
                    ),
                  );

            },
          );
                    
                        },
                              ),
                            ),
                        ),
                   

                        Container(
                          height: 78,
                          width: 146,
                            decoration: BoxDecoration(
         gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFFE84141),
               Color(0xFF9C1D1B),
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
                   
                      ],
                    ),
                    space3C,
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        Container(
                          height: 78,
                          width: 146,
                            decoration: BoxDecoration(
         gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF13B77B),
               Color(0xFF5FA415),
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
                

                        Container(
                          height: 78,
                          width: 146,
                            decoration: BoxDecoration(
         gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFFFDD943),
               Color(0xFFFA7B1A),
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
                
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16,)
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
                   CreateQuestion2()
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
