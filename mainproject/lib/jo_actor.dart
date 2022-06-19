import 'package:flutter/material.dart';
import 'package:mainproject/data.dart';

class Actor2 extends StatefulWidget {
  const Actor2({Key? key}) : super(key: key);

  @override
  State<Actor2> createState() => _Actor2State();
}

class _Actor2State extends State<Actor2> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('조연'),
      ),
      body: Center(
        //loading 화면때문에
        child: JoActors.joActors.isEmpty
            ? const Text('데이터가 없습니다.')
            : ListView.builder(
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
    );
  }
}// End