import 'package:flutter/material.dart';
import 'dart:io' show Platform; // and hide is the opposite of show, to import everything except...
import 'package:bitcoin_ticker/components/android_ios_picker.dart';


Widget getPicker(String selectedCurrency) {
//    bool isWeb = defaultTargetPlatform == TargetPlatform.iOS;
  if (Platform.isIOS) {
    return iOSPicker(selectedCurrency);
  } else if (Platform.isAndroid) {
    return androidDropdownButton(selectedCurrency);
  } else {
    return null;
  }
}