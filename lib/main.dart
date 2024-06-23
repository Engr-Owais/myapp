import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/features/bottom%20bar/bloc/bottom_navigation_bloc.dart';
import 'package:myapp/features/events/events.dart';
import 'package:myapp/servicess/service_locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider(
        create: (context) => BottomNavigationBloc(),
        child: EventScreen(),
      ),
    );
  }
}
