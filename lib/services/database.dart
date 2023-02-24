import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

import '../controllers/company_controller.dart';
import '../models/country_model.dart';
import '../models/notice_model.dart';
import '../models/register_model.dart';
import '../models/slider_model.dart';
import '../models/user_model.dart';
import '../models/user_status_model.dart';
import '../utils/constants.dart';

class Database {
  final String apiUrl = "https://ginexttradingcorp.com/api/";

  void checkUpdate() async {
    var url = Uri.parse(apiUrl + "app-version");
    var response = await http.get(url);
    var data = jsonDecode(response.body);
    debugPrint(data.toString());

    //checking if the code is valid
    if (data['status'] == true) {
      if (data['data'] > appVersion) {
        Get.snackbar(
          "Update Available",
          "New update available, please update the app",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
          margin: const EdgeInsets.all(10),
          duration: const Duration(seconds: 5),
          mainButton: TextButton(
            onPressed: () async {
              String _url =
                  "https://play.google.com/store/apps/details?id=com.wiztecbd.e_next_trading";
              Get.back();
              if (!await launch(_url)) throw 'Could not launch $_url';
            },
            child: const Text("Update Now"),
          ),
        );
      }
    } else {
      showAlert(data['message']);
    }
  }

  Future<List<CountryModel>> getCountries() async {
    List<CountryModel> countries = [];
    final url = Uri.parse(apiUrl + "country-list");
    var response = await http.get(url);
    var data = jsonDecode(response.body);
    debugPrint(data.toString());
    //for each data in the list
    data['country_list'].forEach((element) {
      countries.add(CountryModel.fromJson(element));
    });
    return countries;
  }

  Future<List<NoticeModel>> getNotices() async {
    List<NoticeModel> notices = [];
    var url = Uri.parse(apiUrl + "notice-board");
    var response = await http.get(url);
    var data = jsonDecode(response.body);
    debugPrint(data.toString());
    if (data['status'] == true) {
      //for each data in the list
      data['data'].forEach((element) {
        notices.add(NoticeModel.fromJson(element));
      });
    } else {
      Get.back();
      showAlert(data['message']);
    }
    return notices;
  }

  Future<UserModel> getUser(String id) async {
    UserModel userInfo = UserModel();
    var url = Uri.parse(apiUrl + "user-info/$id");
    var response = await http.get(url);
    var data = jsonDecode(response.body);
    debugPrint(data.toString());
    if (data['status'] == true) {
      userInfo = UserModel.fromJson(data);
    } else {
      showAlert(data['message']);
    }

    return userInfo;
  }

  Future<String> getUserId(String email, String password) async {
    String id = "";
    var url = Uri.parse(apiUrl + "user-login");
    var response =
        await http.post(url, body: {"email": email, "password": password});
    var data = jsonDecode(response.body);
    debugPrint(data.toString());
    //removing the progress bar
    Get.back();

    //checking if the user is valid
    if (data['status'] == true) {
      id = data['user_id'].toString();
    } else {
      showAlert(data['message']);
    }

    return id;
  }

  void forgotPassword(String userId, String password, String code) async {
    var url = Uri.parse(apiUrl + "change-password");
    var response = await http.post(url,
        body: {"user_id": userId, "code": code, "new_password": password});
    var data = jsonDecode(response.body);
    debugPrint(data.toString());

    //checking if the user is valid
    ///TODO:Uncomment
    // if (data['status'] == true) {
    //   Get.offAllNamed(HomeScreen.routeName);
    // } else {
    //   showAlert(data['message']);
    // }
  }

  Future<String> forgotPasswordCode(String email) async {
    String userId = "";
    var url = Uri.parse(apiUrl + "forget-password");
    var response = await http.post(url, body: {"email": email});
    var data = jsonDecode(response.body);
    debugPrint(data.toString());

    //checking if the code is valid
    if (data['status'] == true) {
      userId = data['user_id'].toString();
      Get.snackbar("Success", "Verification code sent successfully",
          snackPosition: SnackPosition.BOTTOM);
    } else {
      showAlert(data['message']);
    }

    return userId;
  }

