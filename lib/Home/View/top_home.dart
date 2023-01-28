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

class TopHome extends StatefulWidget {
  const TopHome({super.key});

  @override
  State<TopHome> createState() => _TopHomeState();
}

class _TopHomeState extends State<TopHome> {
  // final DateFormat _dateFormatter = DateFormat.MMMEd();
  // late var months = DateFormat.M().format(DateTime.now());
  late var daysinmonth = daysInMonth(DateTime.now().year, DateTime.now().month);
  @override
  Widget build(BuildContext context) {
    //* Screen size
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Swipe(
        onSwipeUp: () {
          GoRouter.of(context).go('/home/1');
          print('object');
        },
        //* Top yellow container
        child: Containerr(
          w: screenwidth,
          h: screenheight * 0.30,
          decoration: BoxDecoration(
            color: Theme.of(context).splashColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
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
                        text: 'Your Drowsy Days',
                        font: GoogleFonts.roboto,
                        color: Theme.of(context).primaryColor,
                        size: 24.0,
                      ),
                    ],
                  ),
                ),
                //* Number of Days in month
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Textt(
                            text: '$daysinmonth',
                            font: GoogleFonts.righteous,
                            color: Theme.of(context).primaryColor,
                            size: 96.0,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 32.0, 8.0, 8.0),
                        child: Column(
                          children: [
                            Textt(
                              text: '/$daysinmonth',
                              font: GoogleFonts.righteous,
                              color: Theme.of(context).primaryColor,
                              size: 64.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Textt(
                            text: 'View History',
                            font: GoogleFonts.roboto,
                            color: Theme.of(context).primaryColor,
                            size: 20.0,
                          ),
                          Icon(
                            UniconsLine.angle_up,
                            color: Theme.of(context).primaryColor,
                            size: 32.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
