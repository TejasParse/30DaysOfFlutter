class Items{
  final String itemName;
  final String itemDescription;
  final num itemPrice;
  final String itemColor;
  final String itemUrl;

  Items({required this.itemName,required this.itemDescription,required this.itemPrice,required this.itemColor,required this.itemUrl});

}

var itemList = [Items(itemName: "Iphone 12", itemDescription: "Getting more and more costlier", itemPrice: 500, itemColor: "#FFFF23", itemUrl: "assets/images/login.png")];