  void registerUser(RegisterModel registerModel) async {
    var url = Uri.parse(apiUrl + "user-registration");
    var response = await http.post(url, body: {
      "name": registerModel.name,
      "email": registerModel.email,
      "phone": registerModel.phone,
      "country_id": registerModel.countryId,
      "password": registerModel.password,
      'referel_code': registerModel.referelCode ?? "none",
      'gender': registerModel.gender,
    });
    var data = jsonDecode(response.body);
    debugPrint(data.toString());
    //removing the progress bar
    Get.back();

    //checking if the user is valid
    ///TODO:Uncomment
    // if (data['status'] == true) {
    //   Get.defaultDialog(
    //     title: "Success",
    //     content: const Text("Registration Successful"),
    //     actions: [
    //       ElevatedButton(
    //         child: const Text("OK"),
    //         onPressed: () {
    //           Get.offAllNamed(HomeScreen.routeName);
    //         },
    //       )
    //     ],
    //   );
    // } else {
    //   showAlert(data['message']);
    // }
  }

  Future<bool> updateUser(UserModel userInfo) async {
    bool status = false;
    var url = Uri.parse(apiUrl + "profile-update");
    var response = await http.post(url, body: {
      "name": userInfo.userName,
      "phone": userInfo.userPhone,
      "country_id": userInfo.countryName,
      'gender': userInfo.gender,
      'user_id': userInfo.userId,
    });
    var data = jsonDecode(response.body);
    debugPrint(data.toString());
    //removing the progress bar
    Get.back();

    //checking if the user is valid
    ///TODO:Uncomment
    // if (data['status'] == true) {
    //   status = true;
    //   Get.defaultDialog(
    //     title: "Success",
    //     content: const Text("Update Successful"),
    //     actions: [
    //       ElevatedButton(
    //         child: const Text("OK"),
    //         onPressed: () {
    //           Get.offAllNamed(HomeScreen.routeName);
    //         },
    //       )
    //     ],
    //   );
    // } else {
    //   showAlert(data['message']);
    // }

    return status;
  }

  void uploadImage(File image, String userId) async {
    var url = Uri.parse(apiUrl + "profile-image-update");
    var request = http.MultipartRequest("POST", url);
    request.fields['user_id'] = userId;
    request.files.add(await http.MultipartFile.fromPath('image', image.path));

    request.send().then(
      (response) {
        if (response.statusCode == 200) {
          ///TODO: Uncomment
          // Get.offAllNamed(HomeScreen.routeName);
        } else {
          showAlert("Something went wrong");
        }
      },
    );
  }

  Future<bool> verifyVerificationCode(String code, String userId) async {
    var url = Uri.parse(apiUrl + "user-verify");
    var response =
        await http.post(url, body: {"code": code, "user_id": userId});
    var data = jsonDecode(response.body);
    debugPrint(data.toString());
    //removing the progress bar
    Get.back();

    //checking if the code is valid
    if (data['status'] == true) {
      return true;
    } else {
      showAlert(data['message']);
    }

    return false;
  }

  void resendVerificationCode(String userId) async {
    var url = Uri.parse(apiUrl + "resend-verify/$userId");
    var response = await http.get(url);
    var data = jsonDecode(response.body);
    debugPrint(data.toString());

    //checking if the code is valid
    if (data['status'] == true) {
      Get.snackbar("Success", "Verification code sent successfully",
          snackPosition: SnackPosition.BOTTOM);
    } else {
      showAlert(data['message']);
    }
  }

  Future<List<SliderModel>> getSliders() async {
    List<SliderModel> sliders = [];
    var url = Uri.parse(apiUrl + "slider-list");
    var response = await http.get(url);
    var data = jsonDecode(response.body);
    debugPrint(data.toString());
    if (data['status'] == true) {
      //for each data in the list
      data['data'].forEach((element) {
        sliders.add(SliderModel.fromJson(element));
      });
      var HomeController;
      HomeController.to.featuredImage.value =
          data['fixed_depo_img']['image'] ?? "";
    }
    return sliders;
  }

  Future<UserStatusModel> getUserStatus(String userId) async {
    var url = Uri.parse(apiUrl + "user-reg-info/$userId");
    var response = await http.get(url);
    var data = jsonDecode(response.body);
    return UserStatusModel.fromJson(data);
  }

  void getCompanyDetails() async {
    var url = Uri.parse(apiUrl + "company-details");
    var response = await http.get(url);
    var data = jsonDecode(response.body);
    CompanyController.to.title.value = data['company_details']['title'];
    CompanyController.to.body.value = data['company_details']['body'];
  }

  void showAlert(String message) {
    Get.defaultDialog(
      title: "Error",
      content: Text(message),
      actions: [
        ElevatedButton(
          child: const Text("OK"),
          onPressed: () {
            Get.back();
          },
        )
      ],
    );
  }
}
