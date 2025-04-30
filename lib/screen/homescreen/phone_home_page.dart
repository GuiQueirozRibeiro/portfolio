import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:portfolio/consts/data.dart';
import 'package:portfolio/providers/current_state.dart';

class PhoneHomeScreen extends StatelessWidget {
  const PhoneHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CurrentState currentState = Provider.of<CurrentState>(
      context,
      listen: false,
    );

    return Container(
      padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
      child: Column(
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.start,
            children: List.generate(
              apps.length,
              (index) => Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        if (apps[index].link != null) {
                          currentState.launchInBrowser(apps[index].link!);
                        } else if (apps[index].screen != null) {
                          currentState.changePhoneScreen(
                            apps[index].screen!,
                            false,
                            titlee: apps[index].title,
                          );
                        }
                      },
                      borderRadius: BorderRadius.circular(
                        currentState.currentDevice == Devices.ios.iPhone13
                            ? 8
                            : 100,
                      ),
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: apps[index].color,
                          borderRadius: BorderRadius.circular(
                            currentState.currentDevice == Devices.ios.iPhone13
                                ? 8
                                : 100,
                          ),
                        ),
                        child: Center(
                          child:
                              apps[index].assetPath != null
                                  ? SvgPicture.asset(
                                    apps[index].assetPath!,
                                    width: 25,
                                    height: 25,
                                  )
                                  : Icon(
                                    apps[index].icon,
                                    size: 25,
                                    color: Colors.black,
                                  ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: 60,
                      child: Center(
                        child: Text(
                          apps[index].title,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: GoogleFonts.openSans(
                            fontSize: 11,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
