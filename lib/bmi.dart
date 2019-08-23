import 'package:flutter/material.dart';
import 'constants.dart';

class BMI with ChangeNotifier {
  int _height;
  int _weight;
  int _age;
  Gender _sex;

  BMI(this._height, this._weight, this._age, this._sex);

  int getHeight() {
    return this._height;
  }

  int getWeight() {
    return this._weight;
  }

  int getAge() {
    return this._age;
  }

  Gender getSex() {
    return this._sex;
  }

  void setHeight(int height) {
    this._height = height;
    notifyListeners();
  }

  void setWeight(int weight) {
    this._weight = weight;
  }

  void setAge(int age) {
    this._age = age;
  }

  void incrementWeigth() {
    this._weight++;
    notifyListeners();
  }

  void decrementWeigth() {
    this._weight--;
    notifyListeners();
  }

  void setSex(Gender sex) {
    this._sex = sex;
    notifyListeners();
  }

  void incrementAge() {
    _age++;
    notifyListeners();
  }

  void decrementAge() {
    _age--;
    notifyListeners();
  }
}
