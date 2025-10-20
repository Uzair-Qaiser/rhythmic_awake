import 'package:go_router/go_router.dart';
import 'package:rhythmic_awake/features/alarms/presentation/screens/add_alarm_screen.dart';

class AlarmRoutes {
  static const String addAlarm = '/addAlarm';
  static List<GoRoute> getRoutes() {
    return [
      GoRoute(
        path: addAlarm,
        name: addAlarm,
        builder: (context, state) => const AddAlarmScreen(),
      ),
    ];
  }
}