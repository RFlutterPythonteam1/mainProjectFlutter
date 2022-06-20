import 'package:flutter/material.dart';
import 'package:mainproject/data.dart';

class Actor2 extends StatefulWidget {
  const Actor2({Key? key}) : super(key: key);
  

  @override
  State<Actor2> createState() => _Actor2State();
}

class _Actor2State extends State<Actor2> {
  final TextEditingController tec1 = TextEditingController();
  late List searchindex;


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose\
    tec1.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('조연'),
      ),
      body: SingleChildScrollView(
        reverse:  true,
        child: 
        Column(
          children: [
            SizedBox(
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    searchindex = [];
                    searchjo();
                  });
                },
                controller: tec1,
              ),
            )
            ,
            SizedBox(
              width: 300,
              height: 500,
              child: JoActors.joActors.isEmpty
                  ? const Text('데이터가 없습니다.')
                  : tec1.text.isNotEmpty? 
                    ListView.builder(
                      itemCount: searchindex.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              if (Message.subactor.isEmpty) {
                                Message.subactor =
                                    JoActors.joActors[searchindex[index]].jo_actor_name;
                                Message.subactor_score =
                                    JoActors.joActors[searchindex[index]].joActor_score;
                                JoActors.selectIdx = index;
                              } else if (Message.subactor2.isEmpty) {
                                Message.subactor2 =
                                    JoActors.joActors[searchindex[index]].jo_actor_name;
                                Message.subactor2_score =
                                    JoActors.joActors[searchindex[index]].joActor_score;
                                JoActors.selectIdx = index;
                              } else if (Message.subactor3.isEmpty) {
                                Message.subactor3 =
                                    JoActors.joActors[searchindex[index]].jo_actor_name;
                                Message.subactor3_score =
                                    JoActors.joActors[searchindex[index]].joActor_score;
                                JoActors.selectIdx = index;
                              } else if (Message.subactor4.isEmpty) {
                                Message.subactor4 =
                                    JoActors.joActors[searchindex[index]].jo_actor_name;
                                Message.subactor4_score =
                                    JoActors.joActors[searchindex[index]].joActor_score;
                                JoActors.selectIdx = index;
                              } else if (Message.subactor5.isEmpty) {
                                Message.subactor5 =
                                    JoActors.joActors[searchindex[index]].jo_actor_name;
                                Message.subactor5_score =
                                    JoActors.joActors[searchindex[index]].joActor_score;
                                JoActors.selectIdx = index;
                              } else if (Message.subactor6.isEmpty) {
                                Message.subactor6 =
                                    JoActors.joActors[searchindex[index]].jo_actor_name;
                                Message.subactor6_score =
                                    JoActors.joActors[searchindex[index]].joActor_score;
                                JoActors.selectIdx = index;
                              } else if (Message.subactor7.isEmpty) {
                                Message.subactor7 =
                                    JoActors.joActors[searchindex[index]].jo_actor_name;
                                Message.subactor7_score =
                                    JoActors.joActors[searchindex[index]].joActor_score;
                                JoActors.selectIdx = index;
                              } else if (Message.subactor8.isEmpty) {
                                Message.subactor8 =
                                    JoActors.joActors[searchindex[index]].jo_actor_name;
                                Message.subactor8_score =
                                    JoActors.joActors[searchindex[index]].joActor_score;
                                JoActors.selectIdx = index;
                              } else if (Message.subactor9.isEmpty) {
                                Message.subactor9 =
                                    JoActors.joActors[searchindex[index]].jo_actor_name;
                                Message.subactor9_score =
                                    JoActors.joActors[searchindex[index]].joActor_score;
                                JoActors.selectIdx = index;
                              } else if (Message.subactor10.isEmpty) {
                                Message.subactor10 =
                                    JoActors.joActors[searchindex[index]].jo_actor_name;
                                Message.subactor10_score =
                                    JoActors.joActors[searchindex[index]].joActor_score;
                                JoActors.selectIdx = index;
                              }
                              Navigator.of(context).pop;
                              Navigator.pop(context);
                            },
                            child: Card(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(JoActors.joActors[searchindex[index]].jo_actor_name),
                                        Image.asset(
                                          JoActors.joActors[searchindex[index]].jo_movie_imgPath1,
                                          height: 100,
                                          width: 100,
                                          fit: BoxFit.contain,
                                        ),
                                        Image.asset(
                                          JoActors.joActors[searchindex[index]].jo_movie_imaPath2,
                                          height: 100,
                                          width: 100,
                                          fit: BoxFit.contain,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )
                    :
                    ListView.builder(
                      itemCount: JoActors.joActors.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              if (Message.subactor.isEmpty) {
                                Message.subactor =
                                    JoActors.joActors[index].jo_actor_name;
                                Message.subactor_score =
                                    JoActors.joActors[index].joActor_score;
                                JoActors.selectIdx = index;
                              } else if (Message.subactor2.isEmpty) {
                                Message.subactor2 =
                                    JoActors.joActors[index].jo_actor_name;
                                Message.subactor2_score =
                                    JoActors.joActors[index].joActor_score;
                                JoActors.selectIdx = index;
                              } else if (Message.subactor3.isEmpty) {
                                Message.subactor3 =
                                    JoActors.joActors[index].jo_actor_name;
                                Message.subactor3_score =
                                    JoActors.joActors[index].joActor_score;
                                JoActors.selectIdx = index;
                              } else if (Message.subactor4.isEmpty) {
                                Message.subactor4 =
                                    JoActors.joActors[index].jo_actor_name;
                                Message.subactor4_score =
                                    JoActors.joActors[index].joActor_score;
                                JoActors.selectIdx = index;
                              } else if (Message.subactor5.isEmpty) {
                                Message.subactor5 =
                                    JoActors.joActors[index].jo_actor_name;
                                Message.subactor5_score =
                                    JoActors.joActors[index].joActor_score;
                                JoActors.selectIdx = index;
                              } else if (Message.subactor6.isEmpty) {
                                Message.subactor6 =
                                    JoActors.joActors[index].jo_actor_name;
                                Message.subactor6_score =
                                    JoActors.joActors[index].joActor_score;
                                JoActors.selectIdx = index;
                              } else if (Message.subactor7.isEmpty) {
                                Message.subactor7 =
                                    JoActors.joActors[index].jo_actor_name;
                                Message.subactor7_score =
                                    JoActors.joActors[index].joActor_score;
                                JoActors.selectIdx = index;
                              } else if (Message.subactor8.isEmpty) {
                                Message.subactor8 =
                                    JoActors.joActors[index].jo_actor_name;
                                Message.subactor8_score =
                                    JoActors.joActors[index].joActor_score;
                                JoActors.selectIdx = index;
                              } else if (Message.subactor9.isEmpty) {
                                Message.subactor9 =
                                    JoActors.joActors[index].jo_actor_name;
                                Message.subactor9_score =
                                    JoActors.joActors[index].joActor_score;
                                JoActors.selectIdx = index;
                              } else if (Message.subactor10.isEmpty) {
                                Message.subactor10 =
                                    JoActors.joActors[index].jo_actor_name;
                                Message.subactor10_score =
                                    JoActors.joActors[index].joActor_score;
                                JoActors.selectIdx = index;
                              }
                              Navigator.of(context).pop;
                              Navigator.pop(context);
                            },
                            child: Card(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Text(JoActors.joActors[index].jo_actor_name),
                                        Image.asset(
                                          JoActors.joActors[index].jo_movie_imgPath1,
                                          height: 100,
                                          width: 100,
                                          fit: BoxFit.contain,
                                        ),
                                        Image.asset(
                                          JoActors.joActors[index].jo_movie_imaPath2,
                                          height: 100,
                                          width: 100,
                                          fit: BoxFit.contain,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
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

  // function
  searchjo(){
    setState(() {
      
    for (int i = 0 ; i < JoActors.joActors.length ; i++){
      if(JoActors.joActors[i].jo_actor_name.length >= tec1.text.length){
        if(JoActors.joActors[i].jo_actor_name.substring(0, tec1.text.length) == tec1.text ){
          searchindex.add(i);
        }
      }
    }
    });
  }

}// End