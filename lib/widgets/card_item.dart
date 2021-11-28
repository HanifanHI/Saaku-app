import 'package:flutter/material.dart';
import '/models/card_model.dart';

import '../theme.dart';

class CardItem extends StatelessWidget {
  final CardModel cardModel;

  CardItem(this.cardModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      margin: EdgeInsets.only(right: 14),
      padding: EdgeInsets.fromLTRB(20, 20, 20, 30),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            cardModel.imageUrl,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                cardModel.logo,
                width: 39,
                height: 16,
              ),
              SizedBox(
                height: 72,
              ),
              Text(
                'Rp ${cardModel.saldo}',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                cardModel.noRekening,
                style: lightBlueTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Text(
            cardModel.date,
            style: lightBlueTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
