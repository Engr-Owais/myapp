import 'package:bloc/bloc.dart';
import '../../../shared/data/events_data.dart';
import 'event_event.dart';
import 'event_state.dart';

class EventBloc extends Bloc<EventEvent, EventState> {
  EventBloc() : super(EventsLoading()) {
    on<LoadEvents>((event, emit) async {
      await Future.delayed(Duration(seconds: 2)); // Simulate network delay
      emit(EventsLoaded(events)); // `events` from `events_data.dart`
    });
  }
}
