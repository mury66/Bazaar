class ItemComponentModel {
  String categoryName;
  String categoryImg;
  String ownerName;
  String locaion;
  double price;
  Function() onTap;
  ItemComponentModel(
      {required this.categoryName,
      required this.categoryImg,
      required this.ownerName,
      required this.locaion,
      required this.price,
      required this.onTap});
}
