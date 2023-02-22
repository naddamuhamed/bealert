// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors

import 'package:bealert/Common_widgets/formbuttons.dart';
import 'package:bealert/Common_widgets/formfield.dart';
import 'package:bealert/Common_widgets/scaffoldd.dart';
import 'package:bealert/Common_widgets/sizedboxx.dart';
import 'package:bealert/Common_widgets/textt.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bealert/Common_widgets/containerr.dart';
import 'package:unicons/unicons.dart';

class SignUp_Page extends StatefulWidget {
  const SignUp_Page({super.key});

  @override
  State<SignUp_Page> createState() => _SignUp_PageState();
}

class _SignUp_PageState extends State<SignUp_Page> {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffoldd(
      bcolor: Theme.of(context).colorScheme.secondary,

        body: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Containerr(
          w: screenwidth,
          h: screenheight * 0.85,
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
                    Textt(
                      text: 'SIGN UP',
                      size: 48.0,
                      font: GoogleFonts.righteous,
                    ),
                    SizedBoxx(h: 40.0),
                    FormFieldd(hint: 'Username', icon: UniconsLine.user),
                    SizedBoxx(),
                    FormFieldd(hint: 'Email', icon: UniconsLine.envelope),
                    SizedBoxx(),
                    FormFieldd(
                      hint: 'Password',
                      icon: UniconsLine.lock,
                      sicon: UniconsLine.eye,
                      obsecured: true,
                    ),
                    SizedBoxx(),
                    FormFieldd(
                      hint: 'Confirm Password',
                      icon: UniconsLine.lock,
                      sicon: UniconsLine.eye,
                      obsecured: true,
                    ),
                    SizedBoxx(h: 32.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FormButtons(
                          bcolor: Theme.of(context).splashColor,
                          tcolor: Theme.of(context).primaryColor,
                          text: 'Next',
                          redirect: '/your_info_page',
                          border: Border.all(
                              width: 6.0, color: Theme.of(context).splashColor),
                          icon: UniconsLine.angle_right_b,
                          icolor: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ],
                    ),
                    SizedBoxx(h: 80.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Textt(
                          text: 'Already have an account?',
                          color: Theme.of(context).colorScheme.primary,
                          size: 20.0,
                        )
                      ],
                    ),
                    SizedBoxx(h: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () => GoRouter.of(context).go('/login_page'),
                            child: Textt(
                              text: 'Login from here',
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
      ],
    ));
  }
}
