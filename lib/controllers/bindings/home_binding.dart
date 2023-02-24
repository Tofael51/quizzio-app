import 'package:get/get.dart';

import '../home_controller.dart';
import '../notice_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController(), permanent: true);
    Get.put<NoticeController>(NoticeController(), permanent: true);
  }
}
