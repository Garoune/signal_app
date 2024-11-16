import 'package:flutter/material.dart';
import 'password_recovery.dart';
import 'blog_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  void navigateToBlogPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'VIP ورود به حساب سیگنال ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25.0, color: Colors.white),
                    )
                  ],
                ),
                Image(
                  image: AssetImage('images/welcome.png.png'),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white, minimumSize: Size(200.0, 40.0),
                      side: BorderSide(color: Colors.white, width: 2.0)),
                  onPressed: () {
                    navigateToBlogPage(context, BlogScreen());
                  },
                  child: Text(
                    'ورود به حساب',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('ثبت نام',
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, minimumSize: Size(200.0, 43.0)),
                ),
                TextButton(
                  onPressed: () {
                    navigateToBlogPage(context, PasswordRecovery());
                  },
                  child: Text('فراموشی رمز عبور'),
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}