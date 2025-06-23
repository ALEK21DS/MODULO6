class Libro {
  String ISBN;
  String titulo;
  int? numeroPaginas;
  String? descripcion;
  Libro(this.ISBN, this.titulo, int? numeroPaginas, String? descripcion){
    this.numeroPaginas = numeroPaginas;
    this.descripcion = descripcion;
  }
}

void main () {
  final l1 = Libro("0012-0321", "Ozma of oz", 274, "Ozma is the rightful and immortal ruler of Oz, described in The Marvelous Land of Oz as having eyes that sparkled as two diamonds, and lips tinted like a tourmaline, with ruddy gold hair and a jeweled circlet");
  print('ISBN: ${l1.ISBN} \nTitulo: ${l1.titulo} \nPaginas: ${l1.numeroPaginas} \nDescripcion: \n${l1.descripcion}');
}