class Distributor {
  static List<String> distributor_name = [];
  static List<int> distributor_score = [];
}

class Genre {
  static List<String> genre = [];
  static List<int> genre_score = [];
}

class Message {
  static String msg = "";
  static int director_score = 0;
  static int director_id = 0;
  static String actor = "";
  static String actor2 = "";
  static String actor3 = "";
  static String actor4 = "";
  static String actor5 = "";
  static String actor6 = "";
  static String actor7 = "";
  static String actor8 = "";
  static String actor9 = "";
  static String actor10 = "";
  static String subactor = "";
  static String subactor2 = "";
  static String subactor3 = "";
  static String subactor4 = "";
  static String subactor5 = "";
  static String subactor6 = "";
  static String subactor7 = "";
  static String subactor8 = "";
  static String subactor9 = "";
  static String subactor10 = "";
}

class Directors {
  static List<DirectorInfo> directors = [];
}

class DirectorInfo {
  int director_id;
  String director_name;
  int director_score;
  String movie_name;
  String movie_imgPath;

  DirectorInfo(
      {required this.director_id,
      required this.director_name,
      required this.director_score,
      required this.movie_name,
      required this.movie_imgPath});
}

class JuActors {
  static List<JuActorInfo> juActors = [];
}

class JuActorInfo {
  int juActor_id;
  int juActor_score;
  String ju_movie_name;
  String ju_movie_imgPath;

  JuActorInfo(
      {required this.juActor_id,
      required this.juActor_score,
      required this.ju_movie_name,
      required this.ju_movie_imgPath});
}
