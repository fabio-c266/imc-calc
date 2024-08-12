class People {
  final String _name;
  final double _weight;
  final double _height;

  People(this._name, this._weight, this._height);

  String getName() => _name;
  double getWeight() => _weight;
  double getHeight() => _height;
  double getIMC() => (_weight / (_height * _height));

  String getIMCClassification() {
    if (getIMC() < 16) {
      return "Magreza grave";
    } else if (getIMC() >= 16 && getIMC() < 17) {
      return "Magreza moderada";
    } else if (getIMC() >= 17 && getIMC() < 18.5) {
      return "Magreza leve";
    } else if (getIMC() >= 18.5 && getIMC() < 25) {
      return "Saudável";
    } else if (getIMC() >= 25 && getIMC() < 30) {
      return "Sobrepeso";
    } else if (getIMC() >= 30 && getIMC() < 35) {
      return "Obesidade Grau I";
    } else if (getIMC() >= 35 && getIMC() < 40) {
      return "Obesidade Grau II (severa)";
    } else {
      return "Obesidade Grau III (mórbida)";
    }
  }
}
