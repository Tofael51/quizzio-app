import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzio/pages/profile/profile_screen.dart';
import 'package:quizzio/pages/wallet/withdraw_wallet.dart';
import 'package:quizzio/utils/constants.dart';
import 'package:quizzio/utils/widgets/appbar.dart';
import 'package:quizzio/utils/widgets/common_widget.dart';


class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  static const String routeName = '/wallet';

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
      children: [
        AppBarWithSearch(
        ),

        Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
//                   BgContainer(
//       horizontalPadding: 22,
//       child: Container(
//         height: 200,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(15),
//           border: Border.all(
//             color: Color(0xff5FC502),
//             width: 1,
//           ),
//           boxShadow: const [
//             BoxShadow(
//               color: Colors.black12,
//               blurRadius: 8,
//             ),
//           ],
//         ),
//         child: Column(
//           children: [
//             space3C,
//             TitleText(title: 'Today',
//                 fontSize: 16,
//                 fontWeight: FontWeight.w600,
//                 color: kTextColor
//                 ),
//                 space2C,
//             TitleText(title: '\$ 500.00',
//                 fontSize: 22,
//                 fontWeight: FontWeight.w700,
//                 color: kTextColor
//                 ),
// space4C,

//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 12),
//                       child: Row(
//                         children: [Image.asset('assets/images/repeat.png'),
//                         space2R,
//                       TitleText(title: '14 Rides',
//                 fontSize: 14,
//                 fontWeight: FontWeight.w500,
//                 color: kTextColor
//                 ),],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 12),
//                       child: Row(
//                         children: [Image.asset('assets/images/clock.png'),
//                         space2R,
//                       TitleText(title: '23H',
//                 fontSize: 14,
//                 fontWeight: FontWeight.w500,
//                 color: kTextColor
//                 ),
//                 ],
//                       ),
//                     ),
//                   ],
//                 ),

//                 space1C,

//                 HorizontalDivider(),
//                 space1C,

//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 24),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         children: [
//                            TitleText(title: 'Wallet Balance',
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                   color: kTextColor
//                   ),
//                   space1C,
//                    TitleText(title:'\$ 4500.00',
//                   fontSize: 22,
//                   fontWeight: FontWeight.w700,
//                   color: kPrimaryColor
//                   ),
//                         ],
//                       ),

//    PrimaryButton(
//                       label: 'Withdrawal',
//                       width: Get.width*.27,
//                       height: 37,
//                       borderRadiusAll: 12,
//                       marginHorizontal: 2,
//                        primary: kbuttonbg,
//                         labelColor: kPrimaryColor,
//                       marginVertical: 8,
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500,
//                       onPressed: () {
//                       Get.to(WithDrawWallet());
//                       },
//                   ),
//                     ],
//                   ),
//                 )
                 
//           ],
//         ),

//       ),

//     ),

   space2C,

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Container(
                      height: 330,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                          boxShadow: [
      BoxShadow(
        color: kborderbg,
        blurRadius: 20.0,
      )
    ],
                      ),
                      child: Column(
                        children: [
                          space3C,
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                Container(
                                  height: 64,
                                  width: 205,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Color(0xFF0D6526).withOpacity(.21)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 7),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        space2C,
                                          TitleText(title:'Payment to quizzio',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor
                  ),
                  space2C,
                                          TitleText(title:'Please cashin in your personal Bkash Number to\n pay quizzio from your E-Wallet',
                  fontSize: 8,
                  fontWeight: FontWeight.w400,
                  color: kPrimaryColor
                  ),
                                      ],
                                    ),
                                  ),
                                ),

   PrimaryButton(
                                    label: 'View All',
                                    width: Get.width*.23,
                                    height: 33,
                                    borderRadiusAll: 12,
                                    marginHorizontal: 2,
                                     primary: kbuttonbg,
                                      labelColor: kPrimaryColor,
                                    marginVertical: 8,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    onPressed: () {
                                    },
                                ),
                                  ],
                                ),
                              ),

                              space1C,

                              HorizontalDivider(thickness: 1),
                              space2C,

                              Column(
                                children: [
                                  
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  height: 16,
                                                  width: 15,
                                                    decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(4),
                                                  color: Color(0xFF0D6526),
                                                ),
                                                ),
                                                space2R,
                                                TitleText(title:'14/06/2021, 14:24 AM',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: kwallettime
                  ),
                  ],
                  ),

               TitleText(title:'\$ 100',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: kwallettime
                  ),
                                          ],
                                        ),
                                        space2C,
                                        HorizontalDivider(
                                    thickness: 1,
                                  )
                                      ],
                                    ),
                                  ),
                               

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  height: 16,
                                                  width: 15,
                                                    decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(4),
                                                  color: Color(0xFF0D6526),
                                                ),
                                                ),
                                                space2R,
                                                TitleText(title:'14/06/2021, 14:24 AM',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: kwallettime
                  ),
                  ],
                  ),

               TitleText(title:'\$ 100',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: kwallettime
                  ),
                                          ],
                                        ),
                                        space2C,
                                        HorizontalDivider(
                                    thickness: 1,
                                  )
                                      ],
                                    ),
                                  ),
                               

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  height: 16,
                                                  width: 15,
                                                    decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(4),
                                                  color: Color(0xFF0D6526),
                                                ),
                                                ),
                                                space2R,
                                                TitleText(title:'14/06/2021, 14:24 AM',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: kwallettime
                  ),
                  ],
                  ),

               TitleText(title:'\$ 100',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: kwallettime
                  ),
                                          ],
                                        ),
                                        space2C,
                                        HorizontalDivider(
                                    thickness: 1,
                                  )
                                      ],
                                    ),
                                  ),
                               

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  height: 16,
                                                  width: 15,
                                                    decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(4),
                                                  color: Color(0xFF0D6526),
                                                ),
                                                ),
                                                space2R,
                                                TitleText(title:'14/06/2021, 14:24 AM',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: kwallettime
                  ),
                  ],
                  ),

               TitleText(title:'\$ 100',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: kwallettime
                  ),
                                          ],
                                        ),
                                        space2C,
                                        HorizontalDivider(
                                    thickness: 1,
                                  )
                                      ],
                                    ),
                                  ),
                               

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  height: 16,
                                                  width: 15,
                                                    decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(4),
                                                  color: Color(0xFF0D6526),
                                                ),
                                                ),
                                                space2R,
                                                TitleText(title:'14/06/2021, 14:24 AM',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: kwallettime
                  ),
                  ],
                  ),

               TitleText(title:'\$ 100',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: kwallettime
                  ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                               
                                ],
                              ),  
                        ],
                      ),

                    ),
                  ),
   
   space2C,
   space2C,

                  Padding( 
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Container(
                      height: 340,
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                        BoxShadow(
                          color: kborderbg,
                          blurRadius: 20.0,
                        )
                      ],
                        ),
                      child: Container(
                        height: 330,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                        BoxShadow(
                          color: kborderbg,
                          blurRadius: 20.0,
                        )
                      ],
                        ),
                        child: Column(
                          children: [
                            space3C,
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                  Container(
                                    height: 72,
                                    width: 205,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Color(0xFF0D6526).withOpacity(.21)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 7),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          space2C,
                                            TitleText(title:'Withdrawal History',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: kPrimaryColor
                                      ),
                                      space2C,
                                            TitleText(title:'ShevaOne will send money automatically\n through E-Wallet to the personal Bkash account\n of the Deliveryman',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                      color: kPrimaryColor
                                      ),
                                        ],
                                      ),
                                    ),
                                  ),
                                      
                                       PrimaryButton(
                                      label: 'View All',
                                      width: Get.width*.23,
                                      height: 33,
                                      borderRadiusAll: 12,
                                      marginHorizontal: 2,
                                       primary: kbuttonbg,
                                        labelColor: kPrimaryColor,
                                      marginVertical: 8,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      onPressed: () {
                                      },
                                  ),
                                    ],
                                  ),
                                ),
                                      
                                space1C,
                                      
                                HorizontalDivider(thickness: 1),
                                space2C,
                                      
                                Column(
                                  children: [
                                    
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 16,
                                                    width: 15,
                                                      decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(4),
                                                    color: Color(0xFF0D6526),
                                                  ),
                                                  ),
                                                  space2R,
                                                  TitleText(title:'14/06/2021, 14:24 AM',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: kwallettime
                                      ),
                                      ],
                                      ),
                                      
                                 TitleText(title:'\$ 100',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: kwallettime
                                      ),
                                            ],
                                          ),
                                          space2C,
                                          HorizontalDivider(
                                      thickness: 1,
                                    )
                                        ],
                                      ),
                                    ),
                                 
                                      
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 16,
                                                    width: 15,
                                                      decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(4),
                                                    color: Color(0xFF0D6526),
                                                  ),
                                                  ),
                                                  space2R,
                                                  TitleText(title:'14/06/2021, 14:24 AM',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: kwallettime
                                      ),
                                      ],
                                      ),
                                      
                                 TitleText(title:'\$ 100',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: kwallettime
                                      ),
                                            ],
                                          ),
                                          space2C,
                                          HorizontalDivider(
                                      thickness: 1,
                                    )
                                        ],
                                      ),
                                    ),
                                 
                                      
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 16,
                                                    width: 15,
                                                      decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(4),
                                                    color: Color(0xFF0D6526),
                                                  ),
                                                  ),
                                                  space2R,
                                                  TitleText(title:'14/06/2021, 14:24 AM',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: kwallettime
                                      ),
                                      ],
                                      ),
                                      
                                 TitleText(title:'\$ 100',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: kwallettime
                                      ),
                                            ],
                                          ),
                                          space2C,
                                          HorizontalDivider(
                                      thickness: 1,
                                    )
                                        ],
                                      ),
                                    ),
                                 
                                      
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 16,
                                                    width: 15,
                                                      decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(4),
                                                    color: Color(0xFF0D6526),
                                                  ),
                                                  ),
                                                  space2R,
                                                  TitleText(title:'14/06/2021, 14:24 AM',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: kwallettime
                                      ),
                                      ],
                                      ),
                                      
                                 TitleText(title:'\$ 100',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: kwallettime
                                      ),
                                            ],
                                          ),
                                          space2C,
                                          HorizontalDivider(
                                      thickness: 1,
                                    )
                                        ],
                                      ),
                                    ),
                                 
                                      
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 16,
                                                    width: 15,
                                                      decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(4),
                                                    color: Color(0xFF0D6526),
                                                  ),
                                                  ),
                                                  space2R,
                                                  TitleText(title:'14/06/2021, 14:24 AM',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: kwallettime
                                      ),
                                      ],
                                      ),
                                      
                                 TitleText(title:'\$ 100',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: kwallettime
                                      ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                 
                                  ],
                                ),  
                          ],
                        ),
                                      
                      ),
                    ),
                  ),
   

   space2C,
   space2C,
                ],
              ),
            ),
          ),
          SizedBox(height: 80,),

      ],
     ),
    );
  }
}