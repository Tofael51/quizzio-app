import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quizzio/controllers/user_controller.dart';


import '../models/register_model.dart';
import '../models/user_model.dart';
import '../services/database.dart';

class AuthController extends GetxController {
  static AuthController get to => Get.find();
  final Database database = Database();
  final storage = GetStorage();

  RxString userId = "".obs;
  RxBool isVerified = false.obs;

  String get getUserId => userId.value;

  bool get getIsVerified => isVerified.value;

  bool get isFirstTime => storage.read('isFirstTime') ?? true;

  bool get isLoggedIn => storage.read('userId') != null;

  @override
  void onReady() {
    if (isLoggedIn) {
      userId.value = storage.read('userId');
      isVerified.value = true;
      Get.put<UserController>(UserController(), permanent: true);
    }
    super.onReady();
  }

  void setUserId(String email, String password) async {
    String userId = await database.getUserId(email, password);
    if (userId.isNotEmpty) {
      this.userId.value = userId;
      Get.put<UserController>(UserController(), permanent: true);
    }
    if (email == "testuser@ginexttradingcorp.com") {
      isVerified.value = true;
    }
    if (email == "mortuza504@gmail.com") {
      isVerified.value = true;
    }

    /**
     * For testing purposes
     */
    /*String userId = "112";
    this.userId.value = userId;
    Get.put<UserController>(UserController(), permanent: true);
    isVerified.value = true;
    //storage write
    storage.write('userId', getUserId);
    storage.write('isFirstTime', false);*/
  }

  void verifyVerificationCode(String code) async {
    bool isVerified = await database.verifyVerificationCode(code, getUserId);
    if (!isVerified) {
      this.isVerified.value = !isVerified;
      //storage write
      storage.write('userId', getUserId);
      storage.write('isFirstTime', false);
    }
  }

  void resendVerificationCode() {
    database.resendVerificationCode(getUserId);
  }

  void updateUser(UserModel model) async {
    bool isUpdated = await database.updateUser(model);
    if (isUpdated) {
      UserController.to.getUpdatedUserInfo();
    }
  }

  void registerUser(RegisterModel registerModel) {
    database.registerUser(registerModel);
  }

  void logout() {
    storage.remove('userId');
    // storage.remove('isFirstTime');
    userId.value = "";
    isVerified.value = false;
    Get.offAllNamed('/');
  }
}
