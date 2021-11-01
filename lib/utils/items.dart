class Items{
  final String itemName;
  final String itemDescription;
  final num itemPrice;
  final String itemColor;
  final String imageUrl;

  Items({required this.itemName,required this.itemDescription,required this.itemPrice,required this.itemColor,required this.imageUrl});

}

var itemList = [Items(itemName: "Iphone 12", itemDescription: "Getting more and more costlier", itemPrice: 95000, itemColor: "#524d4d", imageUrl: "assets/images/iphone.png"),
                Items(itemName: "Samsung", itemDescription: "Tough Competition to Iphone", itemPrice: 50000, itemColor: "#0084ff", imageUrl: "assets/images/samsung.jpg"),
                Items(itemName: "One Plus", itemDescription: "Some say it's sasta iphone", itemPrice: 35000, itemColor: "#00ff51", imageUrl: "assets/images/oneplus.jpg"),
                Items(itemName: "Redmi", itemDescription: "Great Budget Phone", itemPrice: 15000, itemColor: "#656266", imageUrl: "assets/images/redmi.jpg")];