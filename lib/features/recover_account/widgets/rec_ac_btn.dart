import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:rhythmic_awake/features/login/routes/login_routes.dart';
import 'package:rhythmic_awake/features/recover_account/routes/recover_ac_routes.dart';

import '../../../shared/widgets/custom_btn.dart';

class RecoverAcBtn extends StatelessWidget {
  const RecoverAcBtn({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return CustomBtn(
      text: text,
      onTap: () {
        if (text == "Submit") {
          context.pushNamed(LogInRoutes.logInScreen);
        } else {
          context.pushNamed(RecoverAcRoutes.resetPassScreen);
        }
      },
    );
  }
}
