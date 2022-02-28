abstract class Drinkable {
  void pour();
}

class Beer extends Drinkable {
  @override
  void pour() => print("Pouring a delicious beer!");
}

class Coffee extends Drinkable {
  @override
  void pour() => print("Pouring a refreshing coffee!");
}

abstract class DrinkFactory {
  Drinkable createDrink();
}

class Pub extends DrinkFactory {
  @override
  Drinkable createDrink() => Beer();
}

class CoffeeShop extends DrinkFactory {
  @override
  Drinkable createDrink() => Coffee();
}

void main() {
  var mood = "sleepy";
  late DrinkFactory destination;

  switch (mood) {
    case "sleepy":
      destination = CoffeeShop();
      break;
    case "done":
      destination = Pub();
      break;
    default:
      print("I only hav two mods...");
  }

  Drinkable myBeverage = destination.createDrink();
  myBeverage.pour();
}