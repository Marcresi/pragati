import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'error_page.dart';
import 'Home/home_page.dart';
import 'Home/Imp_Updates.dart';
import 'Careers/Career_paths.dart';
import 'Careers/College_list.dart';
import 'Careers/College_info.dart';
import 'Careers/Career_info_page.dart';
import 'Jobs/job_info.dart';
import 'Jobs/job_list.dart';
import 'PostGraduate/Masters_info.dart';
import 'PostGraduate/Masters_list.dart';
import 'user_info.dart';

// import 'welcome_page.dart';
int flag = 0;

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const HomePage(),
      routes: <GoRoute>[
        GoRoute(
          path: 'UpdatePage',
          pageBuilder: (BuildContext context, GoRouterState state) =>
              MaterialPage(
            child: UpdatePage(),
          ),
        ),
        GoRoute(
          path: 'UserInfoPage',
          builder: (BuildContext context, GoRouterState state) =>
              UserInfoPage(),
        ),
        GoRoute(
          path: 'CollegeListPage',
          builder: (BuildContext context, GoRouterState state) =>
              CollegeListPage(),
        ),
        GoRoute(
          path: 'JobListPage',
          builder: (BuildContext context, GoRouterState state) => JobListPage(),
        ),
        GoRoute(
          path: 'JobInfoPage',
          builder: (BuildContext context, GoRouterState state) => JobInfoPage(),
        ),
        GoRoute(
          path: 'CollegeInfoPage',
          builder: (BuildContext context, GoRouterState state) =>
              CollegeInfoPage(),
        ),
        GoRoute(
          path: 'CareerInfoPage',
          builder: (BuildContext context, GoRouterState state) =>
              CareerInfoPage(),
        ),
        GoRoute(
          path: 'CareerPathPage',
          builder: (BuildContext context, GoRouterState state) =>
              CareerPathPage(),
        ),
        GoRoute(
          path: 'MastersInfoPage',
          builder: (BuildContext context, GoRouterState state) =>
              MastersInfoPage(),
        ),
        GoRoute(
          path: 'MastersListPage',
          builder: (BuildContext context, GoRouterState state) =>
              MastersListPage(),
        ),
        GoRoute(
          path: 'JobListPage',
          builder: (BuildContext context, GoRouterState state) => JobListPage(),
        ),
      ],
    ),
  ],
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: ErrorPage(exception: state.error),
  ),
);
