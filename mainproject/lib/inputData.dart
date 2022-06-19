import 'package:flutter/material.dart';
import 'package:mainproject/data.dart';

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
                    Navigator.pushNamed(context, "/actor")
                        .then((value) => getDataM(value));
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
                      //
                    },
                    icon: const Icon(
                      Icons.add,
                    )),
              ],
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
    });
  }

  getDataM(value) {
    setState(() {
      mcontroller.text = Message.actor;
    });
  }

  getDataM2(value) {
    setState(() {
      m2controller.text = Message.actor2;
    });
  }

  getDataM3(value) {
    setState(() {
      m3controller.text = Message.actor3;
    });
  }

  getDataM4(value) {
    setState(() {
      m4controller.text = Message.actor4;
    });
  }

  getDataM5(value) {
    setState(() {
      m5controller.text = Message.actor5;
    });
  }

  getDataM6(value) {
    setState(() {
      m6controller.text = Message.actor6;
    });
  }

  getDataM7(value) {
    setState(() {
      m7controller.text = Message.actor7;
    });
  }

  getDataM8(value) {
    setState(() {
      m8controller.text = Message.actor8;
    });
  }

  getDataM9(value) {
    setState(() {
      m9controller.text = Message.actor9;
    });
  }

  getDataM10(value) {
    setState(() {
      m10controller.text = Message.actor10;
    });
  }

  getDataS(value) {
    setState(() {
      mcontroller.text = Message.subactor;
    });
  }

  getDataS2(value) {
    setState(() {
      m2controller.text = Message.subactor2;
    });
  }

  getDataS3(value) {
    setState(() {
      m3controller.text = Message.subactor3;
    });
  }

  getDataS4(value) {
    setState(() {
      m4controller.text = Message.subactor4;
    });
  }

  getDataS5(value) {
    setState(() {
      m5controller.text = Message.subactor5;
    });
  }

  getDataS6(value) {
    setState(() {
      m6controller.text = Message.subactor6;
    });
  }

  getDataS7(value) {
    setState(() {
      m7controller.text = Message.subactor7;
    });
  }

  getDataS8(value) {
    setState(() {
      m8controller.text = Message.subactor8;
    });
  }

  getDataS9(value) {
    setState(() {
      m9controller.text = Message.subactor9;
    });
  }

  getDataS10(value) {
    setState(() {
      m10controller.text = Message.subactor10;
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
}
