// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:se7ety/core/constant/colors.dart';
import 'package:se7ety/core/function/navigator.dart';
import 'package:se7ety/core/utlis/text_style.dart';
import 'package:se7ety/core/widgets/custom_button.dart';
import 'package:se7ety/future/auth/presentation/pages/doctor_register_data.dart';
import 'package:se7ety/future/auth/presentation/pages/login_view.dart';
import 'package:se7ety/future/intro/welcome_view.dart';


class RegisterView extends StatefulWidget {
  const RegisterView({super.key, required this.index});
  final int index;

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _displayName = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isVisable = true;

  String handleUserType(int index) {
    return index == 0 ? 'دكتور' : 'مريض';
  }

  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            pushrelacement(context, WelcomeView());
          }, icon: Icon(
                  Icons.arrow_back,
                  color: Appcolor.black,
                )),
        

        ),
        body: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.only(right: 16, left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'asset/image/Se7tec__1_-removebg-preview 1.png',
                      height: 200,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'سجل حساب جديد كـ "${handleUserType(widget.index)}"',
                      style:gettitlestyle(context),
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      controller: _displayName,
                      style: TextStyle(color: Appcolor.black),
                      decoration: InputDecoration(
                        hintText: 'الاسم',
                        hintStyle: getBodyTextStyle(context,color: Colors.grey),
                        prefixIcon: const Icon(Icons.person),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) return 'من فضلك ادخل الاسم';
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailController,
                      textAlign: TextAlign.end,
                      decoration: const InputDecoration(
                        hintText: 'abdo@example.com',
                        prefixIcon: Icon(Icons.email_rounded),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'من فضلك ادخل الايميل';
                        } 
                        // else if (!emailValidate(value)) {
                        //   return 'من فضلك ادخل الايميل صحيحا';
                        // }
                         else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    TextFormField(
                      textAlign: TextAlign.end,
                      style: TextStyle(color: Appcolor.black),
                      obscureText: isVisable,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        hintText: '********',
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isVisable = !isVisable;
                              });
                            },
                            icon: Icon((isVisable)
                                ? Icons.remove_red_eye
                                : Icons.visibility_off_rounded)),
                        prefixIcon: const Icon(Icons.lock),
                      ),
                      controller: _passwordController,
                      validator: (value) {
                        if (value!.isEmpty) return 'من فضلك ادخل كلمة السر';
                        return null;
                      },
                    ),
                    const SizedBox(height: 30,),
                    CustomButton(
                      onTap: () async {
                        pushrelacement(context, DoctorUploadData());
                        // if (_formKey.currentState!.validate()) {
                        //   if (widget.index == 0) {
                        //     context.read<AuthCubit>().registerDoctor(
                        //         _displayName.text,
                        //         _emailController.text,
                        //         _passwordController.text);
                        //   } else {
                        //     context.read<AuthCubit>().registerPatient(
                        //         _displayName.text,
                        //         _emailController.text,
                        //         _passwordController.text);
                        //   }
                        // }
                      },
                      text: "تسجيل حساب", color:Appcolor.primary ,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'لدي حساب ؟',
                            style: getBodyTextStyle(context,color: Appcolor.black),
                          ),
                          TextButton(
                              onPressed: () {
                                // Navigator.of(context)
                                //     .pushReplacement(MaterialPageRoute(
                                //   builder: (context) =>
                                //       LoginView(index: widget.index),
                                // ));
                              },
                              child: InkWell(
                                onTap: (){
                                  push(context, LoginView(index: widget.index));
                                },
                                child: Text(
                                  'سجل دخول',
                                  style: getBodyTextStyle(context,color: Appcolor.primary),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      
    );
  }
}