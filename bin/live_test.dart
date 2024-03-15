main(){
  List<Map> fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Grapes', 'color': 'Purple', 'price': 3.0},
  ];

  displayFruitDetails(fruits);

  double disPercentage = 10;
  applyPriceDiscount(fruits, disPercentage);

  print('After set discount');
  displayFruitDetails(fruits);
}

void displayFruitDetails(List<Map> fruits) {
  fruits.forEach((fruit) => print('Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}'));
}

void applyPriceDiscount(List<Map> fruits, double disPercentage) {
  for (var fruit in fruits) {
    double currentPrice = fruit['price'];
    double discountedPrice = currentPrice * (1 - disPercentage / 100);
    fruit['price'] = discountedPrice;
  }
}