import 'package:flutter/material.dart';
import 'package:homework1/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xfffa7b43), Color(0xffec3067)],
            ),
          ),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 46,
              ),
              Image.asset(
                'assets/images/ic_logo.png',
                fit: BoxFit.cover,
                width: 130,
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'CONN',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                        color: Color(0xfff2346e),
                      ),
                    ),
                    TextSpan(
                      text: 'ENXION',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Find and Meet people around \n you to find LOVE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  height: 1.2,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'SIGN IN',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  height: 1.2,
                ),
                textAlign: TextAlign.center,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Enter Email',
                    hintStyle: TextStyle(color: Colors.white54),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white54),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white54),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white54),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Expanded(
                      child: SizedBox(
                        height: 10,
                      ),
                    ),
                    // Transform.scale(
                    //   scale: 0.9,
                    Checkbox(
                      checkColor: Colors.white,
                      value: isChecked,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4.0),
                        ),
                      ),
                      activeColor: Colors.orange,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    //),
                    const Text(
                      'Remember Password',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: 250,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    // TODO
                  },
                  child: const Text(
                    'GET STARTED',
                    style: TextStyle(
                        color: Color(0xffec3067),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.white,
                    child: Image.asset('assets/images/ic_btn_facebook.png'),
                    padding: const EdgeInsets.all(15.0),
                    shape: const CircleBorder(),
                  ),
                  RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.white,
                    child: Image.asset('assets/images/ic_twitter.png'),
                    padding: const EdgeInsets.all(19.0),
                    shape: const CircleBorder(),
                  ),
                ],
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'FORGOT PASWWORD?',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.black26,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'DONT HAVE ACCOUNT ? ',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Color(0xffe24d4d),
                      ),
                    ),
                    SizedBox(
                      height: 38,
                      child: TextButton(
                        child: const Text(
                          'SIGN UP',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterPage(
                                title: 'Register',
                              ),
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
    );
  }
}
