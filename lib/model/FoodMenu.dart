class FoodMenu {
  String itemName;
  String itemImage;
  String itemVariety;

  FoodMenu({
    this.itemName,
    this.itemImage,
    this.itemVariety,
  });
}

List<FoodMenu> menuList = [
  FoodMenu(
      itemName: "Cool Drinks",
      itemImage:
          "https://image.freepik.com/free-vector/orange-juice_1284-825.jpg",
      itemVariety: "Fresh Juice, Smoothies,Cold Coffee, Iced Tea, Milkshake"),
  FoodMenu(
      itemName: "Hot Beverages",
      itemImage:
          "https://image.freepik.com/free-photo/coffee-cup-beans-white-background_1232-2000.jpg",
      itemVariety: "Espresso, Mocha, Latte, Cappuccino, Chai Latte"),
  FoodMenu(
      itemName: "Pizza",
      itemImage:
          "https://image.freepik.com/free-vector/pizza-background_1176-185.jpg",
      itemVariety:
          "Neapolitan, Chicago, New York-Style,Greek,California, Detroit,St. Louis "),
  FoodMenu(
      itemName: "Burgers",
      itemImage:
          "https://image.freepik.com/free-vector/hamburger-realistic-isolated_1284-12692.jpg",
      itemVariety: "Veggie, Portobello Mushroom.Wild Salmon, Black Bean"),
  FoodMenu(
      itemName: "Bottled Drinks",
      itemImage:
          "https://image.freepik.com/free-vector/beer-sketch-concept_1284-7333.jpg",
      itemVariety: "Beer, Ale, Ginger Ale, Pepsi, Coke"),
  FoodMenu(
      itemName: "Sides",
      itemImage:
          "https://image.freepik.com/free-vector/3d-realistic-french-fries-red-paper-box-mayochup-condiment-bowl_1441-2192.jpg",
      itemVariety: "Chips, salad, Dips"),
];

class MenuCategory {
  String name;

  MenuCategory({this.name});
}

List<MenuCategory> menuCategoryList = [
  MenuCategory(name: "Cool Drinks"),
  MenuCategory(name: "Hot Beverages"),
  MenuCategory(name: "Pizzas"),
  MenuCategory(name: "Burgers"),
  MenuCategory(name: "Bottled Drinks"),
  MenuCategory(name: "Sides"),
];
