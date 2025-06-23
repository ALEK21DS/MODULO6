class Tienda {
  static const String nombre = "ALEK'S STORE";
  static String anuncio = "";
  static int _productosVendidos = 0;


  static void cambiarAnuncio (String texto) {
    anuncio = texto;
  }
  static aumentarVentas () {
    _productosVendidos++;
  }
  static obtenerVentas() {
    return _productosVendidos;
  }

}
