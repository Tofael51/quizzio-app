import 'package:flutter/material.dart';
import 'package:quizzio/pages/dashboard/widgets/common_widget.dart';
import 'package:quizzio/utils/constants.dart';
import 'package:quizzio/utils/widgets/common_widget.dart';

class HealthCareSection extends StatelessWidget {
  const  HealthCareSection({
    this.label,
    this.buttonLabel,
    this.itemCount,
    this.horizontalHeadingPadding,
    this.horizontalGridPadding,
    this.verticalGridPadding,
    this.isIconButton = false,
    this.buttonColor,
    this.iconPath,
    this.topMargin,
    this.elevation,
    this.labelFontSize,
    this.onFilterPressed,
    Key? key,
  }) : super(key: key);
  final String? label;
  final String? buttonLabel;
  final String? iconPath;
  final int? itemCount;
  final double? horizontalHeadingPadding;
  final double? horizontalGridPadding;
  final double? verticalGridPadding;
  final double? topMargin;
  final double? elevation;
  final double? labelFontSize;
  final Color? buttonColor;
  final bool isIconButton;
  final Function()? onFilterPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionWithViewAll(
          label: label ?? 'Recent Quiz',
          buttonLabel: buttonLabel,
          topMargin: topMargin,
          elevation: elevation,
          buttonColor: buttonColor,
          isIconButton: isIconButton,
          labelFontSize: labelFontSize,
          iconPath: iconPath,
          horizontalPadding: horizontalHeadingPadding,
          onTap: onFilterPressed ??
              () {
                // Get.toNamed(CategoryDetailsScreen.routeName);
              },
        ),
        GridView.builder(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalGridPadding ?? 20.0,
              vertical: verticalGridPadding ?? 16),
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              mainAxisExtent: 245,
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: itemCount ?? 6,
          itemBuilder: (BuildContext ctx, index) {
            return HealthCareItem(
              onTap: () {
                // Get.toNamed(HealthcareProductDetailsScreen.routeName);
              },
            );
          },
        ),
      ],
    );
  }
}

class HealthCareItem extends StatelessWidget {
  const HealthCareItem({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: kPrimaryColor,
            width: .3,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
      
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    height: 162,
                    width: 139,
                    child: Image.asset(
                      'assets/images/quiz1.png',
                      fit: BoxFit.cover,
                      height: 98,
                      width: 139,
                    ),
                  ),
                   Positioned(
                    bottom: -13,
                    left: 8,
                    child:  Align
                    (
                      child: Container(  
                              height: 25,  
                              width: 65,  
                                  decoration: BoxDecoration(  
                                    borderRadius: BorderRadius.circular(20),  
                                    color: Color(0xFFFDF0ED),  
                                  ),
                            
                                  child:   Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                      radius: 8,
                                      backgroundColor: Color(0xFFFF8FA2),
                                      child:  Center(
                                child:    ImageIcon(
                      AssetImage("assets/icons/qsn.png"),
                      color: Colors.white,
                      size: 8,
                 ),
                  ),
                                    ),
                                     space1R,
                                      TitleText(
                         title: '15 Qs',
                         color: Colors.black,  
                        fontSize: 10, 
                        fontWeight: FontWeight.w500 
                      ),
                                    ],
                                  ),
                                     ),
                    ),  
                  ),
                ],
              ),
              space5C,
               TitleText(
                         title: 'Science Smarts: A Brain-Busting ..',
                         color: Colors.black,  
                        fontSize: 14, 
                        fontWeight: FontWeight.w500 
                      ),
            ],
          ),
        ),
      ),
    );
  }
}

// class LessBox extends StatelessWidget {
//   const LessBox({
//     required this.less,
//     Key? key,
//   }) : super(key: key);
//   final String less;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(left: 5),
//       height: 20,
//       width: 60,
//       decoration: const BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage('assets/images/discount-bg.png'),
//         ),
//       ),
//       child: Align(
//         alignment: Alignment.centerLeft,
//         child: TitleText(
//           title: '$less% Off',
//           fontSize: 10,
//           fontWeight: FontWeight.normal,
//           color: Colors.white,
//           textAlign: TextAlign.center,
//         ),
//       ),
//     );
//   }
// }
