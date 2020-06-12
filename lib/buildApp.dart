import 'package:flutter/material.dart';
import 'screens/price_screen.dart';
import 'package:bitcoin_ticker/services/get_data.dart';

class BuildApp extends StatefulWidget {
  @override
  _BuildAppState createState() => _BuildAppState();
}

class _BuildAppState extends State<BuildApp> {
  var rate;

  @override
  void initState() {
    super.initState();
    getCoinData();
  }

  Future<Widget> getCoinData() async {
    var data = await CoinData().getCoinData();
    print(data['rate']);
    setState(() {
      rate = data['rate'];
      rate = rate.toInt().toString();
    });

    print('this is the new rate $rate');
  }

  @override
  Widget build(BuildContext context) {
    return PriceScreen(
      coinData: rate,
    );
  }
}
