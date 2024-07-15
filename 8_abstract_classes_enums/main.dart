void main() {
  WindPlant myWind = WindPlant(initialEnergy: 300);

  print("Starting energy: ${myWind.energyLeft}");

  chargePhone(myWind);

  print(myWind.energyLeft);

  NuclearPlant burnsEnergyPlant = NuclearPlant(initialEnergy: 500);

  print(burnsEnergyPlant.energyLeft);
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

// this will create a class that inherits everything from the father class
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

// able to implement a particular method if desired
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;
  @override
  PlantType type = PlantType.nuclear;

  NuclearPlant({required double initialEnergy}) : energyLeft = initialEnergy;

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}

double chargePhone(EnergyPlant plant) {
  double phoneConsumption = 10;

  if (plant.energyLeft < 10) {
    throw Exception("We need more energy!");
  }
  plant.consumeEnergy(phoneConsumption);
  return plant.energyLeft;
}
