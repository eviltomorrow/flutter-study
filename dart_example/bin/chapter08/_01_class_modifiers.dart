abstract class Vehicle {
  void moveForward(int meters);
}

class Car extends Vehicle {
  int passengers = 4;

  @override
  void moveForward(num meters) {
    print('$passengers move forward $meters');
  }
}

class MockVehicle implements Vehicle {
  @override
  void moveForward(num meters) {
    print('move forward $meters');
  }
}
