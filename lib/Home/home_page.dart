import 'package:flutter/material.dart';
import 'package:pragati/main.dart';
import 'package:go_router/go_router.dart';

import '../Careers/College_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyApp.primaryColor,
      appBar: AppBar(
        title: const Text(MyApp.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Container(
              height: MediaQuery.of(context).size.height * 0.42,
              margin: EdgeInsets.only(
                  top: 11.0, bottom: 5.0, left: 21.0, right: 21.0),
              padding: EdgeInsets.only(
                  top: 16.0, bottom: 5.0, left: 5.0, right: 5.0),
              width: 377.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(10, 30, 46, 0.6),
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.fromLTRB(11, 6, 12, 20),
                         child: CircleAvatar(
                              radius: 35,
                              child: Image.asset(
                                'assets/images/loginman2.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                       ),
                        Column(
                    children: [
                      HeadingText(
                          'Welcome',
                          MyApp.secondary,
                          22.0,
                          EdgeInsets.fromLTRB(6.0, 0, 04, 9.0),
                          FontWeight.w400,
                          FontStyle.normal),
                      HeadingText(
                          'John Doe',
                          Colors.white,
                          22.0,
                          EdgeInsets.fromLTRB(0.0, 2, 0, 9.0),
                          FontWeight.w400,
                          FontStyle.normal),
                    ],
                  ),
                     ],
                   ),
                  HeadingText(
                      'Based on your interests we found ',
                      Colors.white,
                      22.0,
                      EdgeInsets.fromLTRB(6.0, 12, 28, 9.0),
                      FontWeight.w300,
                      FontStyle.normal),
                  Row(
                    children: [
                      HeadingText(
                          '50+',
                          MyApp.secondary,
                          20.0,
                          EdgeInsets.fromLTRB(6.0, 12, 04, 9.0),
                          FontWeight.w300,
                          FontStyle.normal),
                      HeadingText(
                          'Jobs in your location  ',
                          Colors.white,
                          20.0,
                          EdgeInsets.fromLTRB(0.0, 12, 0, 9.0),
                          FontWeight.w300,
                          FontStyle.normal),
                    ],
                  ),
                  Row(
                    children: [
                      HeadingText(
                          '30+',
                        MyApp.secondary,
                          20.0,
                          EdgeInsets.fromLTRB(6.0, 12, 04, 9.0),
                          FontWeight.w300,
                          FontStyle.normal),
                      HeadingText(
                          'Best Colleges best for you',
                          Colors.white,
                          20.0,
                          EdgeInsets.fromLTRB(0.0, 12, 0, 9.0),
                          FontWeight.w300,
                          FontStyle.normal),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(21, 20, 35, 12),
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: MyApp.secondary, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: MyApp.secondary),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(99, 18, 37, 53),
                    labelText: 'Explore More',
                    labelStyle:
                        TextStyle(color: Colors.white38, letterSpacing: 1.3)),
              ),
            ),
            HeadingText(
                'Resources for you ',
                Colors.white,
                24.0,
                EdgeInsets.fromLTRB(24.0, 12, 28, 9.0),
                FontWeight.w400,
                FontStyle.normal),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(21, 11.0, 11.0, 11.0),
                      child: SizedBox(
                        height: 120,
                        width: 160,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                MyApp.primaryColor),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(color: MyApp.secondary)),
                            ),
                          ),
                          onPressed: () => context.go('/CollegeListPage'),
                          child: const Text(
                            'Colleges For You',
                            style: TextStyle(fontSize: 24.0),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(11, 11.0, 11.0, 11.0),
                      child: SizedBox(
                        height: 120,
                        width: 160,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                MyApp.primaryColor),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(color: MyApp.secondary)),
                            ),
                          ),
                          onPressed: () => context.go('/UpdatePage'),
                          child: const Text(
                            'Important Updates',
                            style: TextStyle(fontSize: 24.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(21, 11.0, 11.0, 11.0),
                      child: SizedBox(
                        height: 120,
                        width: 160,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                MyApp.primaryColor),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(color: MyApp.secondary)),
                            ),
                          ),
                          onPressed: () => context.go('/JobListPage'),
                          child: const Text(
                            'Find Jobs',
                            style: TextStyle(fontSize: 24.0),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(11, 11.0, 11.0, 11.0),
                      child: SizedBox(
                        height: 120,
                        width: 160,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                MyApp.primaryColor),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(color: MyApp.secondary)),
                            ),
                          ),
                          onPressed: () => context.go('/CareerPathPage'),
                          child: const Text(
                            'Career Information',
                            style: TextStyle(fontSize: 24.0),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 160,
                    //   width: 160,
                    //   child: ElevatedButton(
                    //     onPressed: () => context.go('/CareerPathPage'),
                    //     child: const Text('Career Information'),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () => context.go('/UserInfoPage'),
              child: const Text('UserInfo'),
            ),
          ],
        ),
      ),
    );
  }
}
