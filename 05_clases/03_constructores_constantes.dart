class Location {

  final double lat;
  final double lng;

  //Constructor constante
  // Si se crean objetos con los mismos valores, 
  //Siempre apuntarán al mismo lugar en memoria
  const Location(this.lat, this.lng);


}


void main(List<String> args) {
    // Instanciar un objeto con un constructor constante
    final sanFrancisco = const Location(1.150903 , 2.355556);
    final sanFrancisco2 = const Location(1.150903 , 2.355556);

    print(sanFrancisco == sanFrancisco2);


}