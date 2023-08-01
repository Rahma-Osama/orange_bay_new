import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/shred_widgets/app_bar.dart';
import 'package:orange_bay_new/features/payment/presentation/views/widgets/confirm_body.dart';

class ConfirmView extends StatelessWidget {
  const ConfirmView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context: context),
      body: ConfirmBody(),
    );
  }
}
