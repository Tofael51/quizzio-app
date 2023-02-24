import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizzio/pages/create_quiz/create_quiz_screen.dart';
import 'package:quizzio/utils/constants.dart';
import 'package:quizzio/utils/widgets/appbar.dart';
import 'package:quizzio/utils/widgets/common_widget.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFFFF2EE),
   body: 
      SingleChildScrollView(
        child: Column(
          children: [
               AppBarWithSearch(
              hasBackArrow: true,
            ),
             
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Create An Account',
      
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
                children: const [
                  TextSpan(
                    text: '\nLorem ipsum dolor sit amet consectetur adipisicing elit Dolore harum.',
                    style: TextStyle(
                      height: 1.5,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
          ),
          SizedBox(height: 32),
             CustomTextField(
                controller: _nameController,
                labelText: 'Full Name',
                isRequired: true,
              ),
             CustomTextField(
                controller: _phoneController,
                labelText: 'Phone',
                isRequired: true,
              ),
             CustomTextField(
                controller: _emailController,
                labelText: 'Email',
                isRequired: true,
              ),
             CustomTextField(
                controller: _passController,
                labelText: 'Password',
                isRequired: true,
                 suffixIcon: Align(
            widthFactor:1,
            heightFactor:1,
           child: GestureDetector(
            onTap: (){
            },
             child: ImageIcon(
                AssetImage("assets/icons/password.png"),
           ),
           ),
      
          ),
              ),
      
               SizedBox(height: 32),
      
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
                    CreateQuizScreen()
                     ));
                    },
                    child: const Text('Get Started')),
                ),
              ),
      
                 SizedBox(height: 32),
      
               RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Do you have already account?",
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black),
                  children: [
                    TextSpan(
                      text: ' SignIn',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    )
                  ],
                ),
              ),
           
        ],
          ),
            ),

               space3C,
               space3C
          
          ],
        ),
      ),
   
    );
  }
}