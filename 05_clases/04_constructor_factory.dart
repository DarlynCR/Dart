class Figura {

  int? base;
  int? altura;
  int? area;
  String? tipo;
  // No retorna una instancia de sí mismo, sino de los otros constructores
  factory Figura(int base, int altura){
    // Dependiendo de lo que se necesite retorna un objeto 
    // utilizando un constructor diferente
    if(base == altura){
      return Figura.cuadrado(base);
    }else{
      return Figura.rectangulo(base, altura);
    }

  }

  Figura.cuadrado(int base){
    this.base = base;
    this.altura = base;
    this.area = base * base;
    this.tipo = 'Cuadrado';
  }

  Figura.rectangulo(int base, int altura){
    this.base = base;
    this.altura = altura;
    this.area = base * altura;
    this.tipo = 'Rectángulo';
  }

  @override
  String toString() {
    return {'base' : base, 'altura' : altura, 'area' : area, 'tipo' : tipo}.toString();
  }

}

void main(List<String> args) {
  

  final cuadrado = new Figura(10,10);
  final rectangulo = new Figura(10, 20);

  print(cuadrado);
  print(rectangulo);


}