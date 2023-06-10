part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeProductWishlistButtonClickedEvent extends HomeEvent{

}

class HomeProductCardButtonClickedEvent extends HomeEvent{

}

class HomeWishlistButtonNavigateEvent extends HomeEvent{

}

class HomeCartButtonNavigateEvent extends HomeEvent{

}
