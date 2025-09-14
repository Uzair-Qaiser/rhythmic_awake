import 'package:go_router/go_router.dart';
import 'package:rhythmic_awake/config/routes/route_names.dart';

import '../../../widgets/custom_btn.dart';
import 'package:flutter/material.dart';
class RecoverAcBtn extends StatelessWidget {
  const RecoverAcBtn({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomBtn(text: 'Continue', onTap: () { context.pushNamed(RouteName.otpView); },);
  }
}
