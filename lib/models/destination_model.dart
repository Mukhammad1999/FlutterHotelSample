import 'activity_model.dart';


class Destination{
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;


  Destination({
  this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities
  });
}



List<Activity> activities = [

  Activity(
    imageUrl: 'assets/images/maguro.jpg',
    name: 'Поездка к реке Ма\'гуро',
    type: 'Отдых',
    startTime: ['9 утра', '11 утра'],
    rating: 5,
    price: 300,
  ),
  Activity(
    imageUrl: 'assets/images/chief-inside.jpg',
    name: 'Мастер класс от повара у горы Ниябуза',
    type: 'Еда и ресторан',
    startTime: ['11 ночи', '1 утра'],
    rating: 4,
    price: 440,
  ),
  Activity(
    imageUrl: 'assets/images/bamboo-jungle.jpg',
    name: 'Бамбуковый лес у Храма Миядзаки',
    type: 'Просветление, Отдых',
    startTime: ['9.30 утра', '12 дня'],
    rating: 5,
    price: 700,
  )
];


List<Destination> destinnations = [
  Destination(
    imageUrl: 'assets/images/china.jpg',
    city:'Pekin',
    country: 'China',
    description:'Visit China for an amazing and unforgettable experience',
    activities: activities
  ),
  Destination(
      imageUrl: 'assets/images/japan.jpg',
      city:'Tokyo',
      country: 'Japan',
      description:'Visit Japan for an amazing and unforgettable experience',
      activities: activities
  ),
  Destination(
      imageUrl: 'assets/images/denmark.jpg',
      city:'Copenhagen',
      country: 'Denmark',
      description:'Visit Denmark for an amazing and unforgettable experience',
      activities: activities
  ),
  Destination(
      imageUrl: 'assets/images/seoul.jpg',
      city:'Seoul',
      country: 'South Korea',
      description:'Visit South Korea for an amazing and unforgettable experience',
      activities: activities
  ),
  Destination(
      imageUrl: 'assets/images/london.jpg',
      city:'London',
      country: 'Great Britain',
      description:'Visit Great Britain for an amazing and unforgettable experience',
      activities: activities
  ),
  Destination(
      imageUrl: 'assets/images/spain.jpg',
      city:'Madrid',
      country: 'Spain',
      description:'Visit Spain for an amazing and unforgettable experience',
      activities: activities
  ),
  Destination(
      imageUrl: 'assets/images/russia.jpg',
      city:'Moscow',
      country: 'Russia',
      description:'Visit Russia for an amazing and unforgettable experience',
      activities: activities
  ),

  Destination(
      imageUrl: 'assets/images/paris.jpg',
      city:'Paris',
      country: 'France',
      description:'Visit France for an amazing and unforgettable experience',
      activities: activities
  ),



];


