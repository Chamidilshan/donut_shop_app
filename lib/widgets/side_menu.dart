import 'package:donut_shop_app/constants/utils.dart';
import 'package:flutter/material.dart';

class DonutSideMenu extends StatelessWidget {
  const DonutSideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Utils.mainDark,
      padding: EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(top: 40.0),
              child: Image.network(
                Utils.donutLogoWhiteNoText,
                width: 100.0,
              )
          ),
          Image.network(Utils.donutLogoWhiteText, width: 150.0,),
        ],
      ),
    );
  }
}
