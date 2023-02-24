import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quizzio/controllers/bindings/auth_binding.dart';
import 'package:quizzio/controllers/bindings/home_binding.dart';
import 'package:quizzio/pages/dashboard/ui/dashboard.dart';
import 'package:quizzio/pages/home/home_screen.dart';
import 'package:quizzio/pages/login/login_screen.dart';
import 'package:quizzio/pages/splash_screen.dart';
import 'package:quizzio/utils/theme.dart';
import 'pages/app_intro_screen.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Quizio',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      initialBinding: AuthBinding(),
      getPages: [
         GetPage(
          name: '/',
          page: () => const SplashScreen(),
        ),
         GetPage(
          name: AppIntroScreen.routeName,
          page: () => const AppIntroScreen(),
        ),
        
        GetPage(
          name: LoginScreen.routeName,
          page: () => const LoginScreen(),
        ),
        //  GetPage(
        //   name: VerifyScreen.routeName,
        //   page: () => const VerifyScreen(),
        // ),
         GetPage(
          name: HomeScreen.routeName,
          page: () => const HomeScreen(),
          binding: HomeBinding(),
         ),
         GetPage(
          name: DashboardScreen.routeName,
          page: () => const DashboardScreen(),
        ),
        //  GetPage(
        //   name: OrderScreen.routeName,
        //   page: () => const OrderScreen(),
        // ),
        //  GetPage(
        //   name: WalletScreen.routeName,
        //   page: () => const WalletScreen(),
        // ),
        //  GetPage(
        //   name: ProfileScreen.routeName,
        //   page: () => const ProfileScreen(),
        // ),
      ],
    );
  }
}


