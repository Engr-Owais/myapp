part of 'bottom_navigation_bloc.dart';

abstract class BottomNavigationState extends Equatable {
  const BottomNavigationState();

  @override
  List<Object> get props => [];
}

class BottomNavigationInitial extends BottomNavigationState {}

class BottomNavigationUpdated extends BottomNavigationState {
  final int selectedIndex;

  BottomNavigationUpdated({required this.selectedIndex});

  @override
  List<Object> get props => [selectedIndex];
}
