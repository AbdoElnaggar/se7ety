// ignore_for_file: camel_case_types, prefer_const_constructors, use_build_context_synchronously, must_call_super

import 'package:flutter/material.dart';
import 'package:se7ety/core/constant/constant_image.dart';
import 'package:se7ety/core/function/navigator.dart';
import 'package:se7ety/future/intro/onboarding/onboarding_view.dart';


class Splash_view extends StatefulWidget {
  const Splash_view({super.key});

  @override
  State<Splash_view> createState() => _Splash_viewState();
}

class _Splash_viewState extends State<Splash_view> {
  @override
  void initState() {
  Future.delayed(Duration(seconds: 3),(){
    push(context, onboarding_view());
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Appicons.Logo),
            
          ]
        ),
      ),
    );
  }
}