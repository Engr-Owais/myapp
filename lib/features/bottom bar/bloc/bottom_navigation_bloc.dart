import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';

class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc() : super(BottomNavigationInitial());

  int _selectedIndex = 0;

  Stream<BottomNavigationState> mapEventToState(
    BottomNavigationEvent event,
  ) async* {
    if (event is NavigationTappedEvent) {
      _selectedIndex = event.selectedIndex;
      yield BottomNavigationUpdated(selectedIndex: _selectedIndex);
    }
  }
}
