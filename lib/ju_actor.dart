import 'package:flutter/material.dart';
import 'package:mainproject/data.dart';

class JuActor extends StatefulWidget {
  const JuActor({Key? key}) : super(key: key);

  @override
  State<JuActor> createState() => _JuActorState();
}

class _JuActorState extends State<JuActor> {
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
                decoration:
                    const InputDecoration(prefixIcon: Icon(Icons.search)),
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
                                  Message.msg = JuActors
                                      .juActors[imgindex[searchindex[index]][0]]
                                      .ju_actor_name;
                                  Message.temp_actor_score = double.parse(
                                      JuActors
                                          .juActors[imgindex[searchindex[index]]
                                              [0]]
                                          .juActor_score);
                                  setJuActorData(index);

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
                                  Message.msg = JuActors
                                      .juActors[imgindex[index][0]]
                                      .ju_actor_name;
                                  Message.subactor_score = double.parse(JuActors
                                      .juActors[imgindex[index][0]]
                                      .juActor_score);
                                  setJuActorData(index);

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

      for (int i = 0; i < dirname.length; i++) {
        if (dirname[i].length >= tec1.text.length) {
          if (dirname[i].substring(0, tec1.text.length) == tec1.text) {
            searchindex.add(i);
          }
        }
      }
    });
  }

  setJuActorData(int index) {
    for (int i = 0; i < imgindex[index].length; i++) {
      JuActors.juActors.removeAt((imgindex[index][0]));
    }
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

