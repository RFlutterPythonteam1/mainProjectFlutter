import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mainproject/data.dart';
import 'package:http/http.dart' as http;

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  late TextEditingController dcontroller;
  late TextEditingController mcontroller;
  late TextEditingController m2controller;
  late TextEditingController m3controller;
  late TextEditingController m4controller;
  late TextEditingController m5controller;
  late TextEditingController m6controller;
  late TextEditingController m7controller;
  late TextEditingController m8controller;
  late TextEditingController m9controller;
  late TextEditingController m10controller;
  late TextEditingController scontroller;
  late TextEditingController s2controller;
  late TextEditingController s3controller;
  late TextEditingController s4controller;
  late TextEditingController s5controller;
  late TextEditingController s6controller;
  late TextEditingController s7controller;
  late TextEditingController s8controller;
  late TextEditingController s9controller;
  late TextEditingController s10controller;
  late TextEditingController scrcontroller;

  final List<String> _valueList = Distributor.distributor_name;
  //String _selectedValue = "CJ ENM";
  late String _selectedValue = _valueList[0];

  final List<String> _gList = Genre.genre;
  late String _gValue = _gList[0].toString();

  late String current_name;
  late int current_score;
  late String current_movie_path;

  @override
  void initState() {
    super.initState();

    dcontroller = TextEditingController();
    mcontroller = TextEditingController();
    m2controller = TextEditingController();
    m3controller = TextEditingController();
    m4controller = TextEditingController();
    m5controller = TextEditingController();
    m6controller = TextEditingController();
    m7controller = TextEditingController();
    m8controller = TextEditingController();
    m9controller = TextEditingController();
    m10controller = TextEditingController();
    scontroller = TextEditingController();
    s2controller = TextEditingController();
    s3controller = TextEditingController();
    s4controller = TextEditingController();
    s5controller = TextEditingController();
    s6controller = TextEditingController();
    s7controller = TextEditingController();
    s8controller = TextEditingController();
    s9controller = TextEditingController();
    s10controller = TextEditingController();

    scrcontroller = TextEditingController();
  }

  bool M2Visible = false;
  bool M3Visible = false;
  bool M4Visible = false;
  bool M5Visible = false;
  bool M6Visible = false;
  bool M7Visible = false;
  bool M8Visible = false;
  bool M9Visible = false;
  bool M10Visible = false;

  bool S2Visible = false;
  bool S3Visible = false;
  bool S4Visible = false;
  bool S5Visible = false;
  bool S6Visible = false;
  bool S7Visible = false;
  bool S8Visible = false;
  bool S9Visible = false;
  bool S10Visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/director")
                        .then((value) => getDataD(value));
                  },
                  child: const Text('감독선택'),
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    enabled: false,
                    controller: dcontroller,
                    decoration: const InputDecoration(labelText: "버튼을 눌러 선택"),
                  ),
                ),
              ],
            ),
            Row(
              //주연1
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/actor")
                        .then((value) => getDataM(value));
                  },
                  child: const Text('주연선택'),
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    enabled: false,
                    controller: mcontroller,
                    decoration: const InputDecoration(labelText: "버튼을 눌러 선택"),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        M2Visible = true;
                      });
                    },
                    icon: const Icon(
                      Icons.add,
                    )),
              ],
            ),
            Visibility(
              //주연2
              visible: M2Visible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Message.actor = mcontroller.text;
                      Navigator.pushNamed(context, "/actor")
                          .then((value) => getDataM2(value));
                    },
                    child: const Text('주연선택'),
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: m2controller,
                      decoration: const InputDecoration(labelText: "버튼을 눌러 선택"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          M3Visible = true;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                      )),
                ],
              ),
            ),
            Visibility(
              //주연3
              visible: M3Visible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/actor")
                          .then((value) => getDataM3(value));
                    },
                    child: const Text('주연선택'),
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: m3controller,
                      decoration: const InputDecoration(labelText: "버튼을 눌러 선택"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          M4Visible = true;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                      )),
                ],
              ),
            ),
            Visibility(
              //주연4
              visible: M4Visible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/actor")
                          .then((value) => getDataM4(value));
                    },
                    child: const Text('주연선택'),
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: m4controller,
                      decoration: const InputDecoration(labelText: "버튼을 눌러 선택"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          M5Visible = true;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                      )),
                ],
              ),
            ),
            Visibility(
              //주연5
              visible: M5Visible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/actor")
                          .then((value) => getDataM5(value));
                    },
                    child: const Text('주연선택'),
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: m5controller,
                      decoration: const InputDecoration(labelText: "버튼을 눌러 선택"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          M6Visible = true;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                      )),
                ],
              ),
            ),
            Visibility(
              //주연6
              visible: M6Visible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/actor")
                          .then((value) => getDataM6(value));
                    },
                    child: const Text('주연선택'),
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: m6controller,
                      decoration: const InputDecoration(labelText: "버튼을 눌러 선택"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          M7Visible = true;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                      )),
                ],
              ),
            ),
            Visibility(
              //주연7
              visible: M7Visible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/actor")
                          .then((value) => getDataM7(value));
                    },
                    child: const Text('주연선택'),
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: m7controller,
                      decoration: const InputDecoration(labelText: "버튼을 눌러 선택"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          M8Visible = true;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                      )),
                ],
              ),
            ),
            Visibility(
              //주연8
              visible: M8Visible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/actor")
                          .then((value) => getDataM8(value));
                    },
                    child: const Text('주연선택'),
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: m8controller,
                      decoration: const InputDecoration(labelText: "버튼을 눌러 선택"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          M9Visible = true;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                      )),
                ],
              ),
            ),
            Visibility(
              //주연9
              visible: M9Visible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/actor")
                          .then((value) => getDataM9(value));
                    },
                    child: const Text('주연선택'),
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: m9controller,
                      decoration: const InputDecoration(labelText: "버튼을 눌러 선택"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          M10Visible = true;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                      )),
                ],
              ),
            ),
            Visibility(
              //주연10
              visible: M10Visible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/actor")
                          .then((value) => getDataM10(value));
                    },
                    child: const Text('주연선택'),
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: m10controller,
                      decoration: const InputDecoration(labelText: "버튼을 눌러 선택"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          //
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                      )),
                ],
              ),
            ),
            Row(
              //조연1
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/actor2")
                        .then((value) => getDataS(value));
                  },
                  child: const Text('조연선택'),
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    enabled: false,
                    controller: scontroller,
                    decoration: const InputDecoration(labelText: "버튼을 눌러 선택"),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        S2Visible = true;
                      });
                    },
                    icon: const Icon(
                      Icons.add,
                    )),
              ],
            ),
            Visibility(
              // 조연2
              visible: S2Visible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Message.actor = mcontroller.text;
                      Navigator.pushNamed(context, "/actor2")
                          .then((value) => getDataS2(value));
                    },
                    child: const Text('조연선택'),
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: s2controller,
                      decoration: const InputDecoration(labelText: "버튼을 눌러 선택"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          S3Visible = true;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                      )),
                ],
              ),
            ),
            Visibility(
              // 조연3
              visible: S3Visible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Message.actor = mcontroller.text;
                      Navigator.pushNamed(context, "/actor2")
                          .then((value) => getDataS3(value));
                    },
                    child: const Text('조연선택'),
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: s3controller,
                      decoration: const InputDecoration(labelText: "버튼을 눌러 선택"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          S4Visible = true;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                      )),
                ],
              ),
            ),
            Visibility(
              // 조연4
              visible: S4Visible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Message.actor = mcontroller.text;
                      Navigator.pushNamed(context, "/actor2")
                          .then((value) => getDataS4(value));
                    },
                    child: const Text('조연선택'),
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: s4controller,
                      decoration: const InputDecoration(labelText: "버튼을 눌러 선택"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          S5Visible = true;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                      )),
                ],
              ),
            ),
            Visibility(
              // 조연5
              visible: S5Visible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Message.actor = mcontroller.text;
                      Navigator.pushNamed(context, "/actor2")
                          .then((value) => getDataS5(value));
                    },
                    child: const Text('조연선택'),
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: s5controller,
                      decoration: const InputDecoration(labelText: "버튼을 눌러 선택"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          S6Visible = true;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                      )),
                ],
              ),
            ),
            Visibility(
              // 조연6
              visible: S6Visible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Message.actor = mcontroller.text;
                      Navigator.pushNamed(context, "/actor2")
                          .then((value) => getDataS6(value));
                    },
                    child: const Text('조연선택'),
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: s6controller,
                      decoration: const InputDecoration(labelText: "버튼을 눌러 선택"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          S7Visible = true;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                      )),
                ],
              ),
            ),
            Visibility(
              // 조연7
              visible: S7Visible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Message.actor = mcontroller.text;
                      Navigator.pushNamed(context, "/actor2")
                          .then((value) => getDataS7(value));
                    },
                    child: const Text('조연선택'),
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: s7controller,
                      decoration: const InputDecoration(labelText: "버튼을 눌러 선택"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          S8Visible = true;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                      )),
                ],
              ),
            ),
            Visibility(
              // 조연8
              visible: S8Visible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Message.actor = mcontroller.text;
                      Navigator.pushNamed(context, "/actor2")
                          .then((value) => getDataS8(value));
                    },
                    child: const Text('조연선택'),
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: s8controller,
                      decoration: const InputDecoration(labelText: "버튼을 눌러 선택"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          S9Visible = true;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                      )),
                ],
              ),
            ),
            Visibility(
              // 조연 9
              visible: S9Visible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Message.actor = mcontroller.text;
                      Navigator.pushNamed(context, "/actor2")
                          .then((value) => getDataS9(value));
                    },
                    child: const Text('조연선택'),
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: s9controller,
                      decoration: const InputDecoration(labelText: "버튼을 눌러 선택"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          S10Visible = true;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                      )),
                ],
              ),
            ),
            Visibility(
              // 조연10
              visible: S10Visible,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Message.actor = mcontroller.text;
                      Navigator.pushNamed(context, "/actor2")
                          .then((value) => getDataS10(value));
                    },
                    child: const Text('조연선택'),
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: s10controller,
                      decoration: const InputDecoration(labelText: "버튼을 눌러 선택"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                      )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("스크린수"),
                SizedBox(
                  width: 200,
                  child: TextField(
                    controller: scrcontroller,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("배급사"),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: DropdownButton(
                    value: _selectedValue,
                    items: _valueList.map(
                      (value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      },
                    ).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value.toString();
                      });
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("메인장르"),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: DropdownButton(
                    value: _gValue,
                    items: _gList.map(
                      (value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      },
                    ).toList(),
                    onChanged: (value) {
                      setState(() {
                        _gValue = value.toString();
                      });
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ElevatedButton(
                onPressed: () {
                  _showDialog(context);
                },
                child: const Text('선택완료'),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  getDataD(value) {
    setState(() {
      dcontroller.text = Message.msg;
      getJuActorInfo();
      getJoActorInfo();
    });
  }

  getDataM(value) {
    setState(() {
      mcontroller.text = Message.actor;
      JuActors.score.add(Message.actor_score);
      JuActors.juActors.remove(JuActors.juActors[JuActors.selectIdx]);
    });
  }

  getDataM2(value) {
    setState(() {
      m2controller.text = Message.actor2;
      JuActors.score.add(Message.actor2_score);
      JuActors.juActors.remove(JuActors.juActors[JuActors.selectIdx]);
    });
  }

  getDataM3(value) {
    setState(() {
      m3controller.text = Message.actor3;
      JuActors.score.add(Message.actor3_score);
      JuActors.juActors.remove(JuActors.juActors[JuActors.selectIdx]);
    });
  }

  getDataM4(value) {
    setState(() {
      m4controller.text = Message.actor4;
      JuActors.score.add(Message.actor4_score);
      JuActors.juActors.remove(JuActors.juActors[JuActors.selectIdx]);
    });
  }

  getDataM5(value) {
    setState(() {
      m5controller.text = Message.actor5;
      JuActors.score.add(Message.actor5_score);
      JuActors.juActors.remove(JuActors.juActors[JuActors.selectIdx]);
    });
  }

  getDataM6(value) {
    setState(() {
      m6controller.text = Message.actor6;
      JuActors.score.add(Message.actor6_score);
      JuActors.juActors.remove(JuActors.juActors[JuActors.selectIdx]);
    });
  }

  getDataM7(value) {
    setState(() {
      m7controller.text = Message.actor7;
      JuActors.score.add(Message.actor7_score);
      JuActors.juActors.remove(JuActors.juActors[JuActors.selectIdx]);
    });
  }

  getDataM8(value) {
    setState(() {
      m8controller.text = Message.actor8;
      JuActors.score.add(Message.actor8_score);
      JuActors.juActors.remove(JuActors.juActors[JuActors.selectIdx]);
    });
  }

  getDataM9(value) {
    setState(() {
      m9controller.text = Message.actor9;
      JuActors.score.add(Message.actor9_score);
      JuActors.juActors.remove(JuActors.juActors[JuActors.selectIdx]);
    });
  }

  getDataM10(value) {
    setState(() {
      m10controller.text = Message.actor10;
      JuActors.score.add(Message.actor10_score);
      JuActors.juActors.remove(JuActors.juActors[JuActors.selectIdx]);
    });
  }

  getDataS(value) {
    setState(() {
      scontroller.text = Message.subactor;
      JoActors.score.add(Message.subactor_score);
      JoActors.joActors.remove(JoActors.joActors[JoActors.selectIdx]);
    });
  }

  getDataS2(value) {
    setState(() {
      s2controller.text = Message.subactor2;
      JoActors.score.add(Message.subactor2_score);
      JoActors.joActors.remove(JoActors.joActors[JoActors.selectIdx]);
    });
  }

  getDataS3(value) {
    setState(() {
      s3controller.text = Message.subactor3;
      JoActors.score.add(Message.subactor3_score);
      JoActors.joActors.remove(JoActors.joActors[JoActors.selectIdx]);
    });
  }

  getDataS4(value) {
    setState(() {
      s4controller.text = Message.subactor4;
      JoActors.score.add(Message.subactor4_score);
      JoActors.joActors.remove(JoActors.joActors[JoActors.selectIdx]);
    });
  }

  getDataS5(value) {
    setState(() {
      s5controller.text = Message.subactor5;
      JoActors.score.add(Message.subactor5_score);
      JoActors.joActors.remove(JoActors.joActors[JoActors.selectIdx]);
    });
  }

  getDataS6(value) {
    setState(() {
      s6controller.text = Message.subactor6;
      JoActors.score.add(Message.subactor6_score);
      JoActors.joActors.remove(JoActors.joActors[JoActors.selectIdx]);
    });
  }

  getDataS7(value) {
    setState(() {
      s7controller.text = Message.subactor7;
      JoActors.score.add(Message.subactor7_score);
      JoActors.joActors.remove(JoActors.joActors[JoActors.selectIdx]);
    });
  }

  getDataS8(value) {
    setState(() {
      s8controller.text = Message.subactor8;
      JoActors.score.add(Message.subactor8_score);
      JoActors.joActors.remove(JoActors.joActors[JoActors.selectIdx]);
    });
  }

  getDataS9(value) {
    setState(() {
      s9controller.text = Message.subactor9;
      JoActors.score.add(Message.subactor9_score);
      JoActors.joActors.remove(JoActors.joActors[JoActors.selectIdx]);
    });
  }

  getDataS10(value) {
    setState(() {
      s10controller.text = Message.subactor10;
      JoActors.score.add(Message.subactor10_score);
      JoActors.joActors.remove(JoActors.joActors[JoActors.selectIdx]);
    });
  }

  _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: Text('선택된 정보'),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('감독: ${dcontroller.text}'),
                Text(
                    '주연: ${mcontroller.text} ${m2controller.text} ${m3controller.text} ${m4controller.text}'),
                Text('스크린수: ${scrcontroller.text}'),
                Text('배급사: ${_selectedValue}'),
                Text('메인장르: ${_gValue}'),
              ],
            ),
            actions: [
              Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('예측하기')),
              ),
            ],
          );
        });
  }

  getJuActorInfo() async {
    var url = Uri.parse(
        'http://192.168.1.8:8080/Flutter/movie_ju_actors.jsp?director_id=${Message.director_id}');
    var response = await http.get(url);
    print('debug :$url');
    setState(() {
      var dataConvertedJSON = json.decode(utf8.decode(response.bodyBytes));
      List result = dataConvertedJSON['results'];

      // 데이터 초기화
      JuActors.juActors.clear();
      current_name = result[0]['ju_actor_name'].toString(); // 첫번째 배우이름
      current_score = int.parse(result[0]['ju_actor_score']); // 첫번째 배우점수
      current_movie_path = result[0]['movie_img'].toString(); // 첫번째 배우 출연영화

      for (int i = 1; i < result.length; i++) {
        if (current_name.compareTo(result[i]['ju_actor_name'].toString()) !=
            0) {
          // current_name과 배우명이 같지않으면 current_name 저장
          JuActors.juActors.add(JuActorInfo(
              ju_actor_name: current_name,
              juActor_score: current_score,
              ju_movie_imgPath1: current_movie_path,
              ju_movie_imaPath2: result[i - 1]['movie_img'].toString()));
          current_name = result[i]['ju_actor_name'].toString();
          current_score = int.parse(result[i]['ju_actor_score']);
          current_movie_path = result[i]['movie_img'].toString();
        }

        if (i == result.length - 1) {
          if (current_name.compareTo(result[i]['ju_actor_name'].toString()) !=
              0) {
            // current_name과 배우명이 같지않으면 current_name 저장
            JuActors.juActors.add(JuActorInfo(
                ju_actor_name: current_name,
                juActor_score: current_score,
                ju_movie_imgPath1: current_movie_path,
                ju_movie_imaPath2: result[i - 1]['movie_img'].toString()));

            JuActors.juActors.add(JuActorInfo(
                ju_actor_name: result[i]['ju_actor_name'].toString(),
                juActor_score: int.parse(result[i]['ju_actor_score']),
                ju_movie_imgPath1: result[i]['movie_img'].toString(),
                ju_movie_imaPath2: result[i]['movie_img'].toString()));
          } else {
            JuActors.juActors.add(JuActorInfo(
                ju_actor_name: current_name,
                juActor_score: current_score,
                ju_movie_imgPath1: current_movie_path,
                ju_movie_imaPath2: result[i]['movie_img'].toString()));
          }
        }
      }

      // for (int i = 0; i < JuActors.juActors.length; i++) {
      //   print(
      //       'debug : ${JuActors.juActors[i].ju_actor_name}, ${JuActors.juActors[i].juActor_score}, ${JuActors.juActors[i].ju_movie_imgPath1}, ${JuActors.juActors[i].ju_movie_imaPath2}');
      // }
    });
  }

  getJoActorInfo() async {
    var url = Uri.parse(
        'http://192.168.1.8:8080/Flutter/movie_jo_actors.jsp?director_id=${Message.director_id}');
    var response = await http.get(url);
    print('debug :$url');
    setState(() {
      var dataConvertedJSON = json.decode(utf8.decode(response.bodyBytes));
      List result = dataConvertedJSON['results'];

      // 데이터 초기화
      JoActors.joActors.clear();
      current_name = result[0]['jo_actor_name'].toString(); // 첫번째 배우이름
      current_score = int.parse(result[0]['jo_actor_score']); // 첫번째 배우점수
      current_movie_path = result[0]['movie_img'].toString(); // 첫번째 배우 출연영화

      for (int i = 1; i < result.length; i++) {
        if (current_name.compareTo(result[i]['jo_actor_name'].toString()) !=
            0) {
          // current_name과 배우명이 같지않으면 current_name 저장
          JoActors.joActors.add(JoActorInfo(
              jo_actor_name: current_name,
              joActor_score: current_score,
              jo_movie_imgPath1: current_movie_path,
              jo_movie_imaPath2: result[i - 1]['movie_img'].toString()));
          current_name = result[i]['jo_actor_name'].toString();
          current_score = int.parse(result[i]['jo_actor_score']);
          current_movie_path = result[i]['movie_img'].toString();
        }

        if (i == result.length - 1) {
          if (current_name.compareTo(result[i]['jo_actor_name'].toString()) !=
              0) {
            // current_name과 배우명이 같지않으면 current_name 저장
            JoActors.joActors.add(JoActorInfo(
                jo_actor_name: current_name,
                joActor_score: current_score,
                jo_movie_imgPath1: current_movie_path,
                jo_movie_imaPath2: result[i - 1]['movie_img'].toString()));

            JoActors.joActors.add(JoActorInfo(
                jo_actor_name: result[i]['jo_actor_name'].toString(),
                joActor_score: int.parse(result[i]['jo_actor_score']),
                jo_movie_imgPath1: result[i]['movie_img'].toString(),
                jo_movie_imaPath2: result[i]['movie_img'].toString()));
          } else {
            JoActors.joActors.add(JoActorInfo(
                jo_actor_name: current_name,
                joActor_score: current_score,
                jo_movie_imgPath1: current_movie_path,
                jo_movie_imaPath2: result[i]['movie_img'].toString()));
          }
        }
      }

      // for (int i = 0; i < JoActors.joActors.length; i++) {
      //   print(
      //       'debug: ${JoActors.joActors[i].jo_actor_name}  ${JoActors.joActors[i].joActor_score} ${JoActors.joActors[i].jo_movie_imgPath1} ${JoActors.joActors[i].jo_movie_imaPath2}');
      // }
    });
  }
} // End
