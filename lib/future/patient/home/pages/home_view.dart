// ignore_for_file: library_private_types_in_public_api, unused_import



import 'package:flutter/material.dart';
import 'package:se7ety/core/constant/colors.dart';
import 'package:se7ety/core/utlis/text_style.dart';
import 'package:se7ety/future/patient/home/widgets/specialist.dart';
import 'package:se7ety/future/patient/home/widgets/top_relted.dart';

class PatientHomeView extends StatefulWidget {
  const PatientHomeView({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<PatientHomeView> {
 // final TextEditingController _doctorName = TextEditingController();
 // User? user;

  // Future<void> _getUser() async {
  //   user = FirebaseAuth.instance.currentUser;
  // }

  @override
  // void initState() {
  //   super.initState();
  //   _getUser();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: IconButton(
              splashRadius: 20,
              icon: Icon(Icons.notifications_active,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(TextSpan(
                children: [
                  TextSpan(
                    text: 'مرحبا، ',
                    style: getBodyTextStyle(context,fontSize: 18),
                  ),
                  TextSpan(
                    text:"عبدالرحمن النجار",
                    style: gettitlestyle(context,),
                  ),
                ],
              )),
              const SizedBox(height: 10,),
              Text("احجز الآن وكن جزءًا من رحلتك الصحية.",
                  style: gettitlestyle(context,color: Appcolor.black, fontSize: 25)),
              const SizedBox(height: 15),

              // --------------- Search Bar --------------------------
              Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.3),
                      blurRadius: 15,
                      offset: const Offset(5, 5),
                    )
                  ],
                ),
                child: TextFormField(
                  textInputAction: TextInputAction.search,
                  
                  cursorColor: Appcolor.primary,
                  decoration: InputDecoration(
                    hintStyle: getBodyTextStyle(context,),
                    filled: true,
                    hintText: 'ابحث عن دكتور',
                    suffixIcon: Container(
                      decoration: BoxDecoration(
                        color: Appcolor.primary.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: IconButton(
                        iconSize: 20,
                        splashRadius: 20,
                        color: Colors.white,
                        icon: const Icon(Icons.search),
                        onPressed: () {
                          // setState(
                          //   () {
                          //     if (_doctorName.text.isNotEmpty) {
                          //       push(
                          //           context,
                          //           SearchHomeView(
                          //               searchKey: _doctorName.text));
                          //     }
                          //   },
                          // );
                        },
                      ),
                    ),
                  ),
                  style: getBodyTextStyle(context,),
                  onFieldSubmitted: (String value) {
                    // setState(
                    //   () {
                    //     if (_doctorName.text.isNotEmpty) {
                    //       push(context,
                    //           SearchHomeView(searchKey: _doctorName.text));
                    //     }
                    //   },
                   // );
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              // ----------------  SpecialistsWidget --------------------,

              const SpecialistsBanner(),
              const SizedBox(
                height: 10,
              ),

              // ----------------  Top Rated --------------------,
              Text(
                "الأعلي تقييماً",
                textAlign: TextAlign.center,
                style: gettitlestyle(context,fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
             // const TopRatedList(),
            ],
          ),
        ),
      ),
    );
  }
}