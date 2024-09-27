import 'package:flutter/material.dart';
import 'package:se7ety/core/constant/colors.dart';
import 'package:se7ety/core/function/navigator.dart';
import 'package:se7ety/core/utlis/text_style.dart';
import 'package:se7ety/future/auth/presentation/pages/register_view.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background
          // Opacity(
          //   opacity: .7,
          //   child: Image.asset(
          //     'assets/welcome-bg.png',
          //     fit: BoxFit.cover,
          //     height: double.infinity,
          //     width: double.infinity,
          //   ),
          // ),
          Image.asset(
            'asset/image/welcome-bg.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            // padding: const EdgeInsets.only(top: 100, right: 25),
            top: 100,
            right: 25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'اهلا بيك',
                  style: getBodyTextStyle(context,fontSize: 38,color: Appcolor.primary),
                ),
                const SizedBox(height: 15,),
                Text(
                  'سجل واحجز عند دكتورك وانت فالبيت',
                  style: getBodyTextStyle(context,fontSize: 20,fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 80,
            left: 25,
            right: 25,
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Appcolor.primary.withOpacity(.5),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.3),
                    blurRadius: 15,
                    offset: const Offset(5, 5),
                  )
                ],
              ),
              child: Column(
                children: [
                  Text(
                    'سجل دلوقتي كــ',
                    style: getBodyTextStyle(context,fontSize: 18, color: Appcolor.white),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => const LoginView(index: 0),
                          //     ));
                        },
                        child: InkWell(
                          onTap: (){
                            push(context, const RegisterView(index: 0,));
                          },
                          child: Container(
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Appcolor.accent.withOpacity(.7),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text(
                                  'دكتور',
                                  style: getBodyTextStyle(context,color: Appcolor.black,fontSize: 22),
                                ),
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     // MaterialPageRoute(
                          //     //   builder: (context) => const LoginView(index: 1),
                          //     // )
                          //     );
                        },
                        child: InkWell(
                          onTap: (){
                            push(context, const RegisterView(index: 1,));
                          },
                          child: Container(
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Appcolor.accent.withOpacity(.7),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text(
                                  'مريض',
                                  style: getBodyTextStyle(context,color: Appcolor.black,fontSize: 22),
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}