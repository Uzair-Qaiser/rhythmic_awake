import  'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rhythmic_awake/config/routes/route_names.dart';
import 'package:rhythmic_awake/view/views.dart';

final GoRouter appRouter = GoRouter(
  routes: [

    GoRoute(
      path: RouteName.login,
      name: RouteName.login,
     builder: (context, state) => const LoginView(),
    ),


  ],
  errorBuilder: (context, state) => const Scaffold(
    body: Center(child: Text("No Route Defined")),
  ),
);
