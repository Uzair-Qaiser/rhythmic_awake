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
    GoRoute(
      path: RouteName.signup,
      name: RouteName.signup,
      builder: (context, state) => const SignupView(),
    ),
    GoRoute(
      path: RouteName.recoverAc,
      name: RouteName.recoverAc,
      builder: (context, state) => const RecoverAcView(),
    ),

    GoRoute(
      path: RouteName.otpView,
      name: RouteName.otpView,
      builder: (context, state) => const OtpView(),
    ),

  ],
  errorBuilder: (context, state) => const Scaffold(
    body: Center(child: Text("No Route Defined")),
  ),
);
