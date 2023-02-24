import 'package:flutter/material.dart';
import 'package:quizzio/pages/login/login_form.dart';
import 'package:quizzio/utils/widgets/appbar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFFFF2EE),
      body: Column(
        children: [
          AppBarWithSearch(
            hasBackArrow: true,
          ),
             
          const Expanded(
            child: LoginForm(),
          ),
        ],
      ),
    );
  }
}
