
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rhythmic_awake/features/navigation/routes/navigation_routes.dart';

import '../../../../shared/widgets/custom_btn.dart';
class LoginBtn extends StatelessWidget {
  const LoginBtn({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomBtn(text: 'Get Started', onTap: () {
      context.goNamed(NavigationRoutes.navigationScreen);
    },);
  }
}
