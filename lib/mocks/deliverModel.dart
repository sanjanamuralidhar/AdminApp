class DeliveryModel {
  String imageUrl;
  String name;
  String delivery;
  String address;
  int number;
  int adhaar;
  bool isBike;
  String location;

  DeliveryModel({
    this.imageUrl,
    this.name,
    this.delivery,
  });
}

List<DeliveryModel> deliverBoys = [
  DeliveryModel(
      imageUrl: 'assets/deliverboy/boy1.jpg',
      name: 'Jhony',
      delivery: 'ID :4795'),
  DeliveryModel(
      imageUrl: 'assets/deliverboy/boy2.jpg',
      name: 'Roshan',
      delivery: 'ID :4795'),
  DeliveryModel(
      imageUrl: 'assets/deliverboy/girl1.jpg',
      name: 'Emma',
      delivery: 'ID :4795'),
  DeliveryModel(
    imageUrl: 'assets/deliverboy/boy4.jpg',
    name: 'Cooper',
    delivery: 'ID :4795',
  ),
  DeliveryModel(
    imageUrl: 'assets/deliverboy/girl69.jpg',
    name: 'Sindhu',
    delivery: 'ID :4795',
  ),
  DeliveryModel(
    imageUrl: 'assets/deliverboy/boy5.jpg',
    name: 'Reeves',
    delivery: 'ID :4795',
  ),
  DeliveryModel(
    imageUrl: 'assets/deliverboy/girl3.jpg',
    name: 'Jessica',
    delivery: 'ID :4795',
  ),
  DeliveryModel(
    imageUrl: 'assets/deliverboy/boy22.jpg',
    name: 'Smith',
    delivery: 'ID :4795',
  ),
];