import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../../../utils/app_color.dart';
import '../../../utils/app_icon.dart';
import '../../../utils/app_text.dart';
import '../controllers/home_controller.dart';
import 'result_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppText.tipCalculatorAppBarText),
        centerTitle: true,
        titleTextStyle: AppText.tipCalculatorAppBarTextTextStyle,
        toolbarHeight: 100.0,
        backgroundColor: AppColor.tealColor,
        shadowColor: AppColor.deepOrangeColor,
        elevation: 3.0,
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
      ),
      body: Card(
        shadowColor: Colors.deepOrange,
        child: Container(
          color: AppColor.whiteColor,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      ///
                      ///
                      ///
                      ///
                      ///
                      ///Total Bill
                      TextFormField(
                        controller: controller.totalBillController,
                        style: AppText.totalBillControllerTextStyle,
                        decoration: const InputDecoration(
                          suffix: Text(AppText.dollarSignText),
                          labelText: AppText.totalBillLabelText,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0),
                            ),
                          ),
                        ),
                        // maxLength: 10,
                        textAlign: TextAlign.center,
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                          signed: false,
                        ),

                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'^\d+\.?\d{0,2}')),
                          LengthLimitingTextInputFormatter(10),
                        ],
                      ),

                      SizedBox(
                        height: controller.sizeBoxHeight,
                      ),

                      ///
                      ///
                      ///
                      ///
                      ///
                      /// Total Percentage
                      TextFormField(
                        controller: controller.totalPercentageController,
                        style: AppText.totalBillControllerTextStyle,
                        decoration: const InputDecoration(
                          suffix: Text(AppText.percentageText),
                          labelText: AppText.tipPercentageLabelText,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0),
                            ),
                          ),
                        ),
                        // maxLength: 10,
                        textAlign: TextAlign.center,
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                          signed: false,
                        ),

                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(2),
                        ],
                      ),

                      SizedBox(
                        height: controller.sizeBoxHeight,
                      ),

                      ///
                      ///
                      ///
                      ///
                      /// Number of People
                      TextFormField(
                        controller: controller.numberOfPeopleController,
                        style: AppText.totalBillControllerTextStyle,
                        decoration: const InputDecoration(
                          suffix: AppIcon.peopleIcon,
                          labelText: AppText.numberOfPeopleLabelText,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0),
                            ),
                          ),
                        ),
                        // maxLength: 10,
                        textAlign: TextAlign.center,
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                          signed: false,
                        ),

                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(3),
                        ],
                      ),

                      SizedBox(
                        height: controller.sizeBoxHeight,
                      ),

                      ///
                      ///
                      ///
                      ///
                      /// Calculate Button
                      MaterialButton(
                        minWidth: double.maxFinite,
                        elevation: 5.0,
                        height: 50.0,
                        textColor: AppColor.whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: AppColor.tealColor,
                        onPressed: () {
                          if (controller.totalBillController.text.isEmpty) {
                            _userMessage(
                              AppText.snapTotalBillTitleText,
                              AppText.snapTotalBillMessageText,
                              5.0,
                              const Duration(seconds: 1),
                              SnackPosition.BOTTOM,
                              AppColor.redColor,
                              AppColor.whiteColor,
                            );
                          } else if (controller
                              .totalPercentageController.text.isEmpty) {
                            _userMessage(
                              AppText.snapTotalPercentageTitleText,
                              AppText.snapTotalPercentageMessageText,
                              5.0,
                              const Duration(seconds: 1),
                              SnackPosition.BOTTOM,
                              AppColor.redColor,
                              AppColor.whiteColor,
                            );
                          } else if (controller
                              .numberOfPeopleController.text.isEmpty) {
                            _userMessage(
                              AppText.snapTotalNumberPeopleTitleText,
                              AppText.snapTotalNumberPeopleMessageText,
                              5.0,
                              const Duration(seconds: 1),
                              SnackPosition.BOTTOM,
                              AppColor.redColor,
                              AppColor.whiteColor,
                            );
                          } else if (controller.totalBillController.text ==
                                  '0' ||
                              controller.totalPercentageController.text ==
                                  '0' ||
                              controller.numberOfPeopleController.text == '0') {
                            _userMessage(
                              AppText.snapZeroTitleText,
                              AppText.snapZeroSubtitleText,
                              5.0,
                              const Duration(seconds: 1),
                              SnackPosition.BOTTOM,
                              AppColor.redColor,
                              AppColor.whiteColor,
                            );
                          } else {
                            controller.tipCalculator();
                            Get.to(
                              () => ResultView(),
                              transition: Transition.fadeIn,
                            );
                          }
                        },
                        child: const Text(
                          AppText.calculateButtonText,
                          style: AppText.backButtonTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  SnackbarController _userMessage(
      String title,
      String message,
      double blurValue,
      Duration duration,
      SnackPosition position,
      Color backgroundColor,
      Color textColor) {
    return Get.snackbar(
      title,
      message,
      overlayBlur: blurValue,
      duration: duration,
      snackPosition: position,
      backgroundColor: backgroundColor,
      colorText: textColor,
    );
  }
}
