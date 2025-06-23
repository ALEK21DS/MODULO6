class Pelicula {
  String? titulo;
  int? anio;

  Pelicula(this.titulo, this.anio);
}

void main () {
  Map<String, List<Pelicula>> catalogoStreaming = {
    'Netflix': [Pelicula('Trolls', 2016), Pelicula('Sing', 2016)],
    'HBO': [Pelicula('Barbie', 2023), Pelicula('Aquaman', 2018)],
    'Disney+': [Pelicula('Luca', 2021), Pelicula('Red', 2022)],
  };

  print('Peliculas de Netflix:');
  for (int i = 0; i < catalogoStreaming['Netflix']!.length; i++) {
    List<Pelicula> peliculas = catalogoStreaming['Netflix']!;
    print(peliculas[i].titulo);
  }

  catalogoStreaming['Disney+']!.add(Pelicula('Elemental', 2023));
  catalogoStreaming['HBO']![1].anio = 2020;
  catalogoStreaming['Netflix']!.removeAt(1);

  List<String> plataformas = catalogoStreaming.keys.toList(); 
  for (int j = 0; j < plataformas.length; j++) {
    print('Plataforma: ${plataformas[j]}');

    List<Pelicula> peliculas = catalogoStreaming[plataformas[j]]!;
    for (int k = 0; k < peliculas.length; k++) {
      print('- ${peliculas[k].titulo} (${peliculas[k].anio})');
    }
  }
}
