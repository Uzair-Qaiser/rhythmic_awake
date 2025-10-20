import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rhythmic_awake/features/alarms/routes/alarm_routes.dart';
import 'package:rhythmic_awake/features/calendar/routes/calendar_routes.dart';
import 'package:rhythmic_awake/features/login/routes/login_routes.dart';
import 'package:rhythmic_awake/features/recover_account/routes/recover_ac_routes.dart';
import 'package:rhythmic_awake/features/signup/routes/signup_routes.dart';
import '../../features/navigation/routes/navigation_routes.dart';


final GoRouter appRouter = GoRouter(
  routes: [
  ...LogInRoutes.getRoutes(),
  ...SignUpRoutes.getRoutes(),
  ...RecoverAcRoutes.getRoutes(),
  ...NavigationRoutes.getRoutes(),
  ...AlarmRoutes.getRoutes(),
  ...CalendarRoutes.getRoutes(),
  ],
  errorBuilder: (context, state) => const Scaffold(
    body: Center(child: Text("No Route Defined")),
  ),
);