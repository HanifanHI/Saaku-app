import 'package:flutter/material.dart';
import '/models/transaction_model.dart';

import '/theme.dart';

class TransactionItem extends StatelessWidget {
  final TransactionModel transactionModel;

  TransactionItem(this.transactionModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 67,
      margin: EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xffF8FAFB),
            ),
            child: Center(
              child: Image.asset(
                transactionModel.imageUrl,
                width: 27,
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  transactionModel.name,
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  transactionModel.typeTransaction,
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              transactionModel.isIn
                  ? Text(
                      '+ Rp ${transactionModel.price}',
                      style: greenTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    )
                  : Text(
                      '- Rp ${transactionModel.price}',
                      style: redTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
              SizedBox(
                height: 2,
              ),
              Text(
                transactionModel.date,
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
