class CarbonFootPrint {
  // >> Emission unit = kg of CO2

  // Common electric devices consumptions

  // Assumming that power usage of fan per hour is 65 watts
  static final double kwhUsedByFanPerHour = 0.065;

  // Assumming the TV is LED and is 35 inches in size
  // Source: https://www.rtings.com/tv/learn/led-oled-power-consumption-and-electricity-cost
  static final double kwhUsedByTVPerHour = 0.03;

  // Assuming that power usage of fridge per hour is 250 watt
  static final double kwhUsedByFridgePerHour = 0.25;

  // Electricity(kWh)
  static final double emissionPerUnitElectricity = 0.475;

  // Water(L)
  static final double emissionPerUnitWater = 0.001;

  // Petrol(L)
  static final double emissionPerKmCar = 0.313;

  // Diesel(L)
  static final double emissionPerKmBike = 0.0687;

  static final double emissionPerKmBicycle = 0.016;

  // Meat, Fish, eggs (calories)
  static final double emissionPerUnitCalorieOfMeat = 219.67;

  // grain & baked food (calories)
  static final double emissionPerUnitCalorieOfGrain = 15.34;

  // Dairy(calories)
  static final double emissionPerUnitCalorieOfDairy = 1.9;

  // Fruits & vegetables (calories)
  static final double emissionPerUnitCalorieOfFruit = 1.55;

  // Average
  // TODO: DUMMY DATA, FOR EXPERIMENT
  static final double avgEmissionDueToHouseHoldPerDay = 10;
  static final double avgEmissionDueToFoodPerDay = 10;
  static final double avgEmissionDueToTravelPerDay = 10;

  // Get the daily carbon footprint of your household activities
  static double getDailyHouseHoldCarbonFootPrint(
    double hoursFanUsed,
    double hoursTVUsed,
    double hoursFridgeUsed,
    double litresOfWaterUsed,
  ) {
    double electrictyComsunptioninKWH = (hoursFanUsed * kwhUsedByFanPerHour +
        hoursTVUsed * kwhUsedByTVPerHour +
        hoursFridgeUsed * kwhUsedByFridgePerHour);

    double emissionDueToElectricity =
        emissionPerUnitElectricity * electrictyComsunptioninKWH;
    double emissionDueToWater = emissionPerUnitWater * litresOfWaterUsed;

    return (emissionDueToElectricity + emissionDueToWater) ;
  }

  // Get the daily footprint of your travel related activities
  static double getDailyTravelFootPrint(double distanceTravelledByBike,
      double distanceTravelledByCar, double distanceTravelledByBicycle) {
    return (emissionPerKmBike * distanceTravelledByBike +
            emissionPerKmCar * distanceTravelledByCar +
            emissionPerKmBicycle * distanceTravelledByBicycle);
  }

  // Get the daily footprint of your food related activities
  static double getDailyFoodCarbonFootPrint(
    double meatCalorieIntake,
    double grainCalorieIntake,
    double dairyCalorieIntake,
    double fruitCalorieIntake,
  ) {
    return (meatCalorieIntake * emissionPerUnitCalorieOfMeat +
            grainCalorieIntake * emissionPerUnitCalorieOfGrain +
            dairyCalorieIntake * emissionPerUnitCalorieOfDairy +
            fruitCalorieIntake * emissionPerUnitCalorieOfFruit) / 1000;
  }

  // Get total carbon footprint according to daily activities
  static double getTotalCarbonFootPrint(
    // Household
    double hoursFanUsed,
    double hoursTVUsed,
    double hoursFridgeUsed,
    double litresOfWaterUsed,

    // Travel
    double distanceTravelledByBike,
    double distanceTravelledByCar,
    double distanceTravelledByBicycle,

    // Food
    double meatCalorieIntake,
    double grainCalorieIntake,
    double dairyCalorieIntake,
    double fruitCalorieIntake,
  ) {
    return (getDailyHouseHoldCarbonFootPrint(
            hoursFanUsed, hoursTVUsed, hoursFridgeUsed, litresOfWaterUsed) +
        getDailyTravelFootPrint(distanceTravelledByBike, distanceTravelledByCar,
            distanceTravelledByBicycle) +
        getDailyFoodCarbonFootPrint(meatCalorieIntake, grainCalorieIntake,
            dairyCalorieIntake, fruitCalorieIntake));
  }
}
