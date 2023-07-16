import 'package:flutter/material.dart';
import 'package:pragati/main.dart';
import 'package:go_router/go_router.dart';

import '../api_service.dart';
import '../model/apimodel.dart';
import 'College_info.dart';

class CareerPathPage extends StatefulWidget {
  const CareerPathPage({Key? key}) : super(key: key);

  @override
  State<CareerPathPage> createState() => _CareerPathPageState();
}

class _CareerPathPageState extends State<CareerPathPage> {
  late List<PragatiCollege>? collegeList = [];

  var isLoaded = false;
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    collegeList = (await apiCollege().getCollege());
    if (collegeList != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Color secondaryColor = Theme.of(context).colorScheme.secondary;
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadingText(
              'Based on your Interest',
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
              EdgeInsets.fromLTRB(25, 2, 15, 20),
              FontWeight.w300,
              FontStyle.normal),
          Expanded(
            child: ListView.builder(
              itemCount: collegeList!.length,
              itemBuilder: (context, index) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.32,
                  margin: EdgeInsets.only(
                      top: 10.0, bottom: 25.0, left: 25.0, right: 24.0),
                  padding: EdgeInsets.only(
                      top: 3.0, bottom: 5.0, left: 2.0, right: 5.0),
                  width: 377.0,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(110, 18, 37, 53),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(185, 18, 37, 53),
                        spreadRadius: 1.0,
                      ),
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
                    onTap: () => context.go('/CareerInfoPage'),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            HeadingText(
                                'Information Science',
                                Colors.white,
                                24.0,
                                EdgeInsets.fromLTRB(5, 0, 28, 02),
                                FontWeight.w400,
                                FontStyle.normal),
                            IconButton(
                              padding: EdgeInsets.fromLTRB(55, 0, 0, 0),
                              iconSize: 45.0,
                              icon: const Icon(Icons.add),
                              color: MyApp.secondary,
                              onPressed: () => context.go('/CareerInfoPage'),
                            ),
                          ],
                        ),
                        HeadingText(
                            '40% increase in jobs.',
                            MyApp.secondary,
                            18.0,
                            EdgeInsets.fromLTRB(5, 10, 28, 02),
                            FontWeight.w300,
                            FontStyle.normal),
                        HeadingText(
                            collegeList![index].information.length > 221
                                ? '${collegeList![index].information.substring(0, 221)}....'
                                : collegeList![index].information,
                            Colors.white,
                            16.0,
                            EdgeInsets.fromLTRB(5, 10, 23, 10),
                            FontWeight.w300,
                            FontStyle.normal),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () => context.go('/CareerInfoPage'),
            child: const Text('Career Information'),
          )
        ],
      ),
    );
  }
}
