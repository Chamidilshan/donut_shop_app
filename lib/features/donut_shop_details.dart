import 'package:flutter/material.dart';

import '../constants/utils.dart';

class DonutShopDetails extends StatefulWidget {
  const DonutShopDetails({Key? key}) : super(key: key);

  @override
  State<DonutShopDetails> createState() => _DonutShopDetailsState();
}

class _DonutShopDetailsState extends State<DonutShopDetails> {
  DonutModel? selectedDonut;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        iconTheme: IconThemeData(color: Utils.mainDark),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: SizedBox(
          width: 120.0,
            child: Image.network(Utils.donutLogoRedText)
        ),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.5,
            child: Stack(
              children: [],
            ),
          ),
          Expanded(
              child: Column()
          )
        ],
      ),
    );
  }
}
