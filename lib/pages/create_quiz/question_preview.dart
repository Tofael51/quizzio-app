import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:quizzio/pages/create_quiz/quiz_share.dart';
import 'package:quizzio/utils/constants.dart';
import 'package:quizzio/utils/widgets/appbar.dart';

import '../../utils/widgets/common_widget.dart';

class QuestionPreview extends StatefulWidget {
  const QuestionPreview({super.key});

  @override
  State<QuestionPreview> createState() => _QuestionPreviewState();
}

class _QuestionPreviewState extends State<QuestionPreview> {

dynamic file;
TextEditingController _titleController = TextEditingController();
  TextEditingController _descController = TextEditingController();
  TextEditingController _qsnscoreController = TextEditingController();
  TextEditingController _qsndurationController = TextEditingController();
  String _selectedText = 'Only Me';
  String _selectedNum = '5';
  List<String> _location = [
    'Only Me',
    'Public',
  ];

  @override
  Widget build(BuildContext context) {
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

                          
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: 
              
              MainContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     TitleText(
              title: 'Quiz Overview',
              // color: Colors.black,
              color: kmaindarkColor,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            space2C,
            Container(
              height: 153,
              width: 303,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffF7F8FE),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
            //                     ImageIcon(
            //       AssetImage("assets/icons/mediaimg.png"),
            //       size: 40,
            //  ),
            if(file!=null)
            Image.file(file,
            width: double.infinity,
            height: 153,
            fit: BoxFit.cover,
            ),
             space2C,
                                   GestureDetector(
                                     child: TitleText(
                                                 title: 'Add Media',
                                                 // color: kPrimaryColor,
                                                 fontSize: 14,
                                                 fontWeight: FontWeight.w600,
                                               ),
                              onTap: (){
                               imagePicker();
                              },
                                   ),
                                ],
                              ),
                            ),
      
                            space2C,
      
                   CustomTextField(
                  controller: _titleController,
                  labelText: 'Title',
                  isRequired: true,
                   suffixIcon: Align(
              widthFactor:1,
              heightFactor:1,
            ),
                ),
                   CustomTextField(
                  controller: _descController,
                  labelText: 'Description',
                  hintText: 'Enter your description',
                  textFieldHeight: 99,
                            keyboardType: TextInputType.multiline,
            maxLines: 6,
                   suffixIcon: const Align(
              widthFactor:1,
              heightFactor:1,
            ),
                ),
      
                CustomDropDownMenu(
                  label: 'Visibility',
                  isRequired: true,
                  hintText: 'Select One',
                  fillColor: Colors.white,
                  list: _location,
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
                  textColor: const Color(0xff3c3c3c),
                  icon: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xffD9D9D9),
                    ),
                    child: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
       

                  ],
                ),
              ),
         
            ),
      
            space2C,
            space2C,

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MainContainer(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                           TitleText(
              title: 'Duration & Score',
              color: kmaindarkColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),

            ImageIcon(
                  AssetImage("assets/icons/duration.png"),
                  color: kPrimaryColor,
                  size: 20,
             ),
                      ],
                    ),
                    space2C,
                     Row(
                   
                      children: [
                            Container(
              height: 33,
              width: 75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                  AssetImage("assets/icons/clock.png"),
                  color: kPrimaryColor,
                  size: 20,
             ),
             Text('10 Sec'),
                ],
              ),
               decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: const Color(0xFFFFF2EE),
                              ),
            ),
            space2R,
            space2R,
             Container(
              height: 33,
              width: 75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                  AssetImage("assets/icons/stars.png"),
                  color: kPrimaryColor,
                  size: 20,
             ),
             Text('10 Pt'),
                ],
              ),
               decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: const Color(0xFFFFF2EE),
                              ),
            ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
                space2C,
            space2C,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MainContainer(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                              TitleText(
              title: 'Questions List',
              color: kmaindarkColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            space2R,
            Container(
              height: 26,
              width: 26,
                        decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                         color: kmainSecndColor,
                                      ),
              child:  Center(
                        child: TitleText(
                        title: '6',
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
            ),
              ),                
            ),
                          ],
                        ),
                        ImageIcon(
                  AssetImage("assets/icons/duration.png"),
                  color: kPrimaryColor,
                  size: 20,
             ),
                      ],
                    ),
                    space3C,
                    Container(
                      height: 98,
                      width: 320,
                        decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                         color: Color(0xFFFFF2EE),
                                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 18,
                                  backgroundColor: kPrimaryColor,
                                  child:  Center(
                            child: TitleText(
                            title: '1',
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
            ),
              ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TitleText(
                                title: 'What is the name of The\n Beatles’ first album?',
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
            ),
            space1C,
            Container(
              height: 22,
              width: 90,
               decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                         color: Color(0xFFEB6850),
                                      ),
              child: Center(
                child: TitleText(
                                  title: 'Multiple Choices',
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
            ),
              ),
            ),
                              ],
                            ),

            //  ImageIcon(
            //       AssetImage("assets/icons/mediaimg.png"),
            //       size: 40,
            //  ),

            Image.asset("assets/images/quiztype.png",
            height: 44,
            )

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                  ],
                ),
              ),
            ),
    SizedBox(height: 16,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child:
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
                     CreateQuiz()
                       ));
                    },
                    child: const Text('Create Quiz')),
              ),
            ),
                  ),
            SizedBox(height: 16,)
          ],
        ),
      ),
    );
  }
  
  void imagePicker() async{
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if(image!= null){
      setState(() {
        file=File(image.path);
      });
    }
  }
}