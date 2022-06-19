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
  static int actor_score = 0;

  static String actor2 = "";
  static int actor2_score = 0;

  static String actor3 = "";
  static int actor3_score = 0;

  static String actor4 = "";
  static int actor4_score = 0;

  static String actor5 = "";
  static int actor5_score = 0;

  static String actor6 = "";
  static int actor6_score = 0;

  static String actor7 = "";
  static int actor7_score = 0;

  static String actor8 = "";
  static int actor8_score = 0;

  static String actor9 = "";
  static int actor9_score = 0;

  static String actor10 = "";
  static int actor10_score = 0;

  static String subactor = "";
  static int subactor_score = 0;

  static String subactor2 = "";
  static int subactor2_score = 0;

  static String subactor3 = "";
  static int subactor3_score = 0;

  static String subactor4 = "";
  static int subactor4_score = 0;

  static String subactor5 = "";
  static int subactor5_score = 0;

  static String subactor6 = "";
  static int subactor6_score = 0;

  static String subactor7 = "";
  static int subactor7_score = 0;

  static String subactor8 = "";
  static int subactor8_score = 0;

  static String subactor9 = "";
  static int subactor9_score = 0;

  static String subactor10 = "";
  static int subactor10_score = 0;
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
  static int selectIdx = -1;
  static List<int> score = [];
}

class JuActorInfo {
  String ju_actor_name;
  int juActor_score;
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
  static List<int> score = [];
}

class JoActorInfo {
  String jo_actor_name;
  int joActor_score;
  String jo_movie_imgPath1;
  String jo_movie_imaPath2;

  JoActorInfo(
      {required this.jo_actor_name,
      required this.joActor_score,
      required this.jo_movie_imgPath1,
      required this.jo_movie_imaPath2});
}
