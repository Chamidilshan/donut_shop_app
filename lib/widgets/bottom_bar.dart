import 'package:donut_shop_app/constants/utils.dart';
import 'package:donut_shop_app/models/provider_selection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DonutBottomBar extends StatelessWidget {
  const DonutBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Consumer<DonutBottomBarSelectionService>(
        builder: (context, bottomBarSelectionService, child) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    bottomBarSelectionService.setTabSelection('main');
                  },
                  icon: Icon(
                      Icons.trip_origin,
                      color: bottomBarSelectionService.tabSelection == 'main'
                          ? Utils.mainDark
                          : Utils.mainColor
                  ),
              ),
              IconButton(
                  onPressed: () {
                    bottomBarSelectionService.setTabSelection('favorites');
                  },
                  icon: Icon(
                      Icons.favorite,
                      color: bottomBarSelectionService.tabSelection == 'favourites'
                          ? Utils.mainDark
                          : Utils.mainColor
                  ),
              ),
              IconButton(
                  onPressed: () {
                    bottomBarSelectionService.setTabSelection('shoppingcart');
                  },
                  icon: Icon(
                      Icons.shopping_cart,
                      color: bottomBarSelectionService.tabSelection == 'shoppingcart'
                          ? Utils.mainDark
                          : Utils.mainColor
                  ),
              )
            ],
          );
        }
      ),
    );
  }
}
