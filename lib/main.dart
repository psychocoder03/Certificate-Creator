import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:certificate/providers/home.dart';

import 'package:certificate/screens/home.dart';
import 'package:certificate/screens/result.dart';
import 'package:certificate/screens/viewer.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeProvider>(
          create: (context) => HomeProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
  await PermissionHandler().checkPermissionStatus(PermissionGroup.storage);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Certificate Generator',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.white,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          color: Colors.white,
          textTheme: TextTheme(
            subtitle1: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
      routes: {
        '/': (context) => HomeScreen(),
        '/result': (context) => ResultScreen(),
        '/viewer': (context) => ViewerScreen(),
      },
      initialRoute: '/',
    );
  }
}
