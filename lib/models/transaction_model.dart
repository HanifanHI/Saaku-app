class TransactionModel {
  String imageUrl;
  String name;
  String typeTransaction;
  String price;
  String date;
  bool isIn;

  TransactionModel({
    required this.imageUrl,
    required this.name,
    required this.typeTransaction,
    required this.price,
    required this.date,
    this.isIn = false,
  });
}
