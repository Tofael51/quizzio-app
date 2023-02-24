import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzio/pages/create_quiz/create_qsn.dart';
import 'package:quizzio/utils/constants.dart';
import 'package:quizzio/utils/widgets/appbar.dart';
import 'package:quizzio/utils/widgets/common_widget.dart';

class CreateQuizScreen extends StatefulWidget {
  const CreateQuizScreen({super.key});

  @override
  State<CreateQuizScreen> createState() => _CreateQuizScreenState();
}

class _CreateQuizScreenState extends State<CreateQuizScreen> {
  static const String routeName = '/quiz';
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
  List<String> _number = [
    '1','2','3','4','5','6','7','8','9','10',
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
              title: "Create Quiz",
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
              color: Colors.black,
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
                                ImageIcon(
                  AssetImage("assets/icons/mediaimg.png"),
                  size: 40,
                  color: kPrimaryColor,
             ),
             space2C,
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
                    child:  Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 16,
                      color: kparagraphColor,
                    ),
                  ),
                ),
       

                  ],
                ),
              ),
         
            ),
      
            space2C,
      
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MainContainer(
                height: 54,
                width: Get.width,
                borderRadius: 16,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleText(
                    title: 'Questions (0)',
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
              ),
                  ],
                ),
              ),
            ),
      
           space3C,
      
             Center(
               child: SizedBox(
                width: Get.width - 40,
                      height: 48,
                 child: ElevatedButton(
        child: const Text('Create Question'),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateQuestion1()));
        //   showModalBottomSheet<void>(
        //     context: context,
        //     backgroundColor: const Color(0xFFFFF8F6),
        //     shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(
        //     topLeft: Radius.circular(32.0),
        //     topRight: Radius.circular(32.0),
        //   ),
        // ),
        //     builder: (BuildContext context) {
        //           return Expanded(
        //             flex: 1,
        //             child: SizedBox(
        //               height: 420,
        //               child: Center(
        //                 child: Padding(
        //                   padding: const EdgeInsets.symmetric(horizontal: 20),
        //                   child:
                          
        //                    Column(
        //                    mainAxisAlignment: MainAxisAlignment.start,
        //             crossAxisAlignment: CrossAxisAlignment.center,
        //                     children: [
        //                       SizedBox(height: 10,),
                    
        //                       HorizontalDivider(
        //                         color:const Color(0xFFB3B7BF),
        //                         thickness: 6,
        //                         horizontalMargin: 155,
        //                       ),
        //                      SizedBox(height: 10,),
        //                     TitleText(
        //               title: 'Create Question',
        //               color: Colors.black,
        //               fontSize: 22,
        //               fontWeight: FontWeight.w600,
        //                         ), 
                  
        //                         CustomDropDownMenu(
        //             label: 'Question Number',
        //             isRequired: true,
        //             hintText: 'Select One',
        //             list: _number,
        //             onChange: (val) {
        //               _selectedNum = val;
        //               setState(() {});
        //             },
        //             height: 50,
        //             selectedOption: _selectedNum,
        //             elevation: 0,
        //             shadowColor: Colors.transparent,
        //             borderRadius: BorderRadius.circular(0),
        //             fontSize: 16,
        //             fontWeight: FontWeight.w600,
        //             textColor: const Color(0xff3c3c3c),
        //             icon: Container(
        //               // decoration: BoxDecoration(
        //               //     borderRadius: BorderRadius.circular(50),
        //               //     color: const Color(0xffD9D9D9),
        //               // ),
        //               child: Icon(
        //                   Icons.keyboard_arrow_down_rounded,
        //                   size: 16,
        //                   color: Color(0xFF3A4346),
        //               ),
        //             ),
        //                           ),
                  
        //             CustomTextField(
        //             controller: _qsnscoreController,
        //             labelText: 'Per Question Score*',
        //             hintText: '10 pt',
        //              suffixIcon: const Align(
        //                         widthFactor:1,
        //                         heightFactor:1,
        //                       ),
        //                           ),
        //             CustomTextField(
        //             controller: _qsndurationController,
        //             labelText: 'Per Question Duration',
        //             hintText: '10 sec',
        //              suffixIcon: const Align(
        //                         widthFactor:1,
        //                         heightFactor:1,
        //                         child:     
        //                          ImageIcon(
        //             AssetImage("assets/icons/clock.png"),
        //             color: Color(0xFFFF7B54),
        //             size: 15,
        //                        ),
        //                       ),
        //                           ),
                  
        //                           SizedBox(
        //             width: Get.width,
        //                         height: 48,
        //             child: ElevatedButton(onPressed: (){
        //                   Navigator.push(context, MaterialPageRoute(builder: (context)=>
        //               CreateQuestion1()
        //               // ForgetScreen()
        //                ));
        //             },
        //              style: ElevatedButton.styleFrom(
        //               padding: EdgeInsets.zero,
        //             ),
        //              child: Text('Continue')
        //              ),
        //                           )
        //                     ],
        //                   ),
                      
        //                 ),
        //               ),
        //             ),
        //           );

        //     },
        //   );
    
      
        },
      ),
               ),
               
             ),
             
               SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}