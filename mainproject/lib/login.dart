import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mainproject/data.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController idcontroller;
  late TextEditingController pwcontroller;
  late String errMessage;
  late bool check;

  @override
  void initState() {
    super.initState();
    idcontroller = TextEditingController();
    pwcontroller = TextEditingController();
    check = false;
    getDistributorInfo();
    getGenreInfo();
    getDirectorInfo();
    getDiractInfo();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 28, 26, 26),
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        primary: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [      
            Image.asset("images/movieposter/film.png"), 
                SizedBox(
                  height: 100,
                ),
                const Text(
                  '로그인',
                  style: TextStyle(
                    fontSize: 40,
                    letterSpacing: 5,
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                  ),
                ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                 style: TextStyle(color: Colors.white),
                controller: idcontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  hintText: '아이디를 입력해주세요.',
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                 style: TextStyle(color: Colors.white),
                controller: pwcontroller,
                 obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                  
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  hintText: '비밀번호를 입력해주세요.',
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (inputDataCheck()) {
                      insertAction();
                    }
              },
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 119, 192, 168), // Background color
                ),
              child: Text('로그인'),
              
            ),
             SizedBox(
              height: 30,
            ),
            Image.asset("images/movieposter/film_b.png"), 
            SizedBox(
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: Text(
                  '회원가입',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
      ),
    );
  }

//function

  bool inputDataCheck() {
    if (idcontroller.text.trim().isEmpty) {
      errMessage = "ID를 입력해주세요";
      check = false;
      errorSnackBar(context);
    } else {
      // ID를 입력했으면
      if (pwcontroller.text.trim().isEmpty) {
        // 패스워드를 입력하지 않으면
        errMessage = "Password를 입력해주세요";
        check = false;
        errorSnackBar(context);
      } else {
        check = true;
      }
    }
    return check;
  }

  errorSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(errMessage),
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.red,
      ),
    );
  }

  insertAction() async {
    var url = Uri.parse(
        'http://localhost:8080/Flutter/movie_login.jsp?u_id=${idcontroller.text.trim()}');
    var response = await http.get(url);
    //print('debug: $url');

    setState(() {
      var dataConvertedJSON = json.decode(utf8.decode(response.bodyBytes));
      var result = dataConvertedJSON['results'];
      //print('debug : $result');

      if (int.parse(result[0]['count']) > 0) {
        if (pwcontroller.text.trim() != result[0]['u_pw']) {
          errMessage = "패스워드를 확인해주세요";
          errorSnackBar(context);
        } else {
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Log in'),
                  content: const Text('로그인이 완료되었습니다.'),
                  actions: [
                    TextButton(
                        onPressed: () {
                          idcontroller.clear();
                          pwcontroller.clear();

                          Navigator.of(context).pop();
                          Navigator.pushNamed(context, '/menu');
                          //Navigator.pushNamed(context, '/T');
                        },
                        child: const Text('확인'))
                  ],
                );
              });
        }
      } else {
        errMessage = "id를 확인해주세요";
        errorSnackBar(context);
      }
    });
  }

  getDistributorInfo() async {
    var url =
        Uri.parse('http://localhost:8080/Flutter/movie_distributor.jsp');
    var response = await http.get(url);
    //print('debug :$url');
    setState(() {
      var dataConvertedJSON = json.decode(utf8.decode(response.bodyBytes));
      List result = dataConvertedJSON['results'];
      Distributor.distributor_name.clear();
      Distributor.distributor_score.clear();
      for (int i = 0; i < result.length; i++) {
        Distributor.distributor_name.add(result[i]['distributor_name']);
        Distributor.distributor_score
            .add(int.parse(result[i]['distributor_score']));
      }
      //print(MovieData.distributor);
    });
  }

  getGenreInfo() async {
    var url = Uri.parse('http://localhost:8080/Flutter/movie_genre.jsp');
    var response = await http.get(url);
    setState(() {
      var dataConvertedJSON = json.decode(utf8.decode(response.bodyBytes));
      List result = dataConvertedJSON['results'];
      //print('debug :$result');
      Genre.genre.clear();
      Genre.genre_score.clear();
      for (int i = 0; i < result.length; i++) {
        Genre.genre.add(result[i]['genre_name']);
        Genre.genre_score.add(int.parse(result[i]['genre_score']));
      }
    });
  }

  getDirectorInfo() async {
    var url = Uri.parse('http://localhost:8080/Flutter/movie_directors.jsp');
    var response = await http.get(url);
    setState(() {
      var dataConvertedJSON = json.decode(utf8.decode(response.bodyBytes));
      List result = dataConvertedJSON['results'];
      //print('debug :$result');
      Directors.directors.clear();
      for (int i = 0; i < result.length; i++) {
        Directors.directors.add(DirectorInfo(
            director_id: int.parse(result[i]['director_id']),
            director_name: result[i]['director_name'],
            director_score: double.parse(result[i]['director_score']),
            movie_name: result[i]['movie_name'],
            movie_imgPath: result[i]['movie_imgPath']));
      }
      //print(Directors.directors[0].director_name);
    });
  }

  getDiractInfo() async{
    var url = Uri.parse('http://localhost:8080/Flutter/movie_director_actor.jsp');
    var response = await http.get(url);
    setState(() {
      var dataConvertedJSON = json.decode(utf8.decode(response.bodyBytes));
      List result = dataConvertedJSON['results'];
      //print('debug :$result');
      Diracts.diracts.clear();
      for (int i = 0; i < result.length; i++) {
        Diracts.diracts.add(DiractInfo(

            director_name: result[i]['director_name'],
            actor_name: result[i]['actor_name'],
            diract_score: double.parse(result[i]['director_actor_score']),
        ));
      }
      //print(Directors.directors[0].director_name);
    });
  }
}//end


    



    