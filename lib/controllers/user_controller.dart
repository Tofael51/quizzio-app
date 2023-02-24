import 'package:get/get.dart';

import '../models/user_model.dart';
import '../services/database.dart';
import 'auth_controller.dart';

class UserController extends GetxController {
  static UserController get to => Get.find();
  final Database database = Database();

  Rx<UserModel> userInfo = UserModel().obs;

  UserModel get getUserInfo => userInfo.value;

  @override
  void onReady() async {
    getUpdatedUserInfo();
    super.onReady();
  }

  void getUpdatedUserInfo() async {
    userInfo.value = await database.getUser(AuthController.to.getUserId);
  }
}
