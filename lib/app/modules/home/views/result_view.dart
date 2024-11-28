import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/app_color.dart';
import '../../../utils/app_text.dart';
import '../controllers/home_controller.dart';

class ResultView extends GetView {
  ResultView({super.key});

  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppText.tipCalculatorResultAppBarText),
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: h,
          width: w,
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ///Tip Per Person
                  Container(
                    width: w,
                    height: 150,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border(
                        top: BorderSide(color: AppColor.redColor),
                        right: BorderSide(color: AppColor.blackColor),
                        bottom: BorderSide(color: AppColor.blueColor),
                        left: BorderSide(color: AppColor.greenColor),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        const Text(
                          AppText.tipPerPersonText,
                          style: AppText.tipPerPerson,
                        ),
                        Card(
                          elevation: 5.0,
                          child: Container(
                            height: 65,
                            width: 250,
                            decoration: BoxDecoration(
                              color: AppColor.whiteColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                                child: Obx(
                              () => Text(
                                " ${homeController.tipPerPerson}     \$",
                                style: AppText.tipPerPerson,
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 50,
                  ),

                  ///Total Per Person
                  Container(
                    width: w,
                    height: 150,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border(
                        top: BorderSide(color: AppColor.redColor),
                        right: BorderSide(color: AppColor.blackColor),
                        bottom: BorderSide(color: AppColor.blueColor),
                        left: BorderSide(color: AppColor.greenColor),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        const Text(
                          AppText.totalPersonText,
                          style: AppText.tipPerPerson,
                        ),
                        Card(
                          elevation: 5.0,
                          child: Container(
                            height: 65,
                            width: 250,
                            decoration: BoxDecoration(
                              color: AppColor.whiteColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Obx(
                                () => Text(
                                  "  ${homeController.totalPerPersonTips}    \$",
                                  style: AppText.tipPerPerson,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 50,
                  ),

                  ///Total Per Person
                  Container(
                    width: w,
                    height: 150,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border(
                        top: BorderSide(color: AppColor.redColor),
                        right: BorderSide(color: AppColor.blackColor),
                        bottom: BorderSide(color: AppColor.blueColor),
                        left: BorderSide(color: AppColor.greenColor),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        const Text(
                          AppText.totalBillText,
                          style: AppText.tipPerPerson,
                        ),
                        Card(
                          elevation: 5.0,
                          child: Container(
                            height: 65,
                            width: 250,
                            decoration: BoxDecoration(
                              color: AppColor.whiteColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                                child: Obx(
                              () => Text(
                                " ${homeController.totalBillWithTip}    \$",
                                style: AppText.tipPerPerson,
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 50,
                  ),

                  ///
                  ///
                  ///
                  /// Back Button
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
                      Get.toNamed('/home');
                    },
                    child: const Text(
                      AppText.backButtonText,
                      style: AppText.backButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
