import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_bay_new/core/shred_widgets/app_bar3.dart';
import 'package:orange_bay_new/features/services/presentation/views/widgets/restaurant_body.dart';

class shopView extends StatefulWidget {
  const shopView({Key? key}) : super(key: key);

  @override
  State<shopView> createState() => _shopViewState();
}

class _shopViewState extends State<shopView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBarButtom3(text: 'Shops',) ,
          body: Container()
      ),
    );

  }
}
