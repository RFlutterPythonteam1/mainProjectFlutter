import 'package:flutter/material.dart';
import 'package:mainproject/data.dart';

class Director extends StatefulWidget {
  const Director({Key? key}) : super(key: key);

  @override
  State<Director> createState() => _DirectorState();
}

class _DirectorState extends State<Director> {
  late String director;
  late List dirname;
  late List imgindex;
  late List temp;

  final TextEditingController tec1 = TextEditingController();
  late List searchindex;

  @override
  void initState() {
    super.initState();
    dirname = [];
    imgindex = [];
    temp = [];
    for (int i = 0; i < Directors.directors.length; i++) {
      if (i != Directors.directors.length - 1) {
        if (Directors.directors[i].director_name ==
            Directors.directors[i + 1].director_name) {
          temp.add(i);
        } else {
          temp.add(i);
          dirname.add(Directors.directors[i].director_name);
          imgindex.add(temp);
          temp = [];
        }
      } else {
        temp.add(Directors.directors.length - 1);
        imgindex.add(temp);
        temp = [];
        dirname.add(
            Directors.directors[Directors.directors.length - 1].director_name);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('감독'),
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            SizedBox(
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    searchindex = [];
                    searchdir();
                  });
                },
                controller: tec1,
              ),
            ),
            SizedBox(
              width: 300,
              height: 500,
              child: Directors.directors.isEmpty
                  ? const Text('데이터가 없습니다.')
                  : tec1.text.isNotEmpty
                      ? ListView.builder(
                          itemCount: searchindex.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Message.msg = Directors
                                      .directors[imgindex[searchindex[index]]
                                          [0]]
                                      .director_name;
                                  Message.director_score = Directors
                                      .directors[imgindex[searchindex[index]]
                                          [0]]
                                      .director_score;
                                  Message.director_id = Directors
                                      .directors[imgindex[searchindex[index]]
                                          [0]]
                                      .director_id;

                                  Navigator.pop(context);
                                },
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: SizedBox(
                                    width: 800,
                                    child: Card(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      30.0),
                                                  child: SizedBox(
                                                    width: 50,
                                                    child: Text(dirname[searchindex[index]]),
                                                  ),
                                                ),
                                                poster(searchindex[index]),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        )
                      : ListView.builder(
                          itemCount: dirname.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Message.msg = Directors
                                      .directors[imgindex[index][0]]
                                      .director_name;
                                  Message.director_score = Directors
                                      .directors[imgindex[index][0]]
                                      .director_score;
                                  Message.director_id = Directors
                                      .directors[imgindex[index][0]]
                                      .director_id;

                                  Navigator.pop(context);
                                },
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: SizedBox(
                                    width: 800,
                                    child: Card(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      30.0),
                                                  child: SizedBox(
                                                    width: 50,
                                                    child: Text(dirname[index]),
                                                  ),
                                                ),
                                                poster(index),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
            ),
          ],
        ),
      ),
    );
  }

  //functions

  searchdir() {
      setState(() {
      searchindex = [];
      
    for (int i = 0 ; i < dirname.length ; i++){
      if(dirname[i].length >= tec1.text.length){
        if(dirname[i].substring(0, tec1.text.length) == tec1.text ){
          searchindex.add(i);
        }
      }
    }
    });
  }

  Widget poster(int index) {
    List<Widget> resultList = [];
    for (int i = 0; i < imgindex[index].length; i++) {
      resultList.add(Image.asset(
        Directors.directors[imgindex[index][i]].movie_imgPath,
        height: 100,
        width: 100,
        fit: BoxFit.contain,
      ));
    }
    ;
    return Row(children: resultList);
  }
}// End

