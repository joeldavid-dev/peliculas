class Peliculas {
  List<Pelicula> items = new List();

  Peliculas();

  Peliculas.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final pelicula = new Pelicula.fromJsonMap(item);
      items.add(pelicula);
    }
  }
}

class Pelicula {
  bool video;
  double voteAverage;
  double popularity;
  String overview;
  String releaseDate;
  bool adult;
  String backdropPath;
  int id;
  List<int> genreIds;
  String title;
  String originalLanguage;
  String originalTitle;
  String posterPath;
  int voteCount;

  Pelicula({
    this.video,
    this.voteAverage,
    this.popularity,
    this.overview,
    this.releaseDate,
    this.adult,
    this.backdropPath,
    this.id,
    this.genreIds,
    this.title,
    this.originalLanguage,
    this.originalTitle,
    this.posterPath,
    this.voteCount,
  });

  Pelicula.fromJsonMap(Map<String, dynamic> json) {
    voteCount = json['vote_count'];
    id = json['id'];
    video = json['video'];
    voteAverage = json['vote_average'] / 1;
    title = json['title'];
    popularity = json['popularity'] / 1;
    posterPath = json['poster_path'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    genreIds = json['genre_ids'].cast<int>();
    backdropPath = json['backdrop_path'];
    adult = json['adult'];
    overview = json['overview'];
    releaseDate = json['relase_date'];
  }
}
