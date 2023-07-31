import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/home/presentation/views/home_layout.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/home_body.dart';

import '../../services/presentation/views/Services_layout.dart';
import 'layout_states.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(IntialState());
  int bottomNavBarIndex = 0;

  changeIndex(index) {
    bottomNavBarIndex = index;
    print(index);
    emit(ChangeBottomNavBaerItem());
  }

  List<Widget> screens = [
   HomeBody(),
   HomeBody(),
    ServicesLayout()

  ];
}