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
  static double director_score = 0;
  static int director_id = 0;

  static String actor = "";
  static double actor_score = 0;

  static String actor2 = "";
  static double actor2_score = 0;

  static String actor3 = "";
  static double actor3_score = 0;

  static String actor4 = "";
  static double actor4_score = 0;

  static String actor5 = "";
  static double actor5_score = 0;

  static String actor6 = "";
  static double actor6_score = 0;

  static String actor7 = "";
  static double actor7_score = 0;

  static String actor8 = "";
  static double actor8_score = 0;

  static String actor9 = "";
  static double actor9_score = 0;

  static String actor10 = "";
  static double actor10_score = 0;

  static String subactor = "";
  static double subactor_score = 0;

  static String subactor2 = "";
  static double subactor2_score = 0;

  static String subactor3 = "";
  static double subactor3_score = 0;

  static String subactor4 = "";
  static double subactor4_score = 0;

  static String subactor5 = "";
  static double subactor5_score = 0;

  static String subactor6 = "";
  static double subactor6_score = 0;

  static String subactor7 = "";
  static double subactor7_score = 0;

  static String subactor8 = "";
  static double subactor8_score = 0;

  static String subactor9 = "";
  static double subactor9_score = 0;

  static String subactor10 = "";
  static double subactor10_score = 0;
}

class Directors {
  static List<DirectorInfo> directors = [];
}

class DirectorInfo {
  int director_id;
  String director_name;
  double director_score;
  String movie_name;
  String movie_imgPath;

  DirectorInfo(
      {required this.director_id,
      required this.director_name,
      required this.director_score,
      required this.movie_name,
      required this.movie_imgPath});
}

class Diracts {
  static List<DiractInfo> diracts = [];
}
class DiractInfo {
  String director_name;
  String actor_name;
  double diract_score;


  DiractInfo(
      {required this.director_name,
      required this.actor_name,
      required this.diract_score});
}

class JuActors {
  static List<JuActorInfo> juActors = [];
  static int selectIdx = -1;
  static List<double> score = [];
}

class JuActorInfo {
  String ju_actor_name;
  double juActor_score;
  String ju_movie_imgPath1;
  String ju_movie_imaPath2;

  JuActorInfo(
      {required this.ju_actor_name,
      required this.juActor_score,
      required this.ju_movie_imgPath1,
      required this.ju_movie_imaPath2});
}

class JoActors {
  static List<JoActorInfo> joActors = [];
  static int selectIdx = -1;
  static List<double> score = [];
}

class JoActorInfo {
  String jo_actor_name;
  double joActor_score;
  String jo_movie_imgPath1;
  String jo_movie_imaPath2;

  JoActorInfo(
      {required this.jo_actor_name,
      required this.joActor_score,
      required this.jo_movie_imgPath1,
      required this.jo_movie_imaPath2});
}
