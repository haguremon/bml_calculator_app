import 'dart:math';
import 'body_mass_index.dart';


class BMICalculatorBranin {
  int height;
  int weight;

  BMICalculatorBranin({this.height = 0, this.weight = 0});

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);//toStringAsFixedで小数点第()
  }

//自作でアレンジ
  Map<BodyMassIndex, String> getResultBody() {
    if (_bmi >= 25) {
      return {BodyMassIndex.obesity: '痩せろカス'};
    } else if (_bmi > 18.5) {
      return {BodyMassIndex.normal: 'そのままでオッケー'};
    } else {
      return {BodyMassIndex.thin: '太れカス'};
    }
  }
}
