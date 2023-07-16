import 'package:flutter/material.dart';
import 'package:pragati/main.dart';
import 'package:go_router/go_router.dart';
import '../api_service.dart';

import '../model/apimodel.dart';

class CollegeListPage extends StatefulWidget {
  const CollegeListPage({Key? key}) : super(key: key);

  @override
  State<CollegeListPage> createState() => _CollegeListPageState();
}

class _CollegeListPageState extends State<CollegeListPage> {
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
    // print(userModel![0].name);
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
        children: [
          HeadingText(
              'College for',
              Colors.white,
              24.0,
              EdgeInsets.fromLTRB(0, 40, 248, 02),
              FontWeight.w400,
              FontStyle.normal),
          HeadingText(
              'Information Science',
              MyApp.secondary,
              24.0,
              EdgeInsets.fromLTRB(0, 2, 150, 40),
              FontWeight.w400,
              FontStyle.normal),
          Expanded(
            child: ListView.builder(
              itemCount: collegeList!.length,
              itemBuilder: (context, index) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.18,
                  margin: EdgeInsets.only(
                      top: 10.0, bottom: 25.0, left: 25.0, right: 25.0),
                  padding: EdgeInsets.only(
                      top: 16.0, bottom: 5.0, left: 5.0, right: 5.0),
                  width: 377.0,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(10, 30, 46, .95),
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1.0,
                        blurRadius: 3.0,
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
                    onTap: () => context.go('/CollegeInfoPage'),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 40,
                        child: Image.asset(
                          'assets/images/IIT_Madras_Logo.svg.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: HeadingText(
                        collegeList![index].name,
                        Colors.white,
                        20.0,
                        EdgeInsets.fromLTRB(15, 0, 0, 0),
                        FontWeight.bold,
                        FontStyle.normal,
                      ),
                      subtitle: Row(
                        children: [
                          IconButton(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            iconSize: 35.0,
                            icon: const Icon(Icons.location_on_outlined),
                            color: MyApp.secondary,
                            onPressed: () => context.go('/CollegeInfoPage'),
                          ),
                          HeadingText(
                              collegeList![index].location,
                              Colors.white,
                              14.0,
                              EdgeInsets.fromLTRB(0, 0, 23, 0),
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
            onPressed: () => context.go('/CollegeInfoPage'),
            child: const Text('College Information'),
          ),
        ],
      ),
    );
    // Scaffold(
    //   backgroundColor: MyApp.backgroundColor,
    //   appBar: AppBar(
    //     title: const Text(MyApp.title),
    //     leading: ElevatedButton(
    //       onPressed: () => context.go('/'),
    //       child: const Icon(Icons.arrow_back),
    //     ),
    //   ),
    //   body: Column(
    //     children: <Widget>[
    //       Text(
    //         "College for",
    //         selectionColor: secondaryColor,
    //         style: Theme.of(context).textTheme.headline6,
    //       ),
    //       Text(
    //         "Information Science",
    //         style: Theme.of(context).textTheme.headline6,
    //       ),
    //       Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: <Widget>[
    //           ElevatedButton(
    //             onPressed: () => context.go('/CollegeInfoPage'),
    //             child: const Text('College Information'),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
  }
}

class HeadingText extends StatefulWidget {
  final Color colors;
  final String text;
  final EdgeInsetsGeometry padding;
  final double fontSize;
  final FontWeight fontWeight;
  final FontStyle fontStyle;

  const HeadingText(this.text, this.colors, this.fontSize, this.padding,
      this.fontWeight, this.fontStyle);

  @override
  State<HeadingText> createState() => _HeadingTextState();
}

class _HeadingTextState extends State<HeadingText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      child: Text(
        widget.text,
        // style: Theme.of(context).textTheme.headline6,
        style: Theme.of(context).textTheme.headline6?.merge(
              TextStyle(
                fontSize: widget.fontSize,
                fontWeight: widget.fontWeight,
                color: widget.colors,
                fontStyle: widget.fontStyle,
              ),
            ),
      ),
    );
  }
}
