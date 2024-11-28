import 'package:flutter/material.dart';
import 'package:tip_calculator/app/utils/app_color.dart';

class AppText {
  static const String totalBillLabelText = "Total Bill";
  static const TextStyle totalBillControllerTextStyle = TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle tipCalculatorAppBarTextTextStyle = TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

//
  static const TextStyle tipPerPerson = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: AppColor.blackColor,
  );

  static const TextStyle backButtonTextStyle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: AppColor.whiteColor,
  );

  static const String tipPercentageLabelText = "Tip Percentage";
  static const String numberOfPeopleLabelText = "Number of People";
  static const String tipCalculatorAppBarText = "Tip Calculator";
  static const String tipCalculatorResultAppBarText = "Result";

  static const String tipPerPersonText = "Tip Per Person";

  static const String totalPersonText = "Total Per Person";

  static const String totalBillText = "Total Bill";

  static const String backButtonText = "Back";
  static const String calculateButtonText = "Calculate";

  static const String dollarSignText = "\$";
  static const String percentageText = "%";


  static const String snapTotalBillTitleText = "Total Bill Empty";

  static const String snapTotalBillMessageText = "Please Input Your Total Bill";

  static const String snapTotalPercentageTitleText = "Percentage Empty";
  static const String snapTotalPercentageMessageText = "Please Input Your Total Percentage";

  static const String snapTotalNumberPeopleTitleText = "Number of People Empty";
  static const String snapTotalNumberPeopleMessageText = "Please Input Your Number of People";

  static const String snapTotalCheckedTitleText = "Checked Input Box";
  static const String snapTotalCheckedMessageText = "you missed any input box";


  static const String snapZeroTitleText = "Zero cannot be input";
  static const String snapZeroSubtitleText = "You cannot input 0. Please enter another value and calculate.";



}
