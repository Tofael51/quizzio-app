import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzio/pages/dashboard/ui/dashboard.dart';
import 'package:quizzio/pages/home/home_page.dart';
import 'package:quizzio/pages/home/home_screen.dart';
import 'package:quizzio/utils/constants.dart';
import 'package:quizzio/utils/widgets/common_widget.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class QuizComplete extends StatefulWidget {
  
  const QuizComplete({super.key});

  @override
  State<QuizComplete> createState() => _QuizCompleteState();
}

class _QuizCompleteState extends State<QuizComplete> {
  
  @override
  Widget build(BuildContext context) {
   
         return  Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          children: [
               Container(
          //  decoration: new BoxDecoration(
          //             gradient: new LinearGradient(
          //               begin: Alignment.topCenter,
          //               end: Alignment.bottomCenter,
          //               colors: [
          //                 Color(0xFFFDD943),
          //                 Color(0xFFFA7B1A),
          //               ],     )
          //               ),
            decoration: new BoxDecoration(
                      color: kPrimaryColor
                        ),
                      child: Column(
                        children: [
                          SizedBox(height: 32,),
                          SizedBox(height: 44,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 22,),
                     GestureDetector(
                       child: CircleAvatar(
                                    radius: 22,
                                    backgroundColor: Colors.white,
                                    child:  Center(
                                 child: ImageIcon(
                AssetImage("assets/icons/cancelicon.png"),
                color: Color(0xFF011821),
                size: 15,
             ),
                                   ),
                                  ),
                      onTap: (){
                        Get.back();
                      },
                     ),
                  ],
                )
              ),
        SizedBox(height: 32,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child:   Column(
         crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Image.asset("assets/images/prize.png",
         height: 190,
         width: 322,
          fit: BoxFit.cover,
          ),
            SizedBox(height: 16,),
           TitleText(
                       title: 'You get +80 Quiz Points',
                       color: Colors.white,  
                      fontSize: 24, 
                      fontWeight: FontWeight.w600 
                    ),
               SizedBox(height: 16,),
        Container(  
          height: 46,  
          width: 202,  
            decoration: BoxDecoration(  
              borderRadius: BorderRadius.circular(12),  
              color: Color.fromRGBO(255, 255, 255, 0.3),  
            ),
        
            child:   Center(
              child: TitleText(
                         title: 'Check Correct Answer',
                         color: Colors.white,  
                        fontSize: 16, 
                        fontWeight: FontWeight.w600 
                      ),
            ),
               ),  
                      SizedBox(height: 22,),
          ], 
        ),
      ),
  
      Container( 
      height: 345,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(40.0),
            topLeft: Radius.circular(40.0),
            ),
            color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(height: 15,),
Padding(
   padding: const EdgeInsets.symmetric(horizontal: 20),
   child: Column(
   crossAxisAlignment: CrossAxisAlignment.start,
     children: [
      SizedBox(height: 16),
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
              
       Container(
                        height: 82,
                        width: 106,
                          decoration: BoxDecoration(
       gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFFFDD943),
             Color(0xFFFA7B1A),
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: 

                           Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TitleText(
            title: '15',
            color: Colors.white,
            fontSize: 36,
            fontWeight: FontWeight.w700,
          ),
          TitleText(
            title: 'Questions',
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
                            ],
                          ),
                   
                      ),
                            
       Container(
                        height: 82,
                        width: 106,
                          decoration: BoxDecoration(
       gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF13B77B),
             Color(0xFF5FA415),
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child:     
                           Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TitleText(
            title: '12',
            color: Colors.white,
            fontSize: 36,
            fontWeight: FontWeight.w700,
          ),
          TitleText(
            title: 'Correct',
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
                            ],
                          ),
                   
                      ),
                            
       Container(
                        height: 82,
                        width: 106,
                          decoration: BoxDecoration(
       gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFFE84141),
             Color(0xFF9C1D1B),
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child:    
                           Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TitleText(
            title: '03',
            color: Colors.white,
            fontSize: 36,
            fontWeight: FontWeight.w700,
          ),
          TitleText(
            title: 'Incorrect',
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
                            ],
                          ),
                   
                      ),


      ],
      ),

      SizedBox(height: 24),

      Text('Accuration Answer',
      style: GoogleFonts.rubik(
      fontSize: 14,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      color: Color(0xFF333F54),
      ),
      ),      
  //  SizedBox(height: 22),
 LineCharts(),  
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
            //  DashboardScreen()
             const MainHomePage()
                ));
             },
             child: const Text('Done')
             ),
            ),
          ),
     ],
   ),
 )
        ],
      ),
      ),
                        ],
                      ),
        ),
          ],
        ),
      ),
    );
 
  }
}
// class LineChartWidget extends StatelessWidget {
//   final List<PricePoint>points;

