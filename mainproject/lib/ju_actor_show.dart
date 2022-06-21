import 'package:flutter/material.dart';
import 'package:mainproject/data.dart';

class JuActorShow extends StatefulWidget {
  const JuActorShow({Key? key}) : super(key: key);

  @override
  State<JuActorShow> createState() => _JuActorShowState();
}

class _JuActorShowState extends State<JuActorShow> {
  late String director;
  late List dirname;
  late List imgindex;
  late List temp;

  final TextEditingController tec1 = TextEditingController();
  late List searchindex;

  @override
  void initState() {
    super.initState();
    //print('debug ju_test :${JuActors.juActors.length}');
    dirname = [];
    imgindex = [];
    temp = [];
    for (int i = 0; i < JuActors.juActors.length; i++) {
      if (i != JuActors.juActors.length - 1) {
        if (JuActors.juActors[i].ju_actor_name ==
            JuActors.juActors[i + 1].ju_actor_name) {
          temp.add(i);
        } else {
          temp.add(i);
          dirname.add(JuActors.juActors[i].ju_actor_name);
          imgindex.add(temp);
          temp = [];
        }
      } else {
        temp.add(JuActors.juActors.length - 1);
        imgindex.add(temp);
        temp = [];
        dirname
            .add(JuActors.juActors[JuActors.juActors.length - 1].ju_actor_name);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('주연배우'),
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
              child: JuActors.juActors.isEmpty
                  ? const Text('데이터가 없습니다.')
                  : tec1.text.isNotEmpty
                      ? ListView.builder(
                          itemCount: searchindex.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
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
                        )
                      : ListView.builder(
                          itemCount: dirname.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
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
      for (int i = 0; i < JuActors.juActors.length; i++) {
        if (JuActors.juActors[i].ju_actor_name.length >= tec1.text.length) {
          if (JuActors.juActors[i].ju_actor_name
                  .substring(0, tec1.text.length) ==
              tec1.text) {
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
        JuActors.juActors[imgindex[index][i]].ju_movie_imgPath,
        height: 100,
        width: 100,
        fit: BoxFit.contain,
      ));
    }
    return Row(children: resultList);
  }
}// End

