import 'package:flutter/material.dart';
import 'package:mainproject/data.dart';

class Actor extends StatefulWidget {
  const Actor({Key? key}) : super(key: key);

  @override
  State<Actor> createState() => _ActorState();
}

class _ActorState extends State<Actor> {
  final TextEditingController tec1 = TextEditingController();
  late List searchindex;
  


  @override
  void initState() {
    searchindex = [];

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tec1.dispose();    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('주연'),
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
                    searchju();
                  });
                },
                controller: tec1,
                
              ),
            )
            ,
            SizedBox(
              width: 300,
              height: 500,
              child: JuActors.juActors.isEmpty
                  ? const Text('데이터가 없습니다.')
                  : tec1.text.isNotEmpty ? 
                      ListView.builder(
                      itemCount: searchindex.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              if (Message.actor.isEmpty) {
                                Message.actor =
                                    JuActors.juActors[searchindex[index]].ju_actor_name;
                                Message.actor_score =
                                    JuActors.juActors[searchindex[index]].juActor_score;
                                JuActors.selectIdx = index;
                                JoActors.score.add(Message.actor_score);
                              } else if (Message.actor2.isEmpty) {
                                Message.actor2 =
                                    JuActors.juActors[searchindex[index]].ju_actor_name;
                                Message.actor2_score =
                                    JuActors.juActors[searchindex[index]].juActor_score;
                                JuActors.selectIdx = index;
                                JoActors.score.add(Message.actor2_score);
                              } else if (Message.actor3.isEmpty) {
                                Message.actor3 =
                                    JuActors.juActors[searchindex[index]].ju_actor_name;
                                Message.actor3_score =
                                    JuActors.juActors[searchindex[index]].juActor_score;
                                JuActors.selectIdx = index;
                                JoActors.score.add(Message.actor3_score);
                              } else if (Message.actor4.isEmpty) {
                                Message.actor4 =
                                    JuActors.juActors[searchindex[index]].ju_actor_name;
                                Message.actor4_score =
                                    JuActors.juActors[searchindex[index]].juActor_score;
                                JuActors.selectIdx = index;
                                JoActors.score.add(Message.actor4_score);
                              } else if (Message.actor5.isEmpty) {
                                Message.actor5 =
                                    JuActors.juActors[searchindex[index]].ju_actor_name;
                                Message.actor5_score =
                                    JuActors.juActors[searchindex[index]].juActor_score;
                                JuActors.selectIdx = index;
                                JoActors.score.add(Message.actor5_score);
                              } else if (Message.actor6.isEmpty) {
                                Message.actor6 =
                                    JuActors.juActors[searchindex[index]].ju_actor_name;
                                Message.actor6_score =
                                    JuActors.juActors[searchindex[index]].juActor_score;
                                JuActors.selectIdx = index;
                                JoActors.score.add(Message.actor6_score);
                              } else if (Message.actor7.isEmpty) {
                                Message.actor7 =
                                    JuActors.juActors[searchindex[index]].ju_actor_name;
                                Message.actor7_score =
                                    JuActors.juActors[searchindex[index]].juActor_score;
                                JuActors.selectIdx = index;
                                JoActors.score.add(Message.actor7_score);
                              } else if (Message.actor8.isEmpty) {
                                Message.actor8 =
                                    JuActors.juActors[searchindex[index]].ju_actor_name;
                                Message.actor8_score =
                                    JuActors.juActors[searchindex[index]].juActor_score;
                                JuActors.selectIdx = index;
                                JoActors.score.add(Message.actor8_score);
                              } else if (Message.actor9.isEmpty) {
                                Message.actor9 =
                                    JuActors.juActors[searchindex[index]].ju_actor_name;
                                Message.actor9_score =
                                    JuActors.juActors[searchindex[index]].juActor_score;
                                JuActors.selectIdx = index;
                                JoActors.score.add(Message.actor9_score);
                              } else if (Message.actor10.isEmpty) {
                                Message.actor10 =
                                    JuActors.juActors[searchindex[index]].ju_actor_name;
                                Message.actor10_score =
                                    JuActors.juActors[searchindex[index]].juActor_score;
                                JuActors.selectIdx = index;
                                JoActors.score.add(Message.actor10_score);
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
                                        Text(
                                          JuActors.juActors[searchindex[index]].ju_actor_name,
                                        ),
                                        Image.asset(
                                          JuActors.juActors[searchindex[index]].ju_movie_imgPath1,
                                          height: 100,
                                          width: 100,
                                          fit: BoxFit.contain,
                                        ),
                                        Image.asset(
                                          JuActors.juActors[searchindex[index]].ju_movie_imaPath2,
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
                      itemCount: JuActors.juActors.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              if (Message.actor.isEmpty) {
                                Message.actor =
                                    JuActors.juActors[index].ju_actor_name;
                                Message.actor_score =
                                    JuActors.juActors[index].juActor_score;
                                JuActors.selectIdx = index;
                                JoActors.score.add(Message.actor_score);
                              } else if (Message.actor2.isEmpty) {
                                Message.actor2 =
                                    JuActors.juActors[index].ju_actor_name;
                                Message.actor2_score =
                                    JuActors.juActors[index].juActor_score;
                                JuActors.selectIdx = index;
                                JoActors.score.add(Message.actor2_score);
                              } else if (Message.actor3.isEmpty) {
                                Message.actor3 =
                                    JuActors.juActors[index].ju_actor_name;
                                Message.actor3_score =
                                    JuActors.juActors[index].juActor_score;
                                JuActors.selectIdx = index;
                                JoActors.score.add(Message.actor3_score);
                              } else if (Message.actor4.isEmpty) {
                                Message.actor4 =
                                    JuActors.juActors[index].ju_actor_name;
                                Message.actor4_score =
                                    JuActors.juActors[index].juActor_score;
                                JuActors.selectIdx = index;
                                JoActors.score.add(Message.actor4_score);
                              } else if (Message.actor5.isEmpty) {
                                Message.actor5 =
                                    JuActors.juActors[index].ju_actor_name;
                                Message.actor5_score =
                                    JuActors.juActors[index].juActor_score;
                                JuActors.selectIdx = index;
                                JoActors.score.add(Message.actor5_score);
                              } else if (Message.actor6.isEmpty) {
                                Message.actor6 =
                                    JuActors.juActors[index].ju_actor_name;
                                Message.actor6_score =
                                    JuActors.juActors[index].juActor_score;
                                JuActors.selectIdx = index;
                                JoActors.score.add(Message.actor6_score);
                              } else if (Message.actor7.isEmpty) {
                                Message.actor7 =
                                    JuActors.juActors[index].ju_actor_name;
                                Message.actor7_score =
                                    JuActors.juActors[index].juActor_score;
                                JuActors.selectIdx = index;
                                JoActors.score.add(Message.actor7_score);
                              } else if (Message.actor8.isEmpty) {
                                Message.actor8 =
                                    JuActors.juActors[index].ju_actor_name;
                                Message.actor8_score =
                                    JuActors.juActors[index].juActor_score;
                                JuActors.selectIdx = index;
                                JoActors.score.add(Message.actor8_score);
                              } else if (Message.actor9.isEmpty) {
                                Message.actor9 =
                                    JuActors.juActors[index].ju_actor_name;
                                Message.actor9_score =
                                    JuActors.juActors[index].juActor_score;
                                JuActors.selectIdx = index;
                                JoActors.score.add(Message.actor9_score);
                              } else if (Message.actor10.isEmpty) {
                                Message.actor10 =
                                    JuActors.juActors[index].ju_actor_name;
                                Message.actor10_score =
                                    JuActors.juActors[index].juActor_score;
                                JuActors.selectIdx = index;
                                JoActors.score.add(Message.actor10_score);
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
                                        Text(
                                          JuActors.juActors[index].ju_actor_name,
                                        ),
                                        Image.asset(
                                          JuActors.juActors[index].ju_movie_imgPath1,
                                          height: 100,
                                          width: 100,
                                          fit: BoxFit.contain,
                                        ),
                                        Image.asset(
                                          JuActors.juActors[index].ju_movie_imaPath2,
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

  // functions 

  searchju(){
    setState(() {
      
    for (int i = 0 ; i < JuActors.juActors.length ; i++){
      if(JuActors.juActors[i].ju_actor_name.length >= tec1.text.length){
        if(JuActors.juActors[i].ju_actor_name.substring(0, tec1.text.length) == tec1.text ){
          searchindex.add(i);
        }
      }
    }
    });
  }
}// End