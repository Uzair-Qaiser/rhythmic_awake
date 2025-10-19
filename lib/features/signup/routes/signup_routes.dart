import 'package:go_router/go_router.dart';
import '../presentation/screens/signup_screen.dart';

class SignUpRoutes {
  static const String signUpScreen = '/signUpScreen';
  static List<GoRoute> getRoutes() {
    return [
      GoRoute(
        path: signUpScreen,
        name: signUpScreen,
        builder: (context, state) => const SignupScreen(),
      ),
    ];
  }
}