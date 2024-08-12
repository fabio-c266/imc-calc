import 'dart:io';

import 'package:imc/entities/People.dart';
import 'package:imc/utils/clearTerminal.dart';

void run() {
  print("Digite o nome da pessoa: ");
  String? name = stdin.readLineSync();

  if (name == null || name.length < 3) {
    print("Nome inválido");
    exit(1);
  }

  print("Digite o seu peso: ");
  String? weight = stdin.readLineSync();

  if (weight == null) {
    print("Peso inválido");
    exit(1);
  }

  double? weightConverted = double.tryParse(weight);

  if (weightConverted == null ||
      weightConverted <= 0 ||
      weightConverted >= 400) {
    print("Peso inválido");
    exit(1);
  }

  print("Digite a sua altura: ");
  String? height = stdin.readLineSync();

  if (height == null) {
    print("Altura inválida");
    exit(1);
  }

  double? heightConverted = double.tryParse(height);

  if (heightConverted == null || heightConverted <= 0 || heightConverted >= 3) {
    print("Altura inválida");
    exit(1);
  }

  final People people = People(name, weightConverted, heightConverted);
  clearTerminal();

  print("Exame de ${people.getName()}");
  print("Peso: ${people.getWeight().toStringAsFixed(2)}");
  print("Altura: ${people.getHeight().toStringAsFixed(2)}");
  print("-" * 20);
  print("IMC: ${people.getIMC().toStringAsFixed(2)}");
  print("IMC Classificação: ${people.getIMCClassification()}");
}
