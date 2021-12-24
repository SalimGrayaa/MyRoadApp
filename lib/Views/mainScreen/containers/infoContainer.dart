
import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.4,
        decoration: BoxDecoration(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'How it works',
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 60,
                      height: 200,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xFFCE6A6B),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 24,
                            ),
                          ),
                          Container(
                            width: 2,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xFFCE6A6B),
                              shape: BoxShape.circle,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Icon(
                              Icons.train,
                              color: Colors.black,
                              size: 24,
                            ),
                          ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 200,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ListTile(
                                title: Text(
                                  'Search',
                                  style: Theme.of(context).textTheme.headline2!.copyWith(
                                    fontFamily: 'Poppins',
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF14005C),
                                  ),
                                ),
                                subtitle: Text(
                                  'Find flight, train, bus, ferry, rideshare or rental car info across Tunisia.',
                                  style:
                                      Theme.of(context).textTheme.subtitle2!.copyWith(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                dense: false,
                                contentPadding:
                                    EdgeInsetsDirectional.fromSTEB(
                                        0, 1, 0, 0),
                              ),
                              ListTile(
                                title: Text(
                                  'Compare',
                                  style: Theme.of(context).textTheme.headline2!.copyWith(
                                    fontFamily: 'Poppins',
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF14005C),
                                  ),
                                ),
                                subtitle: Text(
                                  'Explore the fastest and cheapest routes from over 5000 operators than 24 countries.',
                                  style:
                                     Theme.of(context).textTheme.subtitle1!.copyWith(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                dense: false,
                                contentPadding:
                                    EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
  }
}

