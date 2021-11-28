import 'package:flutter/material.dart';
import 'package:saaku_app/models/card_model.dart';
import 'package:saaku_app/models/transaction_model.dart';
import 'package:saaku_app/theme.dart';
import 'package:saaku_app/widgets/card_item.dart';
import 'package:saaku_app/widgets/transaction_item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                // * HEADER
                Padding(
                  padding: EdgeInsets.only(
                    top: 28,
                    left: 28,
                    right: 28,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Good Morning',
                              style: greyTextStyle.copyWith(
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Artemis Max',
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: medium,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/profile.png',
                        width: 46,
                      ),
                    ],
                  ),
                ),
                // * CARD
                Container(
                  height: 190,
                  margin: EdgeInsets.only(
                    left: 28,
                    top: 14,
                    bottom: 14,
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CardItem(
                        CardModel(
                          imageUrl: 'assets/image-background-2.png',
                          logo: 'assets/logo-bca-white.png',
                          saldo: '232.012.321',
                          noRekening: '0901 2225 2003 0806',
                          date: '09/26',
                        ),
                      ),
                      CardItem(
                        CardModel(
                          imageUrl: 'assets/image-background-1.png',
                          logo: 'assets/logo-visa.png',
                          saldo: '232.012.321',
                          noRekening: '0901 2225 2003 0806',
                          date: '09/26',
                        ),
                      ),
                    ],
                  ),
                ),
                // * BUTTON 1
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 152,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            width: 1,
                            color: kBLueColor,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icon-add.png',
                              width: 24,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Add Card',
                              style: blueTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: medium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // * BUTTON 2
                      Container(
                        width: 152,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: kBLueColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icon-arrow.png',
                              width: 24,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Transfer',
                              style: whiteTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: medium,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                // * ACTIVITIES
                Padding(
                  padding: EdgeInsets.only(left: 28),
                  child: Text(
                    'Activities',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 67,
                  margin: EdgeInsets.fromLTRB(28, 14, 28, 27),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xffF8FAFB),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/image-income.png',
                            width: 34,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Income',
                                style: greyTextStyle.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'Rp 500.000',
                                style: blackTextStyle.copyWith(
                                  fontWeight: medium,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 2,
                        color: Color(0xffEEECF4),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/image-expense.png',
                            width: 34,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Expense',
                                style: greyTextStyle.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'Rp 300.000',
                                style: blackTextStyle.copyWith(
                                  fontWeight: medium,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // * HISTORY TRANSACTION
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'History Transactions',
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        'View all',
                        style: blueTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28),
                  child: Column(
                    children: [
                      TransactionItem(
                        TransactionModel(
                          imageUrl: 'assets/logo-telkomsel.png',
                          name: 'Telkomsel',
                          typeTransaction: 'Top up Pulsa',
                          price: '200.000',
                          date: 'Now',
                        ),
                      ),
                      TransactionItem(
                        TransactionModel(
                          imageUrl: 'assets/logo-bca-blue.png',
                          name: 'From Azkaq',
                          typeTransaction: 'THR Bulanan',
                          price: '2.000.000',
                          date: '10.03 AM',
                          isIn: true,
                        ),
                      ),
                      TransactionItem(
                        TransactionModel(
                          imageUrl: 'assets/logo-bca-blue.png',
                          name: 'From Mandy',
                          typeTransaction: 'Bayar Wutang',
                          price: ' 50.000',
                          date: '09.12 AM',
                          isIn: true,
                        ),
                      ),
                      TransactionItem(
                        TransactionModel(
                          imageUrl: 'assets/logo-gojek.png',
                          name: 'Gojek',
                          typeTransaction: 'Beli Seblak',
                          price: ' 20.000',
                          date: '11.12 AM',
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                  color: Color(0xffFEFEFE),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icon-home.png',
                      width: 24,
                    ),
                    Image.asset(
                      'assets/icon-statistic.png',
                      width: 24,
                    ),
                    SizedBox(),
                    Image.asset(
                      'assets/icon-notification.png',
                      width: 24,
                    ),
                    Image.asset(
                      'assets/icon-settings.png',
                      width: 24,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 55),
        child: Image.asset(
          'assets/icon-floating.png',
          width: 56,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
