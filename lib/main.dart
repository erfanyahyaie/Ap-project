import 'package:flutter/material.dart';
import 'package:untitled/route/names.dart';
import 'package:untitled/route/routes.dart';
import 'package:untitled/screens/main_screen/profile_screen.dart';

import 'components/theme.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Store',
      theme: lightTheme(),
      initialRoute: Screens.root,
      routes: routes,
      // home: ProfileScreen(),
    );
  }
}
