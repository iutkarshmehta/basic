import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home_bloc.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeBloc homeBloc = HomeBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer< HomeBloc,  HomeState>(
      bloc: homeBloc,
      listener: (context, state) {
        // TODO: implement listener
      },
      //listenWhen: (previous, current){},
      //buildWhen: (previous,current){},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('My First Bloc Project'),
            actions: [
              IconButton(onPressed: (){
                homeBloc.add(HomeProductWishlistButtonClickedEvent());
              }, icon: Icon(Icons.favorite_border_outlined)),
              IconButton(onPressed: (){
                homeBloc.add(HomeProductCardButtonClickedEvent());
              }, icon: Icon(Icons.shopping_bag_outlined))
            ],
          ),
        );
      },
    );
  }
}
