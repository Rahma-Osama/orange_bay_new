import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:orange_bay_new/constants.dart';
import 'package:orange_bay_new/core/utilities/styles.dart';
class Reviews extends StatefulWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  bool isMore=false;
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
            SizedBox(
              height: MediaQuery.of(context).size.height/2,
              child: ListView.builder(itemCount: 3,itemBuilder: (context,index)=>Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              CircleAvatar(backgroundColor:GREY),
                              Column(
                                children: [
                                  Text("Samantha Payne",style: Styles.TextStyle14,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical:6),
                                    child: Text("@Sam.Payne90",style: Styles.TextStyle12.copyWith(color: GREY),),
                                  ),
                                ],
                              ),
                            ],
                          ),

                        ),
                        RatingBarIndicator(
                          unratedColor: Colors.grey[300],
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
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text("“The staff went above and beyond to ensure we had a comfortable stay and were kind enough to pack breakfast for us as we checked out really early in the morning. All little things, but truly unforgettable experience.”",style: Styles.TextStyle14.copyWith(color: GREY,fontWeight: FontWeight.w400),maxLines: isMore? 10 :3,),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          isMore=!isMore;
                        });
                      },
                      child: Row(
                        children: [
                          Text(isMore?"Show less" : "Show more",style: Styles.TextStyle12.copyWith(color: MAIN_ORANGE),),
                          Icon(isMore? Icons.keyboard_arrow_up_outlined:Icons.keyboard_arrow_down_outlined,size: 16,color: MAIN_ORANGE,)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text("23 Nov 2022",style: Styles.TextStyle12.copyWith(color: GREY),),
                    )
                  ],
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
