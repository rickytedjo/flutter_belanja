class Item {
  String name;
  int price;
  int stock = 0;
  double rating = 0.00;
  String image_dir;

  Item(
      {required this.name,
      required this.price,
      this.stock = 0,
      this.rating = 0.00,
      required this.image_dir});
}
