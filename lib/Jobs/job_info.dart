import 'package:flutter/material.dart';
import 'package:pragati/main.dart';
import 'package:go_router/go_router.dart';

import '../Careers/College_info.dart';

class JobInfoPage extends StatefulWidget {
  const JobInfoPage({Key? key}) : super(key: key);

  @override
  State<JobInfoPage> createState() => JobInfoPageState();
}

class JobInfoPageState extends State<JobInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyApp.primaryColor,
      appBar: AppBar(
        leading: ElevatedButton(
          onPressed: () => context.go('/JobListPage'),
          child: const Icon(Icons.arrow_back),
        ),
        title: const Text(MyApp.title),
        actions: [
          IconButton(
            padding: EdgeInsets.fromLTRB(0, 0, 30, 10),
            iconSize: 35.0,
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeadingText(
                            'Data Scientist\nSpecialist',
                            Colors.white,
                            24.0,
                            EdgeInsets.fromLTRB(27, 2, 81, 02),
                            FontWeight.bold,
                            FontStyle.normal),

                        HeadingText(
                            'Accenture',
                            Colors.white,
                            20.0,
                            EdgeInsets.fromLTRB(27, 0, 81, 02),
                            FontWeight.w300,
                            FontStyle.normal),
                      ],
                    ),
                    CircleAvatar(
                      radius: 35,
                      child: Image.asset(
                        'assets/images/loginman.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      iconSize: 27,
                      icon: const Icon(Icons.shopping_bag),
                      color: MyApp.secondary,
                      onPressed: () => context.go('/CollegeInfoPage'),
                    ),
                    HeadingText(
                        '2-6 years',
                        Colors.white,
                        18.0,
                        EdgeInsets.fromLTRB(0, 0, 31, 0),
                        FontWeight.w400,
                        FontStyle.normal),
                    IconButton(
                      padding: EdgeInsets.fromLTRB(64, 0, 0, 0),
                      iconSize: 27,
                      icon: const Icon(Icons.location_on),
                      color: MyApp.secondary,
                      onPressed: () => context.go('/CollegeInfoPage'),
                    ),
                    HeadingText(
                        'New Delhi, India',
                        Colors.white,
                        18.0,
                        EdgeInsets.fromLTRB(0, 0, 31, 0),
                        FontWeight.w400,
                        FontStyle.normal),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      iconSize: 27,
                      icon: const Icon(Icons.currency_pound),
                      color: MyApp.secondary,
                      onPressed: () => context.go('/CollegeInfoPage'),
                    ),
                    HeadingText(
                        'Rs 6,00,000 - 8,50,000 P.A',
                        Colors.white,
                        18.0,
                        EdgeInsets.fromLTRB(0, 0, 31, 0),
                        FontWeight.w400,
                        FontStyle.normal),
                  ],
                ),
              ],
            ),
            HeadingText(
                'Job Description',
                Colors.white,
                20.0,
                EdgeInsets.fromLTRB(25, 35, 21, 20),
                FontWeight.bold,
                FontStyle.normal),
            HeadingText(
                'The role involves but not limited to the following: Create insights from predictive statistical modeling, mathematical knowledge, tools, and techniques to solve complex problems and deliver value Implement new predictive and prescriptive solutions based upon business needs and requirements Translate business issues into specific requirements to develop analytic solutions, and identify appropriate data to support the solution Deliver large-scale programs that integrate processes with technology to help clients achieve high performance.......Click for more',
                Colors.white,
                16.0,
                EdgeInsets.fromLTRB(22, 5, 22, 40),
                FontWeight.w400,
                FontStyle.normal),
            Container(
              height: MediaQuery.of(context).size.height * 0.69,
              margin: EdgeInsets.only(
                  top: 0.0, bottom: 25.0, left: 25.0, right: 25.0),
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
                      HeadingText(
                          'Role',
                          Colors.white,
                          20.0,
                          EdgeInsets.fromLTRB(22, 5, 0, 7),
                          FontWeight.w400,
                          FontStyle.normal),
                      HeadingText(
                          'Functional Area',
                          Colors.white,
                          20.0,
                          EdgeInsets.fromLTRB(129, 5, 0, 7),
                          FontWeight.w400,
                          FontStyle.normal),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height:80,
                        width: 120,
                        child: HeadingText(
                            'Data Scientist',
                            MyApp.secondary,
                            20.0,
                            EdgeInsets.fromLTRB(22,5, 10, 7),
                            FontWeight.bold,
                            FontStyle.normal),
                      ),
                      SizedBox(
                        height:80,
                        width: 200,
                        child: HeadingText(
                            'Data Analytics and Science',
                            MyApp.secondary,
                            20.0,
                            EdgeInsets.fromLTRB(69, 5, 10, 7),
                            FontWeight.bold,
                            FontStyle.normal),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height:100,
                        width: 150,
                        child: HeadingText(
                            'Employement Type',
                            Colors.white,
                            20.0,
                            EdgeInsets.fromLTRB(22, 35, 0, 7),
                            FontWeight.w400,
                            FontStyle.normal),
                      ),
                      HeadingText(
                          'Role Category',
                          Colors.white,
                          20.0,
                          EdgeInsets.fromLTRB(40, 0, 0, 7),
                          FontWeight.w400,
                          FontStyle.normal),
                    ],
                  ),
                  Row(
                    children: [
                      HeadingText(
                          'Permanent',
                          MyApp.secondary,
                          20.0,
                          EdgeInsets.fromLTRB(22, 0, 0, 40),
                          FontWeight.bold,
                          FontStyle.normal),
                      HeadingText(
                          'Machine\nLearning',
                          MyApp.secondary,
                          20.0,
                          EdgeInsets.fromLTRB(65, 0, 0, 40),
                          FontWeight.bold,
                          FontStyle.normal),
                    ],
                  ),
                  HeadingText(
                      'Education',
                      Colors.white,
                      20.0,
                      EdgeInsets.fromLTRB(22, 5, 0, 7),
                      FontWeight.w400,
                      FontStyle.normal),
                  HeadingText(
                      'Education\nUG:Any Graduate\nPG:Any PostGraduate',
                      MyApp.secondary,
                      20.0,
                      EdgeInsets.fromLTRB(22, 0, 112, 20),
                      FontWeight.bold,
                      FontStyle.normal),
                ],
              ),
            ),
            Center(
              child: SizedBox(
                height: 38,
                width: 320,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(MyApp.secondary),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                  ),
                  onPressed:()=>context.go('/'),
                  child: const Text(
                    'Interested',
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => context.go('/CollegeInfoPage'),
              child: const Text('College Information'),
            ),
          ],
        ),
      ),
    );
  }
}
