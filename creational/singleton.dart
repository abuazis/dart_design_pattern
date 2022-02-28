class Database {
  Database._internal();

  static final Database _singleton = Database._internal();
  static final String _name = "production";

  factory Database() => _singleton;

  static String get name => _name;

  @override
  String toString() => "Connected to $name database";
}

void main() {
  Database production1 = Database();
  Database production2 = Database();

  print(production1);
  print(production2);

  var samenessCheck = identical(production1, production2)
  ? "We are both the same ${Database.name}."
  : "We are NOT the same. I mean, just look at us.";

  print(samenessCheck);
}