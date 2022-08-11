class Cuadrado {
  final int lado;
  final int area;

  // Declaración para inicializar variables final en el constuctor
  Cuadrado(int lado):
    this.lado = lado,
    this.area = lado * lado;
  

}




void main(List<String> args) {
  
  final cuadrado = new Cuadrado(10);

  print(cuadrado.area);


}