import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              height: 45,
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
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(22, 12, 0, 12),
                      child: Image.asset('assets/images/ic_btn_facebook.png'),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(14, 6, 6, 6),
                      child: SizedBox(
                        height: 36,
                        child: VerticalDivider(
                          thickness: 2,
                          color: Color(0xfff2346e),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Sign in with Facebook',
                            style: TextStyle(
                              color: Color(0xfff2346e),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(24.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(22, 12, 0, 12),
                      child: Image.asset('assets/images/ic_twitter.png'),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(4, 8, 4, 8),
                      child: SizedBox(
                        height: 36,
                        child: VerticalDivider(
                          thickness: 2,
                          color: Color(0xfff2346e),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Sign in with Twitter',
                            style: TextStyle(
                              color: Color(0xfff2346e),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(24.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'SIGN UP',
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
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'ALREADY REGISTERED ?',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: Colors.white,
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
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
