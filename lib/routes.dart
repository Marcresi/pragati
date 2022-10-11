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
            child: const UpdatePage(),
          ),
        ),
        GoRoute(
          path: 'CollegeListPage',
          builder: (BuildContext context, GoRouterState state) =>
              CollegeListPage(),
        ),
        GoRoute(
          path: 'JobListPage',
          builder: (BuildContext context, GoRouterState state) =>
              const JobListPage(),
        ),
        GoRoute(
          path: 'JobInfoPage',
          builder: (BuildContext context, GoRouterState state) =>
              const JobInfoPage(),
        ),
        GoRoute(
          path: 'CollegeInfoPage',
          builder: (BuildContext context, GoRouterState state) =>
              const CollegeInfoPage(),
        ),
        GoRoute(
          path: 'CareerInfoPage',
          builder: (BuildContext context, GoRouterState state) =>
              const CareerInfoPage(),
        ),
        GoRoute(
          path: 'CarrerPathPage',
          builder: (BuildContext context, GoRouterState state) =>
              const CareerPathPage(),
        ),
        GoRoute(
          path: 'MastersInfoPage',
          builder: (BuildContext context, GoRouterState state) =>
              const MastersInfoPage(),
        ),
        GoRoute(
          path: 'MastersListPage',
          builder: (BuildContext context, GoRouterState state) =>
              const MastersListPage(),
        ),
        GoRoute(
          path: 'JobListPage',
          builder: (BuildContext context, GoRouterState state) =>
              const JobListPage(),
        ),
      ],
    ),
  ],
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: ErrorPage(exception: state.error),
  ),
);
