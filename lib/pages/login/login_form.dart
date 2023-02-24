import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quizzio/pages/home/home_page.dart';
import 'package:quizzio/pages/login/forget_pass.dart';
import 'package:quizzio/pages/login/login_intro.dart';
import 'package:quizzio/utils/constants.dart';
import 'package:quizzio/utils/widgets/common_widget.dart';
// import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _phonelogincontroller = TextEditingController();
  TextEditingController _passlogincontroller = TextEditingController();
  // WebViewPlusController? _wbController;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const LoginIntro(),
              const SizedBox(height: 24),
              CustomTextField(
                controller: _phonelogincontroller,
                labelText: 'Phone Number',
                hintText: 'hello@sample.com',
                isRequired: true,
                 prefixIcon: Align(
            widthFactor:1,
            heightFactor:1,
           child: GestureDetector(
            onTap: (){
            },
             child: Icon(Icons.email)
           ),
          ),
              ),
              CustomTextField(
                controller: _passlogincontroller,
                labelText: 'Password',
                isRequired: true,
                 prefixIcon: Align(
            widthFactor:1,
            heightFactor:1,
          ),
              ),
    
              const SizedBox(height: 8),
              // SizedBox(
              //   width: 100,
              //   height: 100,
              //   child: WebViewPlus(
              //     zoomEnabled: false,
              //     javascriptMode: JavascriptMode.unrestricted,
              //     onWebViewCreated: (controller) {
              //       _wbController = controller;
              //       controller.loadUrl("assets/webpages/index.html");
              //     },
              //     // javascriptChannels: {
              //     //   JavascriptChannel(
              //     //       name: 'Captcha',
              //     //       onMessageReceived: (JavascriptMessage message) {
              //     //         // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomePage()));
              //     //         if (kDebugMode) {
              //     //           print('=============================');
              //     //         }
              //     //       })
              //     // },
              //   ),
              // ),
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
                      //  VerifyScreen()
                      ForgetScreen()
                       ));
                    },
                    child:  TitleText(
                title: "Login",
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              ),
                    
                    ),
                ),
              ),
              const SizedBox(height: 16),
              TitleText(
                title: "or continue with",
              color: Color(0xFF757575),
              fontSize: 16,
              fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MainContainer(
                    height: 60,
                    width: 88,
                    color: Colors.white,
                    child: IconButton(
          icon: Image.asset('assets/icons/facebook.png',
          color: Colors.blue,
          ),
          onPressed: (){},
        ),
                  ),
                  MainContainer(
                    height: 60,
                    width: 88,
                   color: Colors.white,
                      child: IconButton(
          icon: Image.asset('assets/icons/google.png'),
          onPressed: (){},
        ),
                  ),
                  MainContainer(
                    height: 60,
                    width: 88,
                    color: Colors.white,
                    child: IconButton(
          icon: Image.asset('assets/icons/apple.png'),
          onPressed: (){},
        ),
                  ),
                ],
              ),
    
              SizedBox(height: 32),
    
               RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Don't have an account?",
                  style:  GoogleFonts.outfit(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF9E9E9E)
                      ),
                  children: [
                    TextSpan(
                      text: ' Sign up',
                      style: GoogleFonts.outfit(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
