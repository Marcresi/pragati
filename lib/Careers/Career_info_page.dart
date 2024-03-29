import 'package:flutter/material.dart';
import 'package:pragati/main.dart';
import 'package:go_router/go_router.dart';

import 'College_info.dart';

class CareerInfoPage extends StatefulWidget {
  const CareerInfoPage({Key? key}) : super(key: key);

  @override
  State<CareerInfoPage> createState() => _CareerInfoPageState();
}

class _CareerInfoPageState extends State<CareerInfoPage> {
  List<String> skillList = ['Linux', 'AI/Ml', 'Firewall', 'Networking'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyApp.primaryColor,
      appBar: AppBar(
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
            HeadingText(
                'Information Science',
                Colors.white,
                42.0,
                EdgeInsets.fromLTRB(21.0, 22, 0, 9.0),
                FontWeight.bold,
                FontStyle.normal),
            HeadingText(
                'Job Statistics',
                Colors.white,
                22.0,
                EdgeInsets.fromLTRB(21.0, 12, 0, 9.0),
                FontWeight.w400,
                FontStyle.normal),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 12, 0, 12),
                  child: Container(
                    width: 120,
                    height: 120,
                    child: CircularProgressIndicator(
                      value: 0.4,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(MyApp.secondary),
                      backgroundColor: Colors.white,
                      strokeWidth: 10.0,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingText(
                        '40%',
                        MyApp.secondary,
                        51.0,
                        EdgeInsets.fromLTRB(25.0, 2, 0, 2.0),
                        FontWeight.bold,
                        FontStyle.normal),
                    HeadingText(
                        'increase in',
                        Colors.white,
                        22.0,
                        EdgeInsets.fromLTRB(25.0, 0, 0, 2.0),
                        FontWeight.bold,
                        FontStyle.normal),
                    HeadingText(
                        '2022',
                        Color.fromARGB(255, 29, 73, 109),
                        45.0,
                        EdgeInsets.fromLTRB(25.0, 0, 0, 2.0),
                        FontWeight.bold,
                        FontStyle.normal),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 31, 35, 1),
              child: LinearProgressIndicator(
                value: 0.4,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                backgroundColor: Colors.white,
              ),
            ),
            HeadingText(
                '2021',
                Colors.white,
                17.0,
                EdgeInsets.fromLTRB(25.0, 0, 0, 9.0),
                FontWeight.w400,
                FontStyle.normal),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 11, 35, 1.0),
              child: LinearProgressIndicator(
                value: 0.7,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                backgroundColor: Colors.white,
              ),
            ),
            HeadingText(
                '2020',
                Colors.white,
                17.0,
                EdgeInsets.fromLTRB(25.0, 0, 0, 9.0),
                FontWeight.w400,
                FontStyle.normal),
            HeadingText(
                'What is Information Science ?',
                Colors.white,
                22.0,
                EdgeInsets.fromLTRB(21.0, 17, 115, 9.0),
                FontWeight.w400,
                FontStyle.normal),
            HeadingText(
                'Information science is an interdisciplinary field that deals with the study, management, and representation of information and data. It encompasses a wide range of topics, including information retrieval, data mining, natural language processing, knowledge representation, human-computer interaction, and more.',
                Colors.white,
                16.0,
                EdgeInsets.fromLTRB(22, 5, 22, 20),
                FontWeight.w400,
                FontStyle.normal),
            Container(
              height: MediaQuery.of(context).size.height * 0.24,
              margin: EdgeInsets.only(
                  top: 0.0, bottom: 5.0, left: 25.0, right: 25.0),
              padding: EdgeInsets.only(
                  top: 16.0, bottom: 5.0, left: 0.0, right: 5.0),
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
                          'Average',
                          Colors.white,
                          20.0,
                          EdgeInsets.fromLTRB(22, 5, 94, 7),
                          FontWeight.w400,
                          FontStyle.normal),
                      HeadingText(
                          'Estimated Take',
                          Colors.white,
                          20.0,
                          EdgeInsets.fromLTRB(0, 5, 20, 7),
                          FontWeight.w400,
                          FontStyle.normal),
                    ],
                  ),
                  Row(
                    children: [
                      HeadingText(
                          'Annual Salary',
                          Colors.white,
                          20.0,
                          EdgeInsets.fromLTRB(22, 0, 47, 7),
                          FontWeight.w400,
                          FontStyle.normal),
                      HeadingText(
                          'Home Salary',
                          Colors.white,
                          20.0,
                          EdgeInsets.fromLTRB(0, 0, 20, 7),
                          FontWeight.w400,
                          FontStyle.normal),
                    ],
                  ),
                  Row(
                    children: [
                      HeadingText(
                          'Rs 3.2 LPA',
                          MyApp.secondary,
                          20.0,
                          EdgeInsets.fromLTRB(22, 10, 0, 40),
                          FontWeight.bold,
                          FontStyle.normal),
                      HeadingText(
                          'Rs 20,000/ month',
                          MyApp.secondary,
                          20.0,
                          EdgeInsets.fromLTRB(59, 10, 0, 40),
                          FontWeight.bold,
                          FontStyle.normal),
                    ],
                  ),
                ],
              ),
            ),
            HeadingText(
                'Skills',
                Colors.white,
                26.0,
                EdgeInsets.fromLTRB(34.0, 12, 0, 29.0),
                FontWeight.w400,
                FontStyle.normal),
            Container(
              height: 172,
              width: 400,
              child: ListView.builder(
                itemCount: skillList.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    margin: EdgeInsets.only(
                        top: 1.0, bottom: 1.0, left: 25.0, right: 25.0),
                    padding: EdgeInsets.only(
                        top: 16.0, bottom: 1.0, left: 124.0, right: 5.0),
                    width: 27.0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(240, 19, 53, 80),
                      borderRadius: BorderRadius.circular(10.0),
                    
                    boxShadow: [
                      BoxShadow(
                        color: MyApp.primaryColor,
                        spreadRadius: 1.0,
                        blurRadius: 3.0,
                      ),
                    ],),
                    child: Text(
                      skillList[index],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(44,42, 0, 44),
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
                  onPressed: () => {},
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
          ],
        ),
      ),
    );
  }
}
