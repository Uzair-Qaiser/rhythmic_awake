import 'package:go_router/go_router.dart';
import '../presentation/screens/navigation_screen.dart';

class NavigationRoutes {
  static const String navigationScreen = '/';
  static List<GoRoute> getRoutes() {
    return [
      GoRoute(
        path: navigationScreen,
        name: navigationScreen,
        builder: (context, state) => const NavigationScreen(),
      ),
    ];
  }
}