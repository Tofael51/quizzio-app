import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quizzio/utils/constants.dart';
import 'package:quizzio/utils/widgets/appbar.dart';
import 'package:quizzio/utils/widgets/common_widget.dart';

class Notify extends StatefulWidget {
  const Notify({super.key});

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  bool isSwitched1 = true;
  bool isSwitched2 = true;
  bool isSwitched3 = true;
  bool isSwitched4 = true;
  bool isSwitched5 = true;
  bool isSwitched6 = false;
  bool isSwitched7 = true;
  bool isSwitched8 = false;
  bool isSwitched9 = false;
  bool isSwitched10 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFFFF2EE),
      body: Column(
        children: [
           AppBarWithSearch(
              title: "Notification",
             hasBackArrow: true,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [

                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleText(
                    title: 'Enable Push Notification',
                    color: Color(0xFF212121),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  Switch(
                  activeColor: Colors.white,
                  activeTrackColor: kPrimaryColor,
                  value: isSwitched1,
                  onChanged: (value) {
                  setState(() {
                  isSwitched1 = value;
                  });
                  },
          ),
                  ],
                  ),
               SizedBox(height: 16,),

                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleText(
                    title: 'New Followers',
                    color: Color(0xFF212121),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  Switch(
                  activeColor: Colors.white,
                  activeTrackColor: kPrimaryColor,
                  value: isSwitched2,
                  onChanged: (value) {
                  setState(() {
                  isSwitched2 = value;
                  });
                  },
          ),
                  ],
                  ),
               
               SizedBox(height: 16,),

                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleText(
                    title: 'New Likes',
                    color: Color(0xFF212121),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  Switch(
                  activeColor: Colors.white,
                  activeTrackColor: kPrimaryColor,
                  value: isSwitched3,
                  onChanged: (value) {
                  setState(() {
                  isSwitched3 = value;
                  });
                  },
          ),
                  ],
                  ),
               
               SizedBox(height: 16,),

                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleText(
                    title: 'Payment & Subscriptions',
                    color: Color(0xFF212121),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  Switch(
                  activeColor: Colors.white,
                  activeTrackColor: kPrimaryColor,
                  value: isSwitched4,
                  onChanged: (value) {
                  setState(() {
                  isSwitched4 = value;
                  });
                  },
          ),
                  ],
                  ),
               
               SizedBox(height: 16,),

                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleText(
                    title: 'Friend Activity',
                    color: Color(0xFF212121),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  Switch(
                  activeColor: Colors.white,
                  activeTrackColor: kPrimaryColor,
                  value: isSwitched5,
                  onChanged: (value) {
                  setState(() {
                  isSwitched5 = value;
                  });
                  },
          ),
                  ],
                  ),
               
               SizedBox(height: 16,),

                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleText(
                    title: 'Leaderboard',
                    color: Color(0xFF212121),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  Switch(
                  activeColor: Colors.white,
                  activeTrackColor: kPrimaryColor,
                  value: isSwitched6,
                  onChanged: (value) {
                  setState(() {
                  isSwitched6 = value;
                  });
                  },
          ),
                  ],
                  ),
               
               SizedBox(height: 16,),

                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleText(
                    title: 'App Updates',
                    color: Color(0xFF212121),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  Switch(
                  activeColor: Colors.white,
                  activeTrackColor: kPrimaryColor,
                  value: isSwitched7,
                  onChanged: (value) {
                  setState(() {
                  isSwitched7 = value;
                  });
                  },
          ),
                  ],
                  ),
               
               SizedBox(height: 16,),

                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleText(
                    title: 'News & Promotion',
                    color: Color(0xFF212121),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  Switch(
                  activeColor: Colors.white,
                  activeTrackColor: kPrimaryColor,
                  value: isSwitched8,
                  onChanged: (value) {
                  setState(() {
                  isSwitched8 = value;
                  });
                  },
          ),
                  ],
                  ),
               
               SizedBox(height: 16,),

                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleText(
                    title: 'New Tips Available',
                    color: Color(0xFF212121),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  Switch(
                  activeColor: Colors.white,
                  activeTrackColor: kPrimaryColor,
                  value: isSwitched9,
                  onChanged: (value) {
                  setState(() {
                  isSwitched9 = value;
                  });
                  },
          ),
                  ],
                  ),
               SizedBox(height: 16,),

                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleText(
                    title: 'Survey Invitation',
                    color: Color(0xFF212121),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  Switch(
                  activeColor: Colors.white,
                  activeTrackColor: kPrimaryColor,
                  value: isSwitched10,
                  onChanged: (value) {
                  setState(() {
                  isSwitched10 = value;
                  });
                  },
          ),
                  ],
                  ),
               

                ],
              ),
            )
        ],
      ),
    );
  }
}