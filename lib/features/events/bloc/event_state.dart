import 'package:equatable/equatable.dart';
import 'package:myapp/shared/model/events.dart';

abstract class EventState extends Equatable {
  @override
  List<Object?> get props => [];
}

class EventsLoading extends EventState {}

class EventsLoaded extends EventState {
  final List<Event> events;

  EventsLoaded(this.events);

  @override
  List<Object?> get props => [events];
}
