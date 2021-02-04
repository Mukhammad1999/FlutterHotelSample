class Hotel{
  String imageUrl;
  String name;
  String address;
  int price;


  Hotel({
    this.price,
    this.imageUrl,
    this.name,
    this.address,
});
}


final List<Hotel> hotels =[
    Hotel(
      price: 1750000,
      imageUrl: 'assets/images/hotel1.jpg',
      address: '404 Great St',
      name: 'Hotel'
    ),

  Hotel(
      price: 1850000,
      imageUrl: 'assets/images/hotel2.jpg',
      address: '404 Great St',
      name: 'Hotel'
  ),
  Hotel(
      price: 1850000,
      imageUrl: 'assets/images/hotel3.jpg',
      address: '404 Great St',
      name: 'Hotel'
  ),


  Hotel(
      price: 1950000,
      imageUrl: 'assets/images/hotel4.jpg',
      address: '404 Great St',
      name: 'Hotel'
  ),


];

