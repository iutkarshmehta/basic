import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeProductWishlistButtonClickedEvent>(homeProductWishlistButtonClickedEvent);
    on<HomeProductCardButtonClickedEvent>(homeProductCardButtonClickedEvent);
  }

  FutureOr<void> homeProductWishlistButtonClickedEvent(HomeProductWishlistButtonClickedEvent event, Emitter<HomeState> emit) {
    print('Wishlist clicked');
  }

  FutureOr<void> homeProductCardButtonClickedEvent(HomeProductCardButtonClickedEvent event, Emitter<HomeState> emit) {
  print('Cart Clicked');
  }
}
