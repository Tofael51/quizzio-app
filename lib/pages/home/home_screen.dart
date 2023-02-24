import 'dart:io';
import 'package:flutter/material.dart';
import 'package:quizzio/pages/home/home_page.dart';
import 'package:quizzio/pages/login/login_screen.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/home';
  Future<bool> checkConnection() async {
    bool connected = false;
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        connected = true;
      }
    } on SocketException catch (_) {
      connected = false;
    }
    return connected;
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return FutureBuilder(
          future: checkConnection(),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data!) {
                return
                //  Obx(
                //   () {
                //     AuthController authController = AuthController.to;
                //     return 
                    // authController.getUserId.isEmpty
                    //     ? const LoginScreen()
                    //     : authController.getIsVerified == false
                    //         ? const VerifyScreen()
                    //         : 
                    
                            // const MainHomePage();
                            const LoginScreen();

                //   },
                // );
              } else {
                return const Scaffold(
                  body: Center(
                    child: Text(
                      'No Internet Connection',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.red,
                      ),
                    ),
                  ),
                );
              }
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        );
      },
    );
    // return HomeWidget();
  }
}
