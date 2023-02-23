// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors

import 'package:bealert/Common_widgets/formbuttons.dart';
import 'package:bealert/Common_widgets/formfield.dart';
import 'package:bealert/Common_widgets/scaffoldd.dart';
import 'package:bealert/Common_widgets/sizedboxx.dart';
import 'package:bealert/Common_widgets/textt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bealert/Common_widgets/containerr.dart';
import 'package:unicons/unicons.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  bool _isVisible = false;
  final RegExp emailvalid = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
  final RegExp passwordvalid =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
  final formKey = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffoldd(
        bcolor: Theme.of(context).colorScheme.secondary,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(child: SizedBox.shrink()),
            Expanded(
              flex: 8,
              child: Containerr(
                w: screenwidth,
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(35.0, 30.0, 35.0, 5.0),
                  child: Center(
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          //* Login text
                          Textt(
                            text: 'LOGIN',
                            size: 48.0,
                            font: GoogleFonts.righteous,
                          ),
                          SizedBoxx(h: 90.0),
                          //* Email field
                          Form(
                            key: formKey,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            child: TextFormField(
                              obscureText: !_isVisible,
                              validator: (value2) {
                                if (value2!.isEmpty) {
                                  return 'Required';
                                } else if (!emailvalid.hasMatch(value2)) {
                                  return 'Invalid email format';
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                errorMaxLines: 2,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                hintText: "Email",
                                hintStyle: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                                prefixIcon: Icon(
                                  UniconsLine.envelope,
                                ),
                              ),
                            ),
                          ),
                          SizedBoxx(),
                          //* Password field
                          Form(
                            key: formKey2,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            child: TextFormField(
                              obscureText: !_isVisible,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Required';
                                } else if (!passwordvalid.hasMatch(value)) {
                                  return 'Password must contain atleast 1 uppercase, 1 lowercase, 1 number and 1 special character';
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                errorMaxLines: 2,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                hintText: "Password",
                                hintStyle: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                                prefixIcon: Icon(
                                  UniconsLine.lock,
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _isVisible = !_isVisible;
                                    });
                                  },
                                  icon: _isVisible
                                      ? Icon(
                                          Icons.visibility,
                                          color: Colors.black,
                                        )
                                      : Icon(
                                          Icons.visibility_off,
                                          color: Colors.grey,
                                        ),
                                ),
                              ),
                            ),
                          ),
                          SizedBoxx(h: 120.0),
                          //* Login button
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: screenheight * 0.07,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Theme.of(context).splashColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                      ),
                                      onPressed: () {
                                        if (formKey.currentState!.validate()) {
                                          GoRouter.of(context).go('/home/0');
                                        }
                                      },
                                      child: Textt(
                                          text: 'Login',
                                          size: 24.0,
                                          color: Theme.of(context).primaryColor,
                                          weight: FontWeight.bold)),
                                ),
                              )
                            ],
                          ),
                          SizedBoxx(h: 80.0),
                          //* Don't have an account
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Textt(
                                text: "Don't have an account ?",
                                color: Theme.of(context).colorScheme.primary,
                                size: 20.0,
                              )
                            ],
                          ),
                          SizedBoxx(h: 16.0),
                          //* Sign up button
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    GoRouter.of(context).go('/signup_page');
                                  },
                                  child: Textt(
                                    text: 'Sign up from here',
                                    color: Theme.of(context).splashColor,
                                    size: 20.0,
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
