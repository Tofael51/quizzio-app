import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quizzio/utils/widgets/appbar.dart';

class FAQabout extends StatelessWidget {
  const FAQabout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:  Color(0xFFFFF2EE),
       body: Column(
        children: [
            AppBarWithSearch(
                title: 'FAQ',
              ),
              
        Column(
          children: [

          ],
        )
        ],
       ),
    );
  }
}