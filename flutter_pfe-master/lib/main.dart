import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_pfe/auth_page.dart';
import 'firebase_options.dart';


import 'package:flutter/gestures.dart';
import 'package:flutter_pfe/bathroom/bath_room.dart';
import 'package:flutter_pfe/bedroom/bed_room.dart';
import 'package:flutter_pfe/devices/my_devices.dart';
import 'package:flutter_pfe/forgetpassword/forget_pass.dart';
import 'package:flutter_pfe/group/tab_bar.dart';
import 'package:flutter_pfe/home/home.dart';
import 'package:flutter_pfe/livingroom/living_room.dart';
import 'package:flutter_pfe/login/welcome.dart';
import 'package:flutter_pfe/navbar/navbar.dart';
import 'package:flutter_pfe/notification/notification.dart';
import 'package:flutter_pfe/profil/my_profil.dart';
import 'package:flutter_pfe/rooms/room.dart';
import 'package:flutter_pfe/security/security_house.dart';
import 'package:flutter_pfe/settings/my_setting.dart';
import 'package:flutter_pfe/signup/sign_up.dart';
import 'dart:ui';

import 'adddevice/add_device.dart';




void main() async {
  // Initialize Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Run the app
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
    );
  }
}
