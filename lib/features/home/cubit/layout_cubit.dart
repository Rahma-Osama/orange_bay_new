import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/home/presentation/views/home_layout.dart';

import 'layout_states.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(IntialState());
  int bottomNavBarIndex = 0;

  changeIndex(index) {
    bottomNavBarIndex = index;
    emit(ChangeBottomNavBaerItem());
  }

  List<Widget> screens = [
   HomeLayout(),
  ];
}