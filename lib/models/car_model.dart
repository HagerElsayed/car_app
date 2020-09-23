class Car {
  int id;
  String type;
  String price;
  String image;
  String features;
  bool isSelected;
  List<CarColor> carColors;
  Car(
      {this.id,
      this.type,
      this.price,
      this.features =
          "Android AutoAntilock BrakesApple CarPlayAudio Controls On Steering WheelAuxiliary InputBackup CameraBlind Spot MonitorBluetoothBrake AssistChild Safety LocksCooled Driver SeatDual Climate ControlHD RadioHeated Steering ",
      this.image,
      this.carColors});
}

class CarColor {
  String color;
  bool isSelected;
  CarColor({this.color, this.isSelected = false});
}

class Repo {
  static List<Car> cars = [
    Car(
        id: 1,
        type: "Perrin",
        price: "\$95.000",
        image: "assets/images/blue_car.png",
        carColors: [
          CarColor(color: "#0285A6", isSelected: true),
          CarColor(color: "#FF0303", isSelected: false),
          CarColor(color: "#797979", isSelected: false)
        ]),
    Car(
      id: 2,
      type: "Mercedes-AMG",
      price: "\$116.000",
      image: "assets/images/grey_car.png",
      carColors: [
        CarColor(color: "#797979", isSelected: true),
        CarColor(color: "#0285A6", isSelected: false),
        CarColor(color: "#FF0303", isSelected: false)
      ],
    ),
    Car(
        id: 3,
        type: "Mercedes-AMG",
        price: "\$113.000",
        image: "assets/images/yellow_car.png",
        carColors: [
          CarColor(color: "#EED36A", isSelected: true),
          CarColor(color: "#797979", isSelected: false),
          CarColor(color: "#0285A6", isSelected: false),
          CarColor(color: "#FF0303", isSelected: false)
        ])
  ];
}
