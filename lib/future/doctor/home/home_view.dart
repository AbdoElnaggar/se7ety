import 'dart:async';
import 'package:flutter/material.dart';
import 'package:se7ety/core/constant/colors.dart';
import 'package:se7ety/core/utlis/text_style.dart';

class DoctorHomeView extends StatefulWidget {
  const DoctorHomeView({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<DoctorHomeView> {
  User? user;

  Future<void> _getUser() async {
    user = FirebaseAuth.instance.currentUser;
  }

  @override
  void initState() {
    super.initState();
    _getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: IconButton(
              splashRadius: 20,
              icon:  Icon(Icons.notifications_active,
                  color: Appcolor.black),
              onPressed: () {},
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'صــــــحّـتــي',
          style: gettitlestyle(context,color: Appcolor.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(TextSpan(
                  children: [
                    TextSpan(
                      text: 'مرحبا، ',
                      style: getBodyTextStyle(context,fontSize: 18),
                    ),
                    TextSpan(
                      text: user?.displayName,
                      style: gettitlestyle(context,),
                    ),
                  ],
                )),
                Text("الآن وكن جزءًا من رحلتك الصحية.",
                    style: gettitlestyle(context,color: Appcolor.black, fontSize: 25)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}