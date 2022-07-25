import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_app/Bloc/states.dart';


class AppCubit extends Cubit<AppStates>
{
  AppCubit() : super(InitialAppStates());
  static  AppCubit get(context) => BlocProvider.of(context);


  //BottomNavBarState

  List <String> Images =['logo.jpg','loo.jpg','logo.jpg'];
  int indexCarouselSider = 0;
  void ChangeindexCarouselSider(int index) {
    indexCarouselSider = index;
    emit(SuccessCategoriesDataStates());
  }



}

