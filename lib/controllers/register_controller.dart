import 'dart:io';
import 'package:get/get.dart';
import '../models/country_model.dart';
import '../services/database.dart';

class RegisterController extends GetxController {
  static RegisterController get to => Get.find();
  final Database database = Database();
  RxList<CountryModel> countries = <CountryModel>[].obs;

  File? image;

  List<CountryModel> get getCountries => countries.value;

  @override
  void onReady() async {
    countries.value = await database.getCountries();
    super.onReady();
  }

  void updateImage() {
 
  }
}
