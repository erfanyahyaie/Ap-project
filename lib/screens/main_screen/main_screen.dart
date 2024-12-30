import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/main_screen/profile_screen.dart';

import '../../widgets/btm_nav_item.dart';
import 'basket_screen.dart';
import 'category_screen.dart';
import 'home_screen.dart';

class BtmNavScreenIndex{
  static const home = 0;
  static const category = 1;
  static const basket = 2;
  static const profile = 3;
}

class MainScreen extends StatefulWidget {
   MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final List<int> _routeHistory = [BtmNavScreenIndex.home];

  int selectedIndex = BtmNavScreenIndex.home;

  final GlobalKey<NavigatorState> _homeKey = GlobalKey();
  final GlobalKey<NavigatorState> _categoryKey = GlobalKey();
  final GlobalKey<NavigatorState> _basketKey = GlobalKey();
  final GlobalKey<NavigatorState> _profileKey = GlobalKey();

  late final map = {
    BtmNavScreenIndex.home: _homeKey,
    BtmNavScreenIndex.category: _categoryKey,
    BtmNavScreenIndex.basket: _basketKey,
    BtmNavScreenIndex.profile: _profileKey,
  };

  Future<bool> _onWillPop() async {
    if(map[selectedIndex]!.currentState!.canPop()){
      map[selectedIndex]!.currentState!.pop();
    }else if(_routeHistory.length>1){
      setState(() {
        _routeHistory.removeLast();
        selectedIndex = _routeHistory.last;
      });
    }

    return false;
}

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double btmNavHeight = size.height*.1;
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: btmNavHeight,
              child: IndexedStack(
                index: selectedIndex,
                children:  [
                  Navigator(
                    key: _homeKey,
                    onGenerateRoute: (settings) => MaterialPageRoute(builder: (context) => const HomeScreen()),
                  ),
                  Navigator(
                    onGenerateRoute: (settings) => MaterialPageRoute(builder: (context) => const CategoryScreen()),
                  ),
                  Navigator(
                    onGenerateRoute: (settings) => MaterialPageRoute(builder: (context) => const BasketScreen()),
                  ),
                  Navigator(
                    onGenerateRoute: (settings) => MaterialPageRoute(builder: (context) => const ProfileScreen()),
                  ),


                ],
              )
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.white,
                  height: btmNavHeight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BtmNavItem(
                          iconSvgPath: "assets/svg/home.svg",
                          text: "خانه",
                          isActive: selectedIndex == BtmNavScreenIndex.home,
                          onTap:() => btmNavOnPressed(index: BtmNavScreenIndex.home)
                      ),
                      BtmNavItem(
                          iconSvgPath: "assets/svg/category.svg",
                          text: "دسته بندی ها",
                          isActive: selectedIndex == BtmNavScreenIndex.category,
                          onTap:() => btmNavOnPressed(index: BtmNavScreenIndex.category)
                      ),
                      BtmNavItem(
                          iconSvgPath: "assets/svg/basket.svg",
                          text: "سبد خرید",
                          isActive: selectedIndex == BtmNavScreenIndex.basket,
                          onTap:() => btmNavOnPressed(index: BtmNavScreenIndex.basket)
                      ),
                      BtmNavItem(
                          iconSvgPath: "assets/svg/user.svg",
                          text: "پروفایل",
                          isActive: selectedIndex == BtmNavScreenIndex.profile,
                          onTap:() => btmNavOnPressed(index: BtmNavScreenIndex.profile)
                      ),

                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }

  btmNavOnPressed({required index}){
    setState(() {
      selectedIndex = index;
      _routeHistory.add(selectedIndex);
    });
  }
}


