class RestaurantModel {
  String imageUrl;
  String name;
  String delivery;
  String spend;
  int rating;

  RestaurantModel({
    this.imageUrl,
    this.name,
    this.delivery,
    this.spend,
    this.rating,
  });
}

List<RestaurantModel> restaurants = [
  RestaurantModel(
    imageUrl: 'assets/chickenhut.jpg',
    name: 'Chicken Hut',
    delivery: 'delivery from 10:50 AM',
    rating: 4,
    spend: 'Min Spend ₹3',
  ),
  RestaurantModel(
    imageUrl: 'assets/PAPA.jpg',
    name: 'Papa Enthis',
    delivery: 'delivery from 10:50 AM',
    rating: 3,
    spend: 'Min Spend ₹3',
  ),
  RestaurantModel(
    imageUrl: 'assets/wang.jpg',
    name: 'Mr Wang',
    delivery: 'delivery from 10:50 AM',
    rating: 5,
    spend: 'Min Spend ₹5',
  ),
  RestaurantModel(
    imageUrl: 'assets/spiceIndia.png',
    name: 'Spice India',
    delivery: 'delivery from 10:50 AM',
    rating: 5,
    spend: 'Min Spend ₹5',
  ),
];
