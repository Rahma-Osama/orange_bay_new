import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/widgets/more_item_builder.dart';
import 'package:orange_bay_new/features/services/presentation/views/widgets/services_container.dart';

class MoreView extends StatelessWidget {
  const MoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height * .42,
          padding: EdgeInsets.all(18),
          child: ListView.separated(
              itemBuilder: (context, index) => MoreItemBuilder(
                    index: index,
                  ),
              separatorBuilder: (context, index) => Divider(
                    color: GREY,
                  ),
              itemCount: 5)),
    );
  }
}
