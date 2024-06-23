import 'package:go_router/go_router.dart';
import 'package:myapp/features/events/events.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => EventScreen(),
    ),
    // Define other routes here
  ],
);
