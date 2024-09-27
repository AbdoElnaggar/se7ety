// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:se7ety/core/constant/colors.dart';
import 'package:se7ety/core/function/navigator.dart';
import 'package:se7ety/core/utlis/text_style.dart';
import 'package:se7ety/core/widgets/custom_button.dart';
import 'package:se7ety/future/intro/onboarding/onboarding_model.dart';
import 'package:se7ety/future/intro/welcome_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboarding_view extends StatefulWidget {
  const onboarding_view({super.key});

  @override
  State<onboarding_view> createState() => _onboarding_viewState();
}

class _onboarding_viewState extends State<onboarding_view> {
  var pagecontroller = PageController();
  int currentpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          InkWell(
            onTap: (){
              pushrelacement(context,WelcomeView());
            },
            child: Text(
              'تخطي',
              style: getBodyTextStyle(context, fontSize: 22),
            ),
          ),
          SizedBox(
            width: 16,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: pagecontroller,
                itemCount: 3,
                onPageChanged: (value) {
                  setState(() {
                    currentpage = value;
                  });
                },
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SvgPicture.asset(
                        pages[index].image,
                        width: MediaQuery.sizeOf(context).width * .7,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                      Spacer(),
                      Text(
                        pages[index].title,
                        style: getBodyTextStyle(context,
                            color: Appcolor.primary,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                       pages[index].body,
                        textAlign: TextAlign.center,
                        style: getBodyTextStyle(
                          context,
                          color: Appcolor.text_color,
                          fontSize: 18,
                        ),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                    ],
                  );
                },
              ),
            ),
            Row(
              children: [
                SmoothPageIndicator(
                  controller: pagecontroller,
                  count: 3,
                  effect: WormEffect(
                    dotHeight: 8,
                    dotWidth: 16,
                    spacing: 5,
                    activeDotColor: Appcolor.primary,
                    dotColor: Appcolor.grey,
                  ),
                ),
                Spacer(),
                if (currentpage == 2)
                  CustomButton(
                      height: 40,
                      width: 120,
                      text: "هيا بنا",
                      onTap: () {
                        pushrelacement(context, WelcomeView());
                      },
                      color: Appcolor.primary)
              ],
            )
          ],
        ),
      ),
    );
  }
}
