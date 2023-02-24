import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../services/database.dart';


class UploadPrescriptionController extends GetxController {
  static UploadPrescriptionController get to => Get.find();
  final Database database = Database();
  RxList<XFile> imageList = <XFile>[].obs;
  List<XFile> get getImages => imageList.value;
// @override
// void onReady() async {
//   super.onReady();
// }
  void setImageList(List<XFile> images) {
    imageList.value = images;
    print(images.length);
  }
}
