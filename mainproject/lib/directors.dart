import 'package:flutter/material.dart';
import 'package:mainproject/data.dart';

class Director extends StatefulWidget {
  const Director({Key? key}) : super(key: key);

  @override
  State<Director> createState() => _DirectorState();
}

class _DirectorState extends State<Director> {
  late String director;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('감독'),
      ),
      body: Center(
        //loading 화면때문에
        child: Directors.directors.isEmpty
            ? const Text('데이터가 없습니다.')
            : ListView.builder(
                itemCount: Directors.directors.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Message.msg = Directors.directors[index].director_name;
                        Message.director_score =
                            Directors.directors[index].director_score;
                        Message.director_id =
                            Directors.directors[index].director_id;

                        Navigator.pop(context);
                      },
                      child: Card(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: Text(
                                      Directors.directors[index].director_name,
                                    ),
                                  ),
                                  Image.asset(
                                    Directors.directors[index].movie_imgPath,
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

  //

}// End

