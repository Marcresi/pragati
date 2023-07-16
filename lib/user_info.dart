import 'dart:ffi';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:pragati/main.dart';
import 'package:go_router/go_router.dart';

import 'Careers/College_list.dart';

class UserInfoPage extends StatefulWidget {
  const UserInfoPage({Key? key}) : super(key: key);

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  List<bool> isSelected = [true, false, false, false];

  List<DropdownMenuItem> items = [];
  List<int> selectedItems = [];

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeadingText(
                'User Details',
                Colors.white,
                24.0,
                EdgeInsets.fromLTRB(25, 40, 248, 02),
                FontWeight.w400,
                FontStyle.normal),
            HeadingText(
                'Name',
                Colors.white,
                24.0,
                EdgeInsets.fromLTRB(25, 20, 248, 02),
                FontWeight.w300,
                FontStyle.normal),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 20, 25, 02),
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
                    labelText: 'Name',
                    labelStyle:
                        TextStyle(color: Colors.white38, letterSpacing: 1.3)),
              ),
            ),
            HeadingText(
                'Email Address',
                Colors.white,
                24.0,
                EdgeInsets.fromLTRB(25, 20, 28, 02),
                FontWeight.w300,
                FontStyle.normal),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 20, 25, 02),
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
                    labelText: 'Email',
                    labelStyle:
                        TextStyle(color: Colors.white38, letterSpacing: 1.3)),
              ),
            ),
            HeadingText(
                'Location',
                Colors.white,
                24.0,
                EdgeInsets.fromLTRB(25, 20, 248, 02),
                FontWeight.w300,
                FontStyle.normal),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 20, 25, 02),
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
                    labelText: 'Location',
                    labelStyle:
                        TextStyle(color: Colors.white38, letterSpacing: 1.3)),
              ),
            ),
            HeadingText(
              'How do you describe yourself best as',
              Colors.white,
              24.0,
              EdgeInsets.fromLTRB(25, 32, 28, 02),
              FontWeight.w300,
              FontStyle.normal,
            ),
            Container(
              child: ToggleButtons(
                direction: Axis.vertical,
                isSelected: isSelected,
                fillColor: Colors.white,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.13,
                    margin: EdgeInsets.only(
                        top: 20.0, bottom: 25.0, left: 25.0, right: 25.0),
                    padding: EdgeInsets.only(
                        top: 18.0, bottom: 25.0, left: 27.0, right: 1.0),
                    width: 157.0,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(10, 30, 46, .95),
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                          color: MyApp.secondary,
                          spreadRadius: 1.0,
                          blurRadius: 3.0,
                        ),
                      ],
                    ),
                    child: Text(
                      'High School Student',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.13,
                    margin: EdgeInsets.only(
                        top: 10.0, bottom: 25.0, left: 25.0, right: 25.0),
                    padding: EdgeInsets.only(
                        top: 18.0, bottom: 5.0, left: 27.0, right: 1.0),
                    width: 157.0,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(10, 30, 46, .95),
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                          color: MyApp.secondary,
                          spreadRadius: 1.0,
                          blurRadius: 3.0,
                        ),
                      ],
                    ),
                    child: Text(
                      'Graduate Student',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.13,
                    margin: EdgeInsets.only(
                        top: 10.0, bottom: 25.0, left: 25.0, right: 25.0),
                    padding: EdgeInsets.only(
                        top: 18.0, bottom: 5.0, left: 27.0, right: 1.0),
                    width: 157.0,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(10, 30, 46, .95),
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                          color: MyApp.secondary,
                          spreadRadius: 1.0,
                          blurRadius: 3.0,
                        ),
                      ],
                    ),
                    child: Text(
                      'Post Graduate Student',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.13,
                    margin: EdgeInsets.only(
                        top: 10.0, bottom: 25.0, left: 25.0, right: 25.0),
                    padding: EdgeInsets.only(
                        top: 18.0, bottom: 5.0, left: 27.0, right: 1.0),
                    width: 157.0,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(10, 30, 46, .95),
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                          color: MyApp.secondary,
                          spreadRadius: 1.0,
                          blurRadius: 3.0,
                        ),
                      ],
                    ),
                    child: Text(
                      'Looking for Jobs',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ),
                ],
                onPressed: (int newIndex) {
                  setState(() {
                    for (int i = 0; i < isSelected.length; i++) {
                      if (i == newIndex) {
                        isSelected[i] = true;
                      } else {
                        isSelected[i] = false;
                      }
                    }
                  });
                },
              ),
            ),
            HeadingText(
                'Interested Subjects',
                Colors.white,
                24.0,
                EdgeInsets.fromLTRB(25, 20, 28, 02),
                FontWeight.w300,
                FontStyle.normal),
            Container(
              height: MediaQuery.of(context).size.height * 0.08,
              margin: EdgeInsets.only(
                  top: 25.0, bottom: 16.0, left: 25.0, right: 20.0),
              padding:
                  EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
              width: 362.0,
              decoration: BoxDecoration(
                // color: Color.fromRGBO(10, 30, 46, .95),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: MyApp.secondary,
                    spreadRadius: 3.0,
                  ),
                ],
              ),
              child: DropdownSearch<String>.multiSelection(
                items: ["AI/ML", "Blockchain", "CSS", 'Html'],
                popupProps: PopupPropsMultiSelection.modalBottomSheet(
                  showSelectedItems: true,
                  showSearchBox: true,
                  // disabledItemFn: (String s) => s.startsWith('I'),
                ),
                onChanged: print,
                selectedItems: ["Html"],
              ),
            ),
            HeadingText(
                'Skills',
                Colors.white,
                24.0,
                EdgeInsets.fromLTRB(25, 20, 28, 02),
                FontWeight.w300,
                FontStyle.normal),
            Container(
              height: MediaQuery.of(context).size.height * 0.08,
              margin: EdgeInsets.only(
                  top: 25.0, bottom: 45.0, left: 25.0, right: 20.0),
              padding:
                  EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
              width: 362.0,
              decoration: BoxDecoration(
                // color: Color.fromRGBO(10, 30, 46, .95),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: MyApp.secondary,
                    spreadRadius: 3.0,
                  ),
                ],
              ),
              child: DropdownSearch<String>.multiSelection(
                items: ["AI/ML", "Blockchain", "CSS", 'Html'],
                popupProps: PopupPropsMultiSelection.modalBottomSheet(
                  showSelectedItems: true,
                  showSearchBox: true,
                  // disabledItemFn: (String s) => s.startsWith('I'),
                ),
                onChanged: print,
                selectedItems: ["Html"],
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
                  onPressed: () => {},
                  child: const Text(
                    'Continue',
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
