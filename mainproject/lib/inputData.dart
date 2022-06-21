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

  late String pred_result;
  late String str;
  late String img_Path;
  late String str0;

  late List jo_score;
  late List ju_score;
  late List jo_name;
  late List ju_name;

  @override
  void initState() {
    super.initState();
    print('debug  inputData: ${JuActors.juActors.length}');

    jo_name = [];
    jo_score = [];
    ju_name = [];
    ju_score = [];

    pred_result = '0';
    str = '';
    img_Path = '';
    str0 = '';

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
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 119, 192, 168),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setJuActorRestore();

                    Navigator.pushNamed(context, "/director")
                        .then((value) => getDataD(value));
                  },
                    style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 119, 192, 168), // Background color
                ),
                  child: const Text('감독선택'),
                ),
                SizedBox(
                  width:5,
                ),
                SizedBox(
                  width: 250,
                  child: TextField(
                    enabled: false,
                    controller: dcontroller,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      labelText: "버튼을 눌러 선택",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
                width: 500,
                child: Divider(color: Colors.black, thickness: 0.5)),
            Row(
              //주연1
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/JuActor")
                        .then((value) => getDataM(value));
                  },
                    style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 119, 192, 168), // Background color
                ),
                  child: const Text('주연선택'),
                ),
                const SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    enabled: false,
                    controller: mcontroller,
                    decoration: const InputDecoration(
                      labelText: "버튼을 눌러 선택",
                      contentPadding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                    ),
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
                      Navigator.pushNamed(context, "/JuActor")
                          .then((value) => getDataM2(value));
                    },
                      style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 119, 192, 168), // Background color
                ),
                    child: const Text('주연선택'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: m2controller,
                      decoration: const InputDecoration(
                        labelText: "버튼을 눌러 선택",
                        contentPadding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      ),
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
                      Navigator.pushNamed(context, "/JuActor")
                          .then((value) => getDataM3(value));
                    },
                    child: const Text('주연선택'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: m3controller,
                      decoration: const InputDecoration(
                        labelText: "버튼을 눌러 선택",
                        contentPadding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      ),
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
                      Navigator.pushNamed(context, "/JuActor")
                          .then((value) => getDataM4(value));
                    },
                    child: const Text('주연선택'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: m4controller,
                      decoration: const InputDecoration(
                        labelText: "버튼을 눌러 선택",
                        contentPadding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      ),
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
                      Navigator.pushNamed(context, "/JuActor")
                          .then((value) => getDataM5(value));
                    },
                    child: const Text('주연선택'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: m5controller,
                      decoration: const InputDecoration(
                        labelText: "버튼을 눌러 선택",
                        contentPadding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      ),
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
                      Navigator.pushNamed(context, "/JuActor")
                          .then((value) => getDataM6(value));
                    },
                    child: const Text('주연선택'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: m6controller,
                      decoration: const InputDecoration(
                        labelText: "버튼을 눌러 선택",
                        contentPadding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      ),
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
                      Navigator.pushNamed(context, "/JuActor")
                          .then((value) => getDataM7(value));
                    },
                    child: const Text('주연선택'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: m7controller,
                      decoration: const InputDecoration(
                        labelText: "버튼을 눌러 선택",
                        contentPadding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      ),
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
                      Navigator.pushNamed(context, "/JuActor")
                          .then((value) => getDataM8(value));
                    },
                    child: const Text('주연선택'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: m8controller,
                      decoration: const InputDecoration(
                        labelText: "버튼을 눌러 선택",
                        contentPadding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      ),
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
                      Navigator.pushNamed(context, "/JuActor")
                          .then((value) => getDataM9(value));
                    },
                    child: const Text('주연선택'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: m9controller,
                      decoration: const InputDecoration(
                        labelText: "버튼을 눌러 선택",
                        contentPadding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      ),
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
                      Navigator.pushNamed(context, "/JuActor")
                          .then((value) => getDataM10(value));
                    },
                    child: const Text('주연선택'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: m10controller,
                      decoration: const InputDecoration(
                        labelText: "버튼을 눌러 선택",
                        contentPadding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      ),
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
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
                width: 500,
                child: Divider(color: Colors.black, thickness: 0.5)),
            Row(
              //조연1
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/JoActor")
                        .then((value) => getDataS(value));
                  },
                    style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 119, 192, 168), // Background color
                ),
                  child: const Text('조연선택'),
                ),
                const SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    enabled: false,
                    controller: scontroller,
                    decoration: const InputDecoration(
                      labelText: "버튼을 눌러 선택",
                      contentPadding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                    ),
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
                      Navigator.pushNamed(context, "/JoActor")
                          .then((value) => getDataS2(value));
                    },
                    child: const Text('조연선택'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: s2controller,
                      decoration: const InputDecoration(
                        labelText: "버튼을 눌러 선택",
                        contentPadding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      ),
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
                      Navigator.pushNamed(context, "/JoActor")
                          .then((value) => getDataS3(value));
                    },
                    child: const Text('조연선택'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: s3controller,
                      decoration: const InputDecoration(
                        labelText: "버튼을 눌러 선택",
                        contentPadding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      ),
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
                      Navigator.pushNamed(context, "/JoActor")
                          .then((value) => getDataS4(value));
                    },
                    child: const Text('조연선택'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: s4controller,
                      decoration: const InputDecoration(
                        labelText: "버튼을 눌러 선택",
                        contentPadding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      ),
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
                      Navigator.pushNamed(context, "/JoActor")
                          .then((value) => getDataS5(value));
                    },
                    child: const Text('조연선택'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: s5controller,
                      decoration: const InputDecoration(
                        labelText: "버튼을 눌러 선택",
                        contentPadding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      ),
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
                      Navigator.pushNamed(context, "/JoActor")
                          .then((value) => getDataS6(value));
                    },
                    child: const Text('조연선택'),
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: s6controller,
                      decoration: const InputDecoration(
                        labelText: "버튼을 눌러 선택",
                        contentPadding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
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
                      Navigator.pushNamed(context, "/JoActor")
                          .then((value) => getDataS7(value));
                    },
                    child: const Text('조연선택'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: s7controller,
                      decoration: const InputDecoration(
                        labelText: "버튼을 눌러 선택",
                        contentPadding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      ),
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
                      Navigator.pushNamed(context, "/JoActor")
                          .then((value) => getDataS8(value));
                    },
                    child: const Text('조연선택'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: s8controller,
                      decoration: const InputDecoration(
                        labelText: "버튼을 눌러 선택",
                        contentPadding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      ),
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
                      Navigator.pushNamed(context, "/JoActor")
                          .then((value) => getDataS9(value));
                    },
                    child: const Text('조연선택'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: s9controller,
                      decoration: const InputDecoration(
                        labelText: "버튼을 눌러 선택",
                        contentPadding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      ),
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
                      Navigator.pushNamed(context, "/JoActor")
                          .then((value) => getDataS10(value));
                    },
                      style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 119, 192, 168), // Background color
                ),
                    child: const Text('조연선택'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      enabled: false,
                      controller: s10controller,
                      decoration: const InputDecoration(
                        labelText: "버튼을 눌러 선택",
                        contentPadding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      ),
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
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
                width: 400,
                child: Divider(color: Colors.black, thickness: 0.5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("스크린수"),
                const SizedBox(
                  width: 45,
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    controller: scrcontroller,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("배급사"),
                Padding(
                  padding: const EdgeInsets.fromLTRB(45, 0, 0, 0),
                  child: DropdownButton(
                    value: _selectedValue,
                    items: _valueList.map(
                      (value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 13),
                          ),
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
                const Text("메인장르"),
                const SizedBox(width: 110),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: DropdownButton(
                    value: _gValue,
                    items: _gList.map(
                      (value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 13),
                          ),
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
            const SizedBox(
                width: 400,
                child: Divider(color: Colors.black, thickness: 0.5)),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ElevatedButton(
                onPressed: () {
                  if (dcontroller.text.isEmpty) {
                    alertDialog(context, "감독을 선택해주세요.");
                  } else if (mcontroller.text.isEmpty) {
                    alertDialog(context, "주연 배우를 선택해주세요.");
                  } else if (scontroller.text.isEmpty) {
                    alertDialog(context, "조연 배우를 선택해주세요.");
                  } else if (scrcontroller.text.isEmpty) {
                    alertDialog(context, "스크린 수를 입력해주세요");
                  } else {
                    _showDialog(context);
                  }
                },
                  style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 119, 192, 168), // Background color
                ),
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
      setInputInit();
      dcontroller.text = Message.msg;
      Message.director_score = Message.temp_actor_score;
    });
  }

  getDataM(value) {
    setState(() {
      mcontroller.text = Message.msg;
      Message.actor_score = Message.temp_actor_score;
    });
  }

  getDataM2(value) {
    setState(() {
      m2controller.text = Message.msg;
      Message.actor2_score = Message.temp_actor_score;
    });
  }

  getDataM3(value) {
    setState(() {
      m3controller.text = Message.msg;
      Message.actor3_score = Message.temp_actor_score;
    });
  }

  getDataM4(value) {
    setState(() {
      m4controller.text = Message.msg;
      Message.actor4_score = Message.temp_actor_score;
    });
  }

  getDataM5(value) {
    setState(() {
      m5controller.text = Message.msg;
      Message.actor5_score = Message.temp_actor_score;
    });
  }

  getDataM6(value) {
    setState(() {
      m6controller.text = Message.msg;
      Message.actor6_score = Message.temp_actor_score;
    });
  }

  getDataM7(value) {
    setState(() {
      m7controller.text = Message.msg;
      Message.actor7_score = Message.temp_actor_score;
    });
  }

  getDataM8(value) {
    setState(() {
      m8controller.text = Message.msg;
      Message.actor8_score = Message.temp_actor_score;
    });
  }

  getDataM9(value) {
    setState(() {
      m9controller.text = Message.msg;
      Message.actor9_score = Message.temp_actor_score;
    });
  }

  getDataM10(value) {
    setState(() {
      m10controller.text = Message.msg;
      Message.actor10_score = Message.temp_actor_score;
    });
  }

  getDataS(value) {
    setState(() {
      scontroller.text = Message.msg;
      Message.subactor_score = Message.temp_actor_score;
    });
  }

  getDataS2(value) {
    setState(() {
      s2controller.text = Message.msg;
      Message.subactor2_score = Message.temp_actor_score;
    });
  }

  getDataS3(value) {
    setState(() {
      s3controller.text = Message.msg;
      Message.subactor3_score = Message.temp_actor_score;
    });
  }

  getDataS4(value) {
    setState(() {
      s4controller.text = Message.msg;
      Message.subactor4_score = Message.temp_actor_score;
    });
  }

  getDataS5(value) {
    setState(() {
      s5controller.text = Message.msg;
      Message.subactor5_score = Message.temp_actor_score;
    });
  }

  getDataS6(value) {
    setState(() {
      s6controller.text = Message.msg;
      Message.subactor6_score = Message.temp_actor_score;
    });
  }

  getDataS7(value) {
    setState(() {
      s7controller.text = Message.msg;
      Message.subactor7_score = Message.temp_actor_score;
    });
  }

  getDataS8(value) {
    setState(() {
      s8controller.text = Message.msg;
      Message.subactor8_score = Message.temp_actor_score;
    });
  }

  getDataS9(value) {
    setState(() {
      s9controller.text = Message.msg;
      Message.subactor9_score = Message.temp_actor_score;
    });
  }

  getDataS10(value) {
    setState(() {
      s10controller.text = Message.msg;
      Message.subactor10_score = Message.temp_actor_score;
    });
  }

  _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: const Text('선택된 정보'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('감독: ${dcontroller.text} '),
                Text(
                    '주연: ${mcontroller.text} ${m2controller.text} ${m3controller.text} ${m4controller.text} ${m5controller.text} ${m6controller.text} ${m7controller.text} ${m8controller.text} ${m9controller.text} ${m10controller.text}'),
                Text(
                    '조연: ${scontroller.text} ${s2controller.text} ${s3controller.text} ${s4controller.text} ${s5controller.text} ${s6controller.text} ${s7controller.text} ${s8controller.text} ${s9controller.text} ${s10controller.text} '),
                Text('스크린수: ${scrcontroller.text} '),
                Text('배급사: $_selectedValue '),
                Text('메인장르: $_gValue '),
              ],
            ),
            actions: [
              Center(
                child: TextButton(
                    onPressed: () {
                      findscore();
                      predict();

                      Navigator.of(context).pop();
                    },
                    child: const Text('예측하기')),
              ),
            ],
          );
        });
  }

  alertDialog(BuildContext context, String str) {
    showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: const Text('경고'),
            content: Text(str),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('확인')),
            ],
          );
        });
  }

  setJuActorRestore() {
    JuActors.juActors.clear();
    for (int i = 0; i < JuActors.JuActorsBackup.length; i++) {
      JuActors.juActors.add(JuActors.JuActorsBackup[i]);
    }
  }

  // functions

  predict() async {
    int dis = 0;
    int genre = 0;
    double diract = 0;
    double ju = 0;
    double dir = 0;
    double screen = 0;
    double jo = 0;

    // dis=2&genre=10&diract=3&ju=4&dir=2&screen=339&jo=2.6

    dir = Message.director_score;
    screen = scrcontroller.text.isNotEmpty
        ? double.parse(scrcontroller.text)
        : screen;

    for (int i = 0; i < Genre.genre.length; i++) {
      if (Genre.genre[i] == _gValue) {
        genre = Genre.genre_score[i];
      }
    }
    for (int i = 0; i < Distributor.distributor_name.length; i++) {
      if (Distributor.distributor_name[i] == _selectedValue) {
        dis = Distributor.distributor_score[i];
      }
    }

    if (ju_score.isNotEmpty) {
      // ignore: avoid_print
      print(ju_score[ju_score.length - 1]);
      ju = ju_score[ju_score.length - 1];
    }
    if (jo_score.length >= 3) {
      jo = ((jo_score[jo_score.length - 1]) +
              (jo_score[jo_score.length - 2]) +
              (jo_score[jo_score.length - 3])) /
          3;
    } else if (jo_score.length >= 2) {
      jo = ((jo_score[jo_score.length - 1]) +
              (jo_score[jo_score.length - 2])) /
          2;
    } else if (jo_score.isNotEmpty) {
      jo = jo_score[jo_score.length - 1];
    }

    for (int i = 0; i > Diracts.diracts.length; i++) {
      for (int j = 0; j < ju_name.length; j++) {
        if ((ju_name[j] == Diracts.diracts[i].actor_name) &
            (Message.msg == Diracts.diracts[i].director_name)) {
          diract = diract + 1;
        }
      }
      for (int j = 0; j < jo_name.length; j++) {
        if ((jo_name[j] == Diracts.diracts[i].actor_name) &
            (Message.msg == Diracts.diracts[i].director_name)) {
          diract = diract + 0.83;
        }
      }
    }

    // ignore: prefer_interpolation_to_compose_strings
    var url = Uri.parse("http://localhost:8080/Rserve/movie_predict.jsp?dis=" +
        dis.toString() +
        "&genre=" +
        genre.toString() +
        "&diract=" +
        diract.toString() +
        "&ju=" +
        ju.toString() +
        "&dir=" +
        dir.toString() +
        "&screen=" +
        screen.toString() +
        "&jo=" +
        jo.toString());

    var response = await http.get(url);

    var jsondata = json.decode(utf8.decode(response.bodyBytes));

    setState(() {
      pred_result = jsondata["result"];
      print(pred_result);
      if (pred_result == "1") {
        str0 = "300만 돌파 예상!";
        str = "예상 관객수: 약 300만~440만";
        img_Path = "images/movieposter/b.png";
      } else if (pred_result == "2") {
        str0 = "평타 예상!!";
        str = "예상 관객수: 약 440만 ~ 650만";
        img_Path = "images/movieposter/c.png";
      } else {
        str0 = "대박 조짐!!!";
        str = " 예상 관객수: 약 650만 ~ 1000만";
        img_Path = "images/movieposter/a.png";
      }

      Result_msg.pre0 = str0;
      Result_msg.pre = str;
      Result_msg.img = img_Path;
      Navigator.of(context).pop();
      Navigator.pushNamed(context, "/predict");
    });

    //
  } //predict

  findscore() {
    if (mcontroller.text.isNotEmpty) {
      ju_score.add(Message.actor_score);
      ju_name.add(Message.actor);
    }
    if (m2controller.text.isNotEmpty) {
      ju_score.add(Message.actor2_score);
      ju_name.add(Message.actor2);
    }
    if (m3controller.text.isNotEmpty) {
      ju_score.add(Message.actor3_score);
      ju_name.add(Message.actor3);
    }
    if (m4controller.text.isNotEmpty) {
      ju_score.add(Message.actor4_score);
      ju_name.add(Message.actor4);
    }
    if (m5controller.text.isNotEmpty) {
      ju_score.add(Message.actor5_score);
      ju_name.add(Message.actor5);
    }
    if (m6controller.text.isNotEmpty) {
      ju_score.add(Message.actor6_score);
      ju_name.add(Message.actor6);
    }
    if (m7controller.text.isNotEmpty) {
      ju_score.add(Message.actor7_score);
      ju_name.add(Message.actor7);
    }
    if (m8controller.text.isNotEmpty) {
      ju_score.add(Message.actor8_score);
      ju_name.add(Message.actor8);
    }
    if (m9controller.text.isNotEmpty) {
      ju_score.add(Message.actor9_score);
      ju_name.add(Message.actor9);
    }
    if (m10controller.text.isNotEmpty) {
      ju_score.add(Message.actor10_score);
      ju_name.add(Message.actor10);
    }

    if (scontroller.text.isNotEmpty) {
      jo_score.add(Message.subactor_score);
      jo_name.add(Message.subactor);
    }
    if (s2controller.text.isNotEmpty) {
      jo_score.add(Message.subactor2_score);
      jo_name.add(Message.subactor2);
    }
    if (s3controller.text.isNotEmpty) {
      jo_score.add(Message.subactor3_score);
      jo_name.add(Message.subactor3);
    }
    if (s4controller.text.isNotEmpty) {
      jo_score.add(Message.subactor4_score);
      jo_name.add(Message.subactor4);
    }
    if (s5controller.text.isNotEmpty) {
      jo_score.add(Message.subactor5_score);
      jo_name.add(Message.subactor5);
    }
    if (s6controller.text.isNotEmpty) {
      jo_score.add(Message.subactor6_score);
      jo_name.add(Message.subactor6);
    }
    if (s7controller.text.isNotEmpty) {
      jo_score.add(Message.subactor7_score);
      jo_name.add(Message.subactor7);
    }
    if (s8controller.text.isNotEmpty) {
      jo_score.add(Message.subactor8_score);
      jo_name.add(Message.subactor8);
    }
    if (s9controller.text.isNotEmpty) {
      jo_score.add(Message.subactor9_score);
      jo_name.add(Message.subactor9);
    }
    if (s10controller.text.isNotEmpty) {
      jo_score.add(Message.subactor10_score);
      jo_name.add(Message.subactor10);
    }

    ju_score.sort();
    jo_score.sort();
  }

  setInputInit() {
    setState(() {
      M2Visible = false;
      M3Visible = false;
      M4Visible = false;
      M5Visible = false;
      M6Visible = false;
      M7Visible = false;
      M8Visible = false;
      M9Visible = false;
      M10Visible = false;
      S2Visible = false;
      S3Visible = false;
      S4Visible = false;
      S5Visible = false;
      S6Visible = false;
      S7Visible = false;
      S8Visible = false;
      S9Visible = false;
      S10Visible = false;
      dcontroller.clear();
      mcontroller.clear();
      m2controller.clear();
      m3controller.clear();
      m4controller.clear();
      m5controller.clear();
      m6controller.clear();
      m7controller.clear();
      m8controller.clear();
      m9controller.clear();
      ;
      m10controller.clear();
      scontroller.clear();
      s2controller.clear();
      s3controller.clear();
      s4controller.clear();
      s5controller.clear();
      s6controller.clear();
      s7controller.clear();
      s8controller.clear();
      s9controller.clear();
      s10controller.clear();
    });
  }
} // End
