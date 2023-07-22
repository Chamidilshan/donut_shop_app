import 'package:donut_shop_app/constants/utils.dart';
import 'package:donut_shop_app/features/donut_shop_main.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin{

  AnimationController? donutController;
  Animation<double>? rotateAnimation;

  @override
  void initState(){
    super.initState();
    donutController = AnimationController(
      duration: Duration(seconds: 5),
        vsync: this
    )..repeat();
    rotateAnimation = Tween<double>(begin: 0, end: 1)
    .animate(CurvedAnimation(parent: donutController!, curve: Curves.linear));
  }

  @override
  void dispose(){
    donutController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Utils.mainAppNav.currentState!.pushReplacementNamed('/main');
    });

    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context)=> DonutShopMain()
        )
      );
    });

    return  Scaffold(
      backgroundColor: Utils.mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RotationTransition(
                turns: rotateAnimation!,
                child: Image.network
                  (Utils.donutLogoWhiteNoText,
                  width: 100.0,
                  height: 100.0,
                )
            ),
            Image.network(Utils.donutLogoWhiteText, width: 100.0, height: 100.0,)
          ],
        ),
      ),
    );
  }
}
