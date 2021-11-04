class Items {
  final int id;
  final String itemName;
  final String itemDescription;
  final num itemPrice;
  final String itemColor;
  final String imageUrl;

  Items({required this.id, required this.itemName, required this.itemDescription, required this.itemPrice, required this.itemColor, required this.imageUrl});

  factory Items.fromMap(Map<String,dynamic>map)
  {
    return Items(
        id: map["id"],
        itemName: map["name"],
        itemDescription: "Great Devices!",
        itemPrice: map["price"],
        itemColor: map["color"],
        imageUrl: map["image"]);
  }

}
class CatalogHolder{
    // static var itemList = [Items(id: 1,itemName: "Iphone 12", itemDescription: "Getting more and more costlier", itemPrice: 1000, itemColor: "#524d4d", imageUrl: "assets/images/iphone.jpg"),
    //   Items(id: 2,itemName: "Samsung", itemDescription: "Tough Competition to Iphone", itemPrice: 500, itemColor: "#0084ff", imageUrl: "assets/images/samsung.jpg"),
    //   Items(id: 3,itemName: "One Plus", itemDescription: "Some say it's sasta iphone", itemPrice: 350, itemColor: "#00ff51", imageUrl: "assets/images/oneplus.jpg"),
    //   Items(id: 4,itemName: "Redmi", itemDescription: "Great Budget Phone", itemPrice: 150, itemColor: "#656266", imageUrl: "assets/images/redmi.jpg")];

  static var itemList =[];
}