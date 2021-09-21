import 'package:show_bakso/screens/register.dart';
import 'package:show_bakso/widget/buttonlogin.dart';
import 'package:show_bakso/widget/form_body.dart';
import 'package:show_bakso/widget/sosmed.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width * 1,
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      width: 200,
                      child: Image.asset(
                        "assets/images/Vector1.png",
                      )),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 100),
                child: Positioned(
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Selamat Datang,',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 25),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Silahkan login untuk lanjut',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Container(
                          child: FormLog(
                            formKey: _formKey,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ButtonLogin(
                          formKey: _formKey,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Text(
                            'Atau',
                            style: TextStyle(fontFamily: 'Poppins'),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(child: Sosmed()),
                        SizedBox(
                          height: size.height * 0.1,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  'Anda tidak punya akun?',
                                  style: TextStyle(fontFamily: 'Poppins'),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                child: GestureDetector(
                                  child: Text(
                                    'Daftar',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFEA8F06)),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return RegisterPage();
                                        },
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