//   const LineChartWidget(this.points, {Key? key})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: 2,
//       child: LineChart(
//         LineChartData(
//             lineBarsData: [
//               LineChartBarData(
//                 spots: points.map((point) => FlSpot(point.x, point.y)).toList(),
//                 isCurved: false,
//                 dotData: FlDotData(
//                   show: false,
//                 ),
//                 color: Colors.red
//               ),
//             ],
//             borderData: FlBorderData(
//                 border: const Border(bottom: BorderSide(), left: BorderSide())),
//             gridData: FlGridData(show: false),
//             titlesData: FlTitlesData(
//               bottomTitles: AxisTitles(sideTitles: _bottomTitles),
//               leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
//               topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
//               rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
//             ),
//           ),
//       ),
//     );
//   }

//   SideTitles get _bottomTitles => SideTitles(
//     showTitles: true,
//     getTitlesWidget: (value, meta) {
//       String text = '';
//       switch (value.toInt()) {
//         case 1:
//           text = 'Jan';
//           break;
//         case 3:
//           text = 'Mar';
//           break;
//         case 5:
//           text = 'May';
//           break;
//         case 7:
//           text = 'Jul';
//           break;
//         case 9:
//           text = 'Sep';
//           break;
//         case 11:
//           text = 'Nov';
//           break;
//       }

//       return Text(text);
//     },
//   );
// }

// class PricePoint {
//   final double x;
//   final double y;

//   PricePoint(this.x, this.y);
  
// }

class LineCharts extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    const cutOffYValue = 0.0;  
    const yearTextStyle =  
    TextStyle(fontSize: 12, color: Colors.black);  
  
    return SizedBox(  
      width: 360,  
      height: 100,  
      child: LineChart(  
        LineChartData(  
          lineTouchData: LineTouchData(enabled: false),  
          lineBarsData: [  
            LineChartBarData(  
              spots: [  
                FlSpot(0, 1),  
                FlSpot(1, 1),  
                FlSpot(2, 3),  
                FlSpot(3, 4),  
                FlSpot(3, 5),  
                FlSpot(4, 4)  
              ],  
              isCurved: true,  
              barWidth: 3,  
              color: kPrimaryColor,
              // colors: [  
              //   Colors.black,  
              // ],  
              belowBarData: BarAreaData(  
                show: true,  
                color: Colors.lightBlue.withOpacity(0.5),
                cutOffY: cutOffYValue,  
                applyCutOffY: true,  
              ),  
              aboveBarData: BarAreaData(  
                show: true,  
                 color: Colors.lightBlue.withOpacity(0.5),  
                cutOffY: cutOffYValue,  
                applyCutOffY: true,  
              ),  
              dotData: FlDotData(  
                show: false,  
              ),  
            ),  
          ],  
          minY: 0,  
          titlesData: FlTitlesData(  
          //   bottomTitles: SideTitles(  
          //       showTitles: true,  
          //       reservedSize: 5,  
          //       textStyle: yearTextStyle,  
          //       getTitles: (value) {  
          //         switch (value.toInt()) {  
          //           case 0:  
          //             return '2016';  
          //           case 1:  
          //             return '2017';  
          //           case 2:  
          //             return '2018';  
          //           case 3:  
          //             return '2019';  
          //           case 4:  
          //             return '2020';  
          //           default:  
          //             return '';  
          //         }  
          //       }),  
          //   leftTitles: SideTitles(  
          //     showTitles: true,  
          //     getTitles: (value) {  
          //       return '\$ ${value + 100}';  
          //     },  
          //   ),  
          // ),  
          // axisTitleData: FlAxisTitleData(  
          //     leftTitle: AxisTitle(showTitle: true, titleText: 'Value', margin: 10),  
          //     bottomTitle: AxisTitle(  
          //         showTitle: true,  
          //         margin: 10,  
          //         titleText: 'Year',  
          //         textStyle: yearTextStyle,  
          //         textAlign: TextAlign.right)),  
          // gridData: FlGridData(  
          //   show: true,  
          //   checkToShowHorizontalLine: (double value) {  
          //     return value == 1 || value == 2 || value == 3 || value == 4;  
          //   },  
          // ),  

        ),  
      ),  
    ),
    );
    
  }  
}  