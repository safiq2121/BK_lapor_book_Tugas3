import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lapor_book/firebase_options.dart';
import 'package:lapor_book/pages/AddFormPage.dart';
import 'package:lapor_book/pages/DetailPage.dart';
import 'package:lapor_book/pages/RegisterPage.dart';
import 'package:lapor_book/pages/SplashPage.dart';
import 'package:lapor_book/pages/dashboard/DashboardPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    title: 'lapor Book',
    initialRoute: '/',
    routes: {
      '/': (context) =>  SplashPage(),
      '/login': (context) =>  SplashPage(),
      '/register': (context) =>  RegisterPage(),
      '/dashboard': (context) =>  DashboardPage(),
      '/add': (context) =>  AddFormPage(),
      '/detail': (context) =>  DetailPage(),
    },
  ));
}
