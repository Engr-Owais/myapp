import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/features/events/bloc/event_bloc.dart';
import 'package:myapp/features/events/bloc/event_state.dart';
import 'package:myapp/features/events/widgets/event_card.dart';

class GlobalRequestsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventBloc, EventState>(
      builder: (context, state) {
        if (state is EventsLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is EventsLoaded) {
          return ListView.builder(
            itemCount: state.events.length,
            itemBuilder: (context, index) {
              return EventCard(event: state.events[index]);
            },
          );
        } else {
          return Center(child: Text('Something went wrong!'));
        }
      },
    );
  }
}
