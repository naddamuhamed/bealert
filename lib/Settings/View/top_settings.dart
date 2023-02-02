import 'package:bealert/Common_widgets/containerr.dart';
//ignore_for_file:prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:quiver/time.dart';
import 'package:swipe/swipe.dart';
import 'package:unicons/unicons.dart';
import '../../Common_widgets/textt.dart';

class TopSettings extends StatefulWidget {
  const TopSettings({super.key});

  @override
  State<TopSettings> createState() => _TopSettingsState();
}

class _TopSettingsState extends State<TopSettings> {
  // final DateFormat _dateFormatter = DateFormat.MMMEd();
  // late var months = DateFormat.M().format(DateTime.now());
  late var daysinmonth = daysInMonth(DateTime.now().year, DateTime.now().month);
  @override
  Widget build(BuildContext context) {
    //* Screen size
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    final constt = ' This is a test';
    return SafeArea(
      child: Swipe(
        onSwipeUp: () {
          GoRouter.of(context).go('/home/1');
          print('object');
        },
        //* Top yellow container
        child: Stack(
          children: [
            Containerr(
              w: screenwidth,
              h: screenheight * 0.3,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //* Your Drowsy Days
                    Expanded(
                      flex: 1,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Textt(
                            text: 'Settings',
                            font: GoogleFonts.roboto,
                            color: Theme.of(context).primaryColor,
                            size: 24.0,
                            weight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),
                    //* Number of Days in month
                    SizedBox(
                      height: screenheight * 0.02,
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Container(
                            width: screenwidth * 0.21,
                            height: screenheight * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                  image: AssetImage('assets/settings.png')),
                            ),
                          ),
                          Textt(
                            text: '$constt',
                            weight: FontWeight.bold,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 21.0),
            //   child: Containerr(
            //     decoration: BoxDecoration(
            //       color: Theme.of(context).scaffoldBackgroundColor,
            //       borderRadius: BorderRadius.only(
            //           bottomRight: Radius.circular(25),
            //           topRight: Radius.circular(25)),
            //     ),
            //     w: screenwidth * 0.35,
            //     child: Row(
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.only(left: 16.0),
            //           child: Textt(
            //             text: 'Settings',
            //             font: GoogleFonts.roboto,
            //             color: Theme.of(context).colorScheme.primary,
            //             size: 24.0,
            //             weight: FontWeight.bold,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
