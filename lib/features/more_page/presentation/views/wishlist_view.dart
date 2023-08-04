import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/widgets/wishlist_body.dart';

import '../../../../core/shred_widgets/app_bar3.dart';

class WishListView extends StatelessWidget {
  const WishListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: const AppBarButtom3(text: 'WishList',),
        body:const WishListBody()
      ),
    );
  }
}
