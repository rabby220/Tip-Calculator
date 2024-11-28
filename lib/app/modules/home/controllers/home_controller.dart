import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_color.dart';
import '../../../utils/app_text.dart';

class HomeController extends GetxController {
  RxDouble tipPerPerson = 0.0.obs;
  RxDouble totalPerPersonTips = 0.0.obs;
  RxDouble totalBillWithTip = 0.0.obs;

  var sizeBoxHeight = 50.0;

  ///Total Bill Controller
  final TextEditingController totalBillController = TextEditingController();

  /// Total Percentage Controller
  final TextEditingController totalPercentageController =
      TextEditingController();

  /// Number of People Controller
  final TextEditingController numberOfPeopleController =
      TextEditingController();

  void tipCalculator() {
    try {
      final double totalBill = double.parse(totalBillController.text);
      final double totalPercentage =
          double.parse(totalPercentageController.text);
      final double totalPeople = double.parse(numberOfPeopleController.text);

      //Total Tips
      final double totalTipPerson = totalBill * (totalPercentage / 100);

      //Tip Per Person
      final double totalPerPerson = totalTipPerson / totalPeople;
      tipPerPerson.value = totalPerPerson.toPrecision(2);

      //Total Per Person
      final double totalTipPerPerson =
          (totalBill + totalTipPerson) / totalPeople;
      totalPerPersonTips.value = totalTipPerPerson.toPrecision(2);

      //Total Bill With Tips
      final totalBillAndTips = (totalBill + totalTipPerson);
      totalBillWithTip.value = totalBillAndTips.toPrecision(2);
    } catch (e) {
      Get.snackbar(
        AppText.snapTotalCheckedTitleText,
        AppText.snapTotalCheckedMessageText,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: AppColor.redColor,
        colorText: AppColor.blackColor,
        overlayBlur: 20.0,
        duration: const Duration(seconds: 3),
      );
    }
  }
}
