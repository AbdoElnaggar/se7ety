// ignore_for_file: prefer_const_constructors, unused_import, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:se7ety/future/intro/spalsh_view.dart';
import 'package:se7ety/future/intro/welcome_view.dart';
import 'package:se7ety/future/patient/nav_bar.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:PatientNavBarWidget(),
      builder: (context, child) {
        return Directionality(textDirection: TextDirection.rtl, child:child!);
      },
    );
  }
}