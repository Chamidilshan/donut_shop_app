import 'package:donut_shop_app/constants/utils.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Utils.mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(Utils.donutLogoWhiteNoText, width: 100.0, height: 100.0,),
            Image.network(Utils.donutLogoWhiteText, width: 100.0, height: 100.0,)
          ],
        ),
      ),
    );
  }
}
