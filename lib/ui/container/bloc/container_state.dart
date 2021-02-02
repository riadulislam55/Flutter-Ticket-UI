part of 'container_bloc.dart';

@immutable
abstract class ContainerState {}

class ContainerInitial extends ContainerState {}

class HomeSate extends ContainerState {}

class SearchState extends ContainerState {}

class TicketState extends ContainerState {}

class ProfileState extends ContainerState {}

class BackState extends ContainerState {}
