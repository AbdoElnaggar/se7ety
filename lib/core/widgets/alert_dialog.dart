import 'package:flutter/material.dart';
import 'package:se7ety/core/constant/colors.dart';
import 'package:se7ety/core/utlis/text_style.dart';

showAlertDialog(BuildContext context,
    {String? ok, String? no, required String title, void Function()? onTap}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: Appcolor.accent,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Appcolor.accent,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Text(
                  title,
                  style: gettitlestyle(context,color: Appcolor.black),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (ok != null)
                      GestureDetector(
                        onTap: onTap,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Appcolor.scendary),
                          child: Text(
                            ok,
                            style: getBodyTextStyle(context,color: Appcolor.black),
                          ),
                        ),
                      ),
                    if (no != null)
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Appcolor.scendary),
                          child: Text(
                            no,
                            style: getBodyTextStyle(context,color: Appcolor.black),
                          ),
                        ),
                      ),
                  ],
                )
              ],
            ),
          )
        ],
      );
    },
  );
}



  // showDialog(
            //   context: context,
            //   builder: (context) {
            //     return CupertinoAlertDialog(
            //       title: const Text('تم تسجيل الحجز !'),
            //       actions: [
            //         TextButton(
            //           onPressed: () {
            //             pushAndRemoveUntil(
            //                 context, const PatientNavBarWidget());
            //           },
            //           child: const Text('اضغط للانتقال'),
            //         ),
            //         TextButton(
            //           onPressed: () {
            //             Navigator.pop(context);
            //           },
            //           child: const Text('الغاء'),
            //         ),
            //       ],
            //     );
            //   },
            // );