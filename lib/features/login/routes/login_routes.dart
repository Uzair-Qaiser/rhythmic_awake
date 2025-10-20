import 'package:go_router/go_router.dart';
import 'package:rhythmic_awake/features/login/presentation/screens/login_screen.dart';

class LogInRoutes {
  static const String logInScreen = '/';
  static List<GoRoute> getRoutes() {
    return [
      GoRoute(
        path: logInScreen,
        name: logInScreen,
        builder: (context, state) => const LoginScreen(),
      ),
    ];
  }
}