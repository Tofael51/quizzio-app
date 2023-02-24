import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quizzio/utils/constants.dart';
import 'package:quizzio/utils/widgets/appbar.dart';
import 'package:quizzio/utils/widgets/common_widget.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {

  TextEditingController _nameprofileController = TextEditingController();
  TextEditingController _phoneprofileController = TextEditingController();
  TextEditingController _emailprofileController = TextEditingController();
  TextEditingController _dobprofileController = TextEditingController();
  TextEditingController _countryprofileController = TextEditingController();
  TextEditingController _ageprofileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFFFF2EE),
      body: SingleChildScrollView(
        child: Column(
          children: [
             AppBarWithSearch(
                  title: 'Personal Info',
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                     CircleAvatar(
                                        radius: 33,
                                          backgroundColor: Color(0xFFC4D0FB),
              backgroundImage: AssetImage("assets/images/profileimg.png"),
                                      ),
                      Positioned(
                        right: 0,
                        bottom: -5,
                        child:  ImageIcon(
                    AssetImage("assets/icons/duration.png"),
                    color: kPrimaryColor,
                    size: 20,
               ),
               ),
                  ],
                ),
                SizedBox(height: 22,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                    CustomTextField(
                    controller: _nameprofileController,
                    labelText: 'Full Name',
                    isRequired: true,
                  ),
                 CustomTextField(
                    controller: _phoneprofileController,
                    labelText: 'Phone',
                  ),
                 CustomTextField(
                    controller: _emailprofileController,
                    labelText: 'Email',
                  ),
                 CustomTextField(
                    controller: _dobprofileController,
                    labelText: 'Date of Birth',
                     suffixIcon: Align(
              widthFactor:1,
              heightFactor:1,
             child: GestureDetector(
              onTap: (){
              },
               child: ImageIcon(
                  AssetImage("assets/icons/dobicon.png"),
                  color: kPrimaryColor,
             ),
             ),   
            ),
                  ),
                 CustomTextField(
                    controller: _countryprofileController,
                    labelText: 'Country',
                     suffixIcon: Align(
              widthFactor:1,
              heightFactor:1,
             child: GestureDetector(
              onTap: (){
              },
               child: ImageIcon(
                  AssetImage("assets/icons/down_arrow1.png"),
                  color: kPrimaryColor,
             ),
             ),   
            ),
                  ),
                 CustomTextField(
                    controller: _dobprofileController,
                    labelText: 'Age',
                     suffixIcon: Align(
              widthFactor:1,
              heightFactor:1,
             child: GestureDetector(
              onTap: (){
              },
               child: ImageIcon(
                  AssetImage("assets/icons/down_arrow1.png"),
                  color: kPrimaryColor,
             ),
             ),   
            ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: SizedBox(
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
                      //  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                      // VerifyPassword()
                      // // ForgetScreen()
                      //  ));
                    },
                    child: const Text('Save & Updated')),
                ),
            ),
             ),

               SizedBox(height: 32,),
          ],
        ),
      ),
    );
  }
}