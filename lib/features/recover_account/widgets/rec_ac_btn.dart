import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:rhythmic_awake/features/recover_account/routes/recover_ac_routes.dart';

import '../../../shared/widgets/custom_btn.dart';
class RecoverAcBtn extends StatelessWidget {
  const RecoverAcBtn({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomBtn(text: 'Continue', onTap: () { context.pushNamed(RecoverAcRoutes.otpScreen); },);
  }
}
