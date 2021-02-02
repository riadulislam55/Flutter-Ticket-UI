part of 'container_bloc.dart';

@immutable
abstract class ContainerEvent {}

class HomeEvent extends ContainerEvent {}

class SearchEvent extends ContainerEvent {}

class TicketEvent extends ContainerEvent {}

class ProfileEvent extends ContainerEvent {}

class BackEvent extends ContainerEvent {}
