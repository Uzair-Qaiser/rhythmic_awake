import 'package:go_router/go_router.dart';
import 'package:rhythmic_awake/features/recover_account/presentation/screens/otp_screen.dart';
import 'package:rhythmic_awake/features/recover_account/presentation/screens/recover_account_screen.dart';
import 'package:rhythmic_awake/features/recover_account/presentation/screens/reset_pass_screen.dart';

class RecoverAcRoutes {
  static const String recoverAccount = '/recoverAccount';
  static const String otpScreen = '/otpScreen';
  static const String resetPassScreen = '/resetPassScreen';
  static List<GoRoute> getRoutes() {
    return [
      GoRoute(
        path: recoverAccount,
        name: recoverAccount,
        builder: (context, state) => const RecoverAcScreen(),
      ),
      GoRoute(
        path: otpScreen,
        name: otpScreen,
        builder: (context, state) => const OtpScreen(),
      ), GoRoute(
        path: resetPassScreen,
        name: resetPassScreen,
        builder: (context, state) => const ResetPassScreen(),
      ),
    ];
  }
}