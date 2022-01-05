import 'package:flutter/material.dart';
import 'package:musicplayer/pages/loginpage/login_page.dart';
import 'package:musicplayer/pages/peoplelist/people_list.dart';
import 'package:musicplayer/pages/splashpage/splash_page.dart';
import 'package:musicplayer/provider/sign_in_provider.dart';
import 'package:provider/provider.dart';

import 'pages/statistics/statistic.dart';
import 'provider/bottom_navigation_bar_provider.dart';
import 'provider/drawer_provider.dart';
import 'provider/search_provider.dart';
import 'provider/statistics_provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SignInProvider()),
        ChangeNotifierProvider(create: (context) => BottomNavigationBarProvider()),
        ChangeNotifierProvider(create: (context) =>DrawerProviderMy()),
        ChangeNotifierProvider(create: (context) =>SearchProviderMy()),
        ChangeNotifierProvider(create: (context) =>StatisticsProviderMy()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         primarySwatch: Colors.blue,
      ),
      home:  StatisticsPage(),
    );
  }
}
