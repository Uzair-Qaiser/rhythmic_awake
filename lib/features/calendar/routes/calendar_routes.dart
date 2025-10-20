import 'package:go_router/go_router.dart';
import 'package:rhythmic_awake/features/calendar/presentation/screens/calendar_events.dart';

class CalendarRoutes {
  static const String calendarEvents = '/calendarEvents';
  static List<GoRoute> getRoutes() {
    return [
      GoRoute(
        path: calendarEvents,
        name: calendarEvents,
        builder: (context, state) => const CalendarEvents(),
      ),
    ];
  }
}