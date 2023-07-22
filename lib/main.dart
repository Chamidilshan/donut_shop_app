import 'package:donut_shop_app/constants/utils.dart';
import 'package:donut_shop_app/features/donut_shop_main.dart';
import 'package:donut_shop_app/features/splash_sceen.dart';
import 'package:donut_shop_app/models/provider_selection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>DonutBottomBarSelectionService())
      ],
          child: const MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      // navigatorKey: Utils.mainAppNav,
      // routes: {
      //   '/': (context)=>SplashPage(),
      //   '/main': (context)=>DonutShopMain()
      // },
      title: 'Donut App',
      home: SplashPage()
    );
  }
}
