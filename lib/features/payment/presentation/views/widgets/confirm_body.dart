import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';
import 'package:orange_bay_new/features/payment/presentation/views/pay_view.dart';
import 'package:orange_bay_new/features/payment/presentation/views/widgets/pay_method.dart';

import '../../../../../core/shred_widgets/custom_button.dart';
import '../../../../../core/shred_widgets/default_text.dart';
import '../../../../../core/utilities/styles.dart';
import 'check_buttom.dart';

class ConfirmBody extends StatelessWidget {
  const ConfirmBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text('Choose payment method'),
          PayMethod(),
          Text(
            'Credit Card',
            style: Styles.TextStyle14.copyWith(color: Colors.black),
          ),
          SizedBox(height: 8,),
          defaultText(
            type: TextInputType.text,
          ),
          SizedBox(height: 8,),

          Text(
            'Name on card',
            style: Styles.TextStyle14.copyWith(color: Colors.black),
          ),
          SizedBox(height: 8,),
          defaultText(
            type: TextInputType.text,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Expire date',
                      style: Styles.TextStyle14.copyWith(color: Colors.black),
                    ),
                    SizedBox(height: 5,),
                    SizedBox(
                      width: 250,
                      child: TextField(
                        decoration:  InputDecoration(
                          border:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CVV',
                      style: Styles.TextStyle14.copyWith(color: Colors.black),
                    ),
                    SizedBox(height: 5,),
                    SizedBox(
                      width: 250,
                      child: TextField(
                        decoration:  InputDecoration(
                          border:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          hintText: 'CVV',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 14,),
          CheckButtom(
            text: 'Save card for future payment',
          ),
          SizedBox(height: 50,),
          CustomButton(
              width: double.infinity,
              backgroundColor: MAIN_ORANGE,
              text: 'Confirm',
              func: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PayView()));
              },
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: CustomButton(
              textColor: MAIN_ORANGE,
              backgroundColor: Colors.white,
              text: 'Back',
              func: (){
                Navigator.pop(context);
              },
              width:double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
