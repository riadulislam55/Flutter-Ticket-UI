import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'container_event.dart';
part 'container_state.dart';

class ContainerBloc extends Bloc<ContainerEvent, ContainerState> {
  ContainerBloc() : super(ContainerInitial());

  @override
  Stream<ContainerState> mapEventToState(
    ContainerEvent event,
  ) async* {
    if (event is HomeEvent) {
      yield HomeSate();
    } else if (event is SearchEvent) {
      yield SearchState();
    } else if (event is TicketEvent) {
      yield TicketState();
    } else if (event is ProfileEvent) {
      yield ProfileState();
    } else if (event is BackEvent) {
      yield BackState();
    } else {
      yield HomeSate();
    }
  }
}
