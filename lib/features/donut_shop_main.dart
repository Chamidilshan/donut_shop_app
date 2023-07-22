import 'package:donut_shop_app/constants/utils.dart';
import 'package:donut_shop_app/widgets/bottom_bar.dart';
import 'package:donut_shop_app/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class DonutShopMain extends StatelessWidget {
  const DonutShopMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Utils.mainDark),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Image.network(Utils.donutLogoRedText, width: 120.0,),
      ),
      drawer: Drawer(
        child: DonutSideMenu(),
      ),
      body: Column(
        children: [
          Expanded(
              child: Navigator(
                key: Utils.mainListNav,
                initialRoute: '/main',
                onGenerateRoute: (RouteSettings settings){
                  Widget page;
                  switch(settings.name){
                    case '/main':
                    page = Center(child: Text('main'),);
                    break;
                    case '/favourites':
                    page = Center(child: Text('favourites'),);
                    break;
                    case '/shoppingcart':
                    page = Center(child: Text('shopping cart'),);
                    break;
                    default:
                      page = Center(
                        child: Text('main'),
                      );
                      break;
                  }

                  return PageRouteBuilder(pageBuilder: (_,__,___)=> page,
                  transitionDuration: Duration(seconds: 0));
                },
              )
          ),
          Container(
            child: DonutBottomBar(),
          )
        ],
      )
    );
  }
}
