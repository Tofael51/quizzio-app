import 'package:get/get.dart';

import '../upload_prescription_controller.dart';


class UploadPrescriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<UploadPrescriptionController>(UploadPrescriptionController());
  }
}
