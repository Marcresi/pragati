import 'package:flutter/material.dart';
import 'package:pragati/main.dart';
import 'package:go_router/go_router.dart';

import '../Careers/College_info.dart';

class JobListPage extends StatefulWidget {
  const JobListPage({Key? key}) : super(key: key);

  @override
  State<JobListPage> createState() => JobListPageState();
}

class JobListPageState extends State<JobListPage> {
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
      body:
         Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             HeadingText(
              'Based on your Qualifications',
              Colors.white,
              24.0,
              EdgeInsets.fromLTRB(25, 20, 28, 02),
              FontWeight.w400,
              FontStyle.normal),
          HeadingText(
              'We recommend you',
              MyApp.secondary,
              24.0,
              EdgeInsets.fromLTRB(25, 2, 15, 20),
              FontWeight.w300,
              FontStyle.normal),
              HeadingText(
              'Career Path in',
              Colors.white,
              24.0,
              EdgeInsets.fromLTRB(25, 10, 28, 02),
              FontWeight.w400,
              FontStyle.normal),
              Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.23,
                  margin: EdgeInsets.only(
                      top: 10.0, bottom: 25.0, left: 25.0, right: 25.0),
                  padding: EdgeInsets.only(
                      top: 16.0, bottom: 5.0, left: 5.0, right: 5.0),
                  width: 377.0,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 18, 37, 53),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
  
                    ],
                  ),
                  child:
                      // ? Column(
                      //     children: <Widget>[
                      //       Text(
                      //         'No Colleges Found',
                      //         style: Theme.of(context).textTheme.headline6,
                      //       ),
                      //       SizedBox(height: 10),
                      //       Container(
                      //         height: 200,
                      //         child: Image.asset(
                      //           'assets/images/nature.png',
                      //           fit: BoxFit.cover,
                      //         ),
                      //       ),
                      //     ],
                      //   ):
                      GestureDetector(
                    onTap: () => context.go('/JobInfoPage'),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 45,
                        child: Image.asset(
                          'assets/images/loginman.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: HeadingText(
                        "Data Analytics Consultant",
                        Colors.white,
                        20.0,
                        EdgeInsets.fromLTRB(15, 0, 0, 0),
                        FontWeight.bold,
                        FontStyle.normal,
                      ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           HeadingText(
                              'Accenture',
                              Colors.white,
                              18.0,
                              EdgeInsets.fromLTRB(15, 5, 3, 0),
                              FontWeight.w300,
                              FontStyle.normal),
                          HeadingText(
                              'Rs 7,00,000- 14,00,000 P.A',
                              MyApp.secondary,
                              18.0,
                              EdgeInsets.fromLTRB(15, 5, 3, 0),
                              FontWeight.w400,
                              FontStyle.normal),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
            ElevatedButton(
              onPressed: () => context.go('/JobInfoPage'),
              child: const Text('Jobs Information'),
            ),
          ],
        ),
      );
  }
}
