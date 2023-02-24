import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/constants.dart';
import '../utils/widgets/common_widget.dart';
import 'home/home_screen.dart';

class AppIntroScreen extends StatefulWidget {
  const AppIntroScreen({Key? key}) : super(key: key);
  static const String routeName = '/app-intro';
  @override
  State<AppIntroScreen> createState() => _AppIntroScreenState();
}

class _AppIntroScreenState extends State<AppIntroScreen> {
  List<Map<String, String>> slides = [
    {
      "title": "Create gamified quizzes becomes simple",
      "subTitle":
          "It is a long established fact that a reader will be distracted by the readable content of a page",
      "image": "assets/images/onboard1.png",
    },
    {
      "title": "Find Queizes to test out your knowledge",
      "subTitle":
          "It is a long established fact that a reader will be distracted by the readable content of a page",
      "image": "assets/images/onboard2.png",
    },
  ];
  int currentIndex = 0;
  PageController? _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
    slides = slides;
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: _controller!,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemCount: slides.length,
                itemBuilder: (context, index) {
                  // contents of slider
                  return Slider(
                    image: slides[index]['image']!,
                    title: slides[index]['title']!,
                    subTitle: slides[index]['subTitle']!,
                  );
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              slides.length,
              (index) => buildDot(index, context),
            ),
          ),

          Container(
            height: 48,
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
            width: Get.width * 1.5,
            child: ElevatedButton(
              onPressed: () {
                if (currentIndex == slides.length - 1) {
                  Get.offAllNamed(HomeScreen.routeName);
                                 
                } else {
                  currentIndex++;
                  _controller!.nextPage(
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.bounceIn);
                  setState(() {});
                }
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(48),
                ),
              ),
              // textColor: Colors.white,
              child: Text(currentIndex == slides.length - 1
                  ? "Get Started"
                  : "Continue"),
            ),
          ),
          Container(
            height: 48,
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            width: Get.width * 1.5,
            child: ElevatedButton(
              onPressed: () {
                // if (currentIndex == slides.length - 1) {
                //   Get.offAllNamed(HomeScreen.routeName);
                                 
                // } else {
                //   currentIndex++;
                //   _controller!.nextPage(
                //       duration: const Duration(milliseconds: 100),
                //       curve: Curves.bounceIn);
                //   setState(() {});
                // }
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(58),
                ),
                primary: Colors.white
              ),

              child: TitleText(
            title: 'I have already account',
            color: kPrimaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
            ),
          ),

          space5C
      
        ],
      ),
      // backgroundColor: Colors.white,
    );
  }

  // container created for dots
  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 6,
      width: 28,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? kPrimaryColor : const Color(0xfFFFFFF),
      ),
    );
  }
}

class Slider extends StatelessWidget {
  final String image;
  final String? title;
  final String? subTitle;

  const Slider({required this.image, this.title, this.subTitle, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // image given in slider
          Image(image: AssetImage(image)),
          // space5C,
          SizedBox(height: 75,),
          TitleText(
            title: title!,
            fontSize: 28,
            color: kmaindarkColor,
            fontWeight: FontWeight.w600,
            textAlign: TextAlign.center,
          ),
          space3C,
          TitleText(
            title: subTitle!,
            fontSize: 14,
            color: kparagraphColor,
            fontWeight: FontWeight.w400,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
