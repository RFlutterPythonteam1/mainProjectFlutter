import 'package:flutter/material.dart';
import 'package:mainproject/data.dart';

class JoActorShow extends StatefulWidget {
  const JoActorShow({Key? key}) : super(key: key);

  @override
  State<JoActorShow> createState() => _JoActorShowState();
}

class _JoActorShowState extends State<JoActorShow> {
  late String director;
  late List dirname;
  late List imgindex;
  late List temp;

  final TextEditingController tec1 = TextEditingController();
  late List searchindex;

  @override
  void initState() {
    super.initState();
    print('debug ju_test :${JoActors.joActors.length}');
    dirname = [];
    imgindex = [];
    temp = [];
    for (int i = 0; i < JoActors.joActors.length; i++) {
      if (i != JoActors.joActors.length - 1) {
        if (JoActors.joActors[i].jo_actor_name ==
            JoActors.joActors[i + 1].jo_actor_name) {
          temp.add(i);
        } else {
          temp.add(i);
          dirname.add(JoActors.joActors[i].jo_actor_name);
          imgindex.add(temp);
          temp = [];
        }
      } else {
        temp.add(JoActors.joActors.length - 1);
        imgindex.add(temp);
        temp = [];
        dirname
            .add(JoActors.joActors[JoActors.joActors.length - 1].jo_actor_name);
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
              child: JoActors.joActors.isEmpty
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
      for (int i = 0; i < JoActors.joActors.length; i++) {
        if (JoActors.joActors[i].jo_actor_name.length >= tec1.text.length) {
          if (JoActors.joActors[i].jo_actor_name
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
        JoActors.joActors[imgindex[index][i]].jo_movie_imgPath,
        height: 100,
        width: 100,
        fit: BoxFit.contain,
      ));
    }
    return Row(children: resultList);
  }
}// End

