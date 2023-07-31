import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:orange_bay_new/constants.dart';
import 'package:orange_bay_new/core/utilities/styles.dart';
class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Add a review",style: Styles.TextStyle14,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:8.0),
              child: Text("Be the first to review",style: Styles.TextStyle12.copyWith(color: GREY),),
            ),
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("share your thoughts",style: Styles.TextStyle16.copyWith(color: GREY)),
                  Icon(Icons.emoji_emotions_outlined,color: GREY,)
                ],
              ),),
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            CircleAvatar(),
                            Column(
                              children: [
                                Text("Add a review",style: Styles.TextStyle14,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical:8.0),
                                  child: Text("Be the first to review",style: Styles.TextStyle12.copyWith(color: GREY),),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      RatingBarIndicator(
                        rating: 4.5,
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: MAIN_ORANGE,
                        ),
                        itemCount: 5,
                        itemSize: MediaQuery.of(context).size.width/15,
                        direction: Axis.horizontal,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
