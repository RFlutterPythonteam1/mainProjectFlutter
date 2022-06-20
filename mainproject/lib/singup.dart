import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late TextEditingController useridController;
  late TextEditingController passwdController;
  late TextEditingController repasswdController;
  late TextEditingController nameController;
  late TextEditingController emailController;

  late String errMessage;
  late bool check;

  @override
  void initState() {
    super.initState();
    useridController = TextEditingController();
    passwdController = TextEditingController();
    repasswdController = TextEditingController();
    nameController = TextEditingController();
    emailController = TextEditingController();
    errMessage = "";
    check = false;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
         backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        automaticallyImplyLeading: false,
        primary: true,
        elevation: 0,
      ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
              '회원가입',
              style: TextStyle(
                fontSize: 40,
                letterSpacing: 5,
                color: Colors.white,
                fontStyle: FontStyle.normal,
              ),
            ),
            const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: useridController,
                  decoration: const InputDecoration(
                      hintText: '아이디를 입력해주세요',
                      labelText: 'User ID',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      )),
                  keyboardType: TextInputType.text,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: passwdController,
                  decoration: const InputDecoration(
                      hintText: '암호를 입력해주세요',
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      )),
                  keyboardType: TextInputType.text,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: repasswdController,
                  decoration: const InputDecoration(
                      hintText: '암호를 입력해주세요',
                      labelText: 'Re-enter Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      )),
                  keyboardType: TextInputType.text,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                      hintText: '이름을 입력해주세요',
                      labelText: 'Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      )),
                  keyboardType: TextInputType.text,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      hintText: '이메일 주소를 입력해주세요',
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      )),
                  keyboardType: TextInputType.text,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 40,
                width: 170,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ))),
                  onPressed: () {
                    if (inputDataCheck()) {
                      insertAction();
                    }
                  },
                  child: const Text(
                    "회원 가입",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }

  //----- Function -----

  bool inputDataCheck() {
    if (useridController.text.trim().isEmpty) {
      errMessage = "ID를 입력해주세요";
      check = false;
      errorSnackBar(context);
    } else {
      // ID를 입력했으면
      if (passwdController.text.trim().isEmpty) {
        // 패스워드를 입력하지 않으면
        errMessage = "Password를 입력해주세요";
        check = false;
        errorSnackBar(context);
      } else {
        if (repasswdController.text.trim().isEmpty) {
          // 확인 패스워드를 입력하지 않으면
          errMessage = "확인 Password를 입력해주세요";
          check = false;
          errorSnackBar(context);
        } else {
          // 패스워드 일치하지 않으면
          if (passwdController.text.trim() != repasswdController.text.trim()) {
            errMessage = "Password가 일치하지 않습니다.";
            check = false;
            errorSnackBar(context);
          } else {
            // 패스워드가 일치하면
            if (nameController.text.trim().isEmpty) {
              // 이름을 입력하지 않으면
              errMessage = "이름을 입력해주세요";
              check = false;
              errorSnackBar(context);
            } else {
              if (emailController.text.trim().isEmpty) {
                // 이메일을 입력핮 ㅣ않으면
                errMessage = "이메일 주소를 입력해주세요.";
                check = false;
                errorSnackBar(context);
              } else {
                if (RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(emailController.text.trim())) {
                  check = true;
                } else {
                  errMessage = "이메일 형식이 잘못되었습니다.";
                  check = false;
                  errorSnackBar(context);
                }
              }
            }
          }
        }
      }
    }
    return check;
  }

  errorSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(errMessage),
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.red,
      ),
    );
  }

  insertAction() async {
    var url = Uri.parse(
        'http://192.168.1.8:8080/Flutter/movie_insert_user.jsp?u_id=${useridController.text.trim()}&u_pw=${passwdController.text.trim()}&u_name=${nameController.text.trim()}&u_email=${emailController.text.trim()}');
    //print(url);
    var response = await http.get(url);

    setState(() {
      var dataConvertedJSON = json.decode(utf8.decode(response.bodyBytes));
      var result = dataConvertedJSON['result'];
      if (result == "OK") {
        _showDialog(context);
        useridController.clear();
        passwdController.clear();
        repasswdController.clear();
        FocusScope.of(context).unfocus();
      } else {
        errorSnackBar(context);
      }
    });
  }

  _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('입력결과'),
            content: const Text('회원 가입이 완료 되었습니다.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.pop(context);
                },
                child: const Text('OK'),
              ),
            ],
          );
        });
  }
} // End
