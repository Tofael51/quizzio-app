import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quizzio/pages/profile/profile_screen.dart';
import 'package:quizzio/utils/constants.dart';
import 'package:quizzio/utils/widgets/appbar.dart';
import 'package:quizzio/utils/widgets/common_widget.dart';


class WithDrawWallet extends StatefulWidget {
  const WithDrawWallet({super.key});

  @override
  State<WithDrawWallet> createState() => _WithDrawWalletState();
}

class _WithDrawWalletState extends State<WithDrawWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          // AppBarWithSearch(
          // hasBackArrow: true,
          // ),
        ],
      ),
    );
  }
}