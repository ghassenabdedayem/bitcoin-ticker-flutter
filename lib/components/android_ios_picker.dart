import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bitcoin_ticker/utilities/coin_data.dart';

DropdownButton<String> androidDropdownButton(String selectedCurrency) {
  List<DropdownMenuItem<String>> dropdownItems = [];

  for (String currency in currenciesList) {
    var newItem = DropdownMenuItem(
      child: Text(currency),
      value: currency,
    );
    dropdownItems.add(newItem);
  }

  return DropdownButton<String>(
    value: selectedCurrency,
    items: dropdownItems,
    onChanged: (value) {
//      setState(() {
      selectedCurrency = value;

    },
  );
}

CupertinoPicker iOSPicker(String selectedCurrency) {
  List<Text> pickerItems = [];

  for (String currency in currenciesList) {
    pickerItems.add(Text(
      currency,
      style: TextStyle(color: Colors.white),
    ));
  }

  return CupertinoPicker(
    backgroundColor: Colors.lightBlue,
    itemExtent: 32.0,
    onSelectedItemChanged: (selectedIndex) {
      print(selectedIndex);
    },
    children: pickerItems,
  );
}