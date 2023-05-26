class Product {
  String id;

  String name;
  String itemType;
  num price;
  num rating;
  num itemsSold;
  String imageeUrl;
  bool isFavrite;

  Product({
    required this.id,
    required this.name,
    required this.itemType,
    required this.price,
    required this.rating,
    required this.itemsSold,
    required this.imageeUrl,
    required this.isFavrite,
  });
}
