import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:myapp/features/bottom%20bar/bottom_bar.dart';
import 'package:myapp/features/events/bloc/event_bloc.dart';
import 'package:myapp/features/events/bloc/event_event.dart';
import 'package:myapp/features/events/widgets/fav_tab.dart';
import 'package:myapp/features/events/widgets/global_req_tab.dart';
import 'package:myapp/shared/data/theme_data.dart';
 // Import your bottom bar widget

class EventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppTheme.colors.primary.withOpacity(0.5),
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              icon: Icon(Icons.settings, color: AppTheme.colors.onPrimary),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: 'Global Requests'),
              Tab(text: 'Favourite User Requests'),
            ],
            labelColor: AppTheme.colors.onPrimary,
            unselectedLabelColor: AppTheme.colors.onPrimary.withOpacity(0.7),
          ),
        ),
        body: TabBarView(
          children: [
            BlocProvider(
              create: (context) =>
                  GetIt.instance<EventBloc>()..add(LoadEvents()),
              child: GlobalRequestsTab(),
            ),
            FavouriteUserRequestsTab(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomBar(), // Use the BottomBar widget
      ),
    );
  }
}
