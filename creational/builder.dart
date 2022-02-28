class PizzaBuilder {
  String? _crust;
  int? _diameter;
  Set<String>? _toppings;

  PizzaBuilder(this._diameter);
  String get crust => _crust!;
  int get diameter => _diameter!;

  Set<String> get toppings => _toppings!;

  set crust(String newCrust) {
    _crust = newCrust;
  }

  set diameter(int newDiameter) {
    _diameter = newDiameter;
  }

  set toppings(Set<String> newToppings) {
    _toppings = newToppings;
    ensureCheese();
  }

  void ensureCheese() => _toppings!.add("cheese");

  Pizza build() => Pizza(this);
}

class Pizza {
  String? _crust;
  int? _diameter;
  Set<String>? _toppings;

  Pizza(PizzaBuilder builder) {
    _crust = builder.crust;
    _diameter = builder.diameter;
    _toppings = builder.toppings;
  }

  String get crust => _crust!;

  int get diameter => _diameter!;
  
  String get toppings => _stringifiedToppings();

  String _stringifiedToppings() {
    String StringTopppings = _toppings!.join(", ");
    int lastComma = StringTopppings.lastIndexOf(",");

    var replacement = ",".allMatches(StringTopppings).length > 1 ? ", and" : "and";

    return StringTopppings.replaceRange(lastComma, lastComma + 1, replacement);
  }

  @override
  String toString() => "A delicious $_diameter\" pizza with $_crust crust covered in $toppings ";
}

void main() {
  // Create a handy PizzaBuilder with an 8" diameter.
  PizzaBuilder pizzaBuilder = PizzaBuilder(8);

  // Add some the attribute to the builder.
  pizzaBuilder.crust = "deep dish";
  pizzaBuilder.toppings = Set.from(["pepperoni"]);

  // Let's make a pizza!
  Pizza plainPizza = Pizza(pizzaBuilder);
  print("Behold! $plainPizza");
  assert(plainPizza.toString() == "A delicious 8\" pizza with deep dish crust covered in pepperoni and cheese");

  // Now to adjust some things for the next pizza...
  pizzaBuilder.crust = "gold platted";
  pizzaBuilder.diameter = 72;
  pizzaBuilder.toppings = Set.from(["anchovies", "caviar", "diamonds"]);

  // The beauty of the build is you can quickly iterate and produce instances of a class.
  // For example, we have an early employee of the latest unicorn in line. So much disposable income!
  // Also note, we use the .build() function of the builder this time.
  Pizza luxuriousPizza = Pizza(pizzaBuilder);
  print("Wow! $luxuriousPizza? Someone is rich!");
  assert(luxuriousPizza.toString() == "A delicous 72\" pizza with gold plated crust covered in anchovies, caviar, diamonds, and cheese");
}