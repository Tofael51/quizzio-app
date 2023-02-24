import 'package:get/get.dart';

import '../models/notice_model.dart';
import '../services/database.dart';


class NoticeController extends GetxController {
  static NoticeController get to => Get.find();
  final Database database = Database();

  RxList<NoticeModel> noticeList = <NoticeModel>[].obs;

  List<NoticeModel> get getNotices => noticeList.value;

  @override
  void onReady() async {
    noticeList.value = await database.getNotices();
    super.onReady();
  }
}
