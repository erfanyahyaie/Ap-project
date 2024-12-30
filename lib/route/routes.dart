
import 'package:flutter/cupertino.dart';
import 'package:untitled/screens/payment_screen.dart';
import 'package:untitled/screens/success_screen.dart';
import 'package:untitled/screens/welcome_screen.dart';

import '../screens/SingUp_screen.dart';
import '../screens/login_screen.dart';
import '../screens/main_screen/basket_screen.dart';
import '../screens/main_screen/main_screen.dart';
import '../screens/main_screen/product_single_screen.dart';
import '../screens/product_list_screen.dart';
import 'names.dart';

Map<String, Widget Function(BuildContext)> routes = {
  Screens.root : (context) => WelcomeScreen() ,
  Screens.SingupScreen : (context) => MainScreen(),
  Screens.LoginScreen : (context) => MainScreen() ,
  Screens.mainScreen : (context) => MainScreen(),
  Screens.BasketScreen : (context) => PaymentScreen (),
  Screens.productListScreen : (context) => const ProductListScreen(),
  Screens.productSingleScreen : (context) => const ProductSingleScreen(),

};