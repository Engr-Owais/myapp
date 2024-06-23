import 'package:get_it/get_it.dart';
import 'package:myapp/features/events/bloc/event_bloc.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerFactory(() => EventBloc());
}
