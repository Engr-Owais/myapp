part of 'bottom_navigation_bloc.dart';


abstract class BottomNavigationEvent extends Equatable {
  const BottomNavigationEvent();

  @override
  List<Object> get props => [];
}

class NavigationTappedEvent extends BottomNavigationEvent {
  final int selectedIndex;

  NavigationTappedEvent({required this.selectedIndex});

  @override
  List<Object> get props => [selectedIndex];
}
