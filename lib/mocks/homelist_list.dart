class HomeRestaurantList {
  String imageUrl;
  String address1;
  String address2;
  String collectionType;
  String name;
  String delivery;

  HomeRestaurantList({
    this.imageUrl,
    this.address1,
    this.address2,
    this.collectionType,
    this.name,
    this.delivery,
  });
}

List<HomeRestaurantList> restaurantlist = [
  HomeRestaurantList(
    imageUrl: 'assets/o.jpg',
    name: 'Chicken Hut',
    address1: '26 Oliver Plunkett Street',
    address2: 'Mullingar, Mullingar',
    collectionType: 'Collection, Delivery',
    delivery: 'delivery from 10:50 AM',
  ),
  HomeRestaurantList(
    imageUrl: 'assets/basil-pizza.jpg',
    name: 'Papa Enthis',
    delivery: 'delivery from 10:50 AM',
    address1: 'Grange Village,Westmeath',
    address2: 'Mullingar, Mullingar',
    collectionType: 'Collection, Delivery',
  ),
  HomeRestaurantList(
    imageUrl: 'assets/basil-pizza.jpg',
    name: 'Mr Wang',
    delivery: 'delivery from 10:50 AM',
    address1: '26 Oliver Plunkett Street',
    address2: 'Mullingar, Mullingar',
    collectionType: 'Collection, Delivery',
  ),
  HomeRestaurantList(
    imageUrl: 'assets/spiceIndia.png',
    name: 'Spice India',
    delivery: 'delivery from 10:50 AM',
    address1: '26 Oliver Plunkett Street',
    address2: 'Mullingar, Mullingar',
    collectionType: 'Collection, Delivery',
  ),
  HomeRestaurantList(
    imageUrl: 'assets/chickenhut.jpg',
    name: 'Chicken nest',
    address1: '26 Oliver Plunkett Street',
    address2: 'Mullingar, Mullingar',
    collectionType: 'Collection, Delivery',
    delivery: 'delivery from 10:50 AM',
  ),
  HomeRestaurantList(
    imageUrl: 'assets/PAPA.jpg',
    name: 'Mama Enthis',
    delivery: 'delivery from 10:50 AM',
    address1: 'Grange Village,Westmeath',
    address2: 'Mullingar, Mullingar',
    collectionType: 'Collection, Delivery',
  ),
  HomeRestaurantList(
    imageUrl: 'assets/wang.jpg',
    name: 'Dr Wang',
    delivery: 'delivery from 10:50 AM',
    address1: '26 Oliver Plunkett Street',
    address2: 'Mullingar, Mullingar',
    collectionType: 'Collection, Delivery',
  ),
  HomeRestaurantList(
    imageUrl: 'assets/spiceIndia.png',
    name: 'Spice swiss',
    delivery: 'delivery from 10:50 AM',
    address1: '26 Oliver Plunkett Street',
    address2: 'Mullingar, Mullingar',
    collectionType: 'Collection, Delivery',
  ),
];
