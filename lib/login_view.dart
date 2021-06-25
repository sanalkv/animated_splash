import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            Hero(
              tag: 'app_icon',
              child: Image.asset(
                'assets/app_icon.png',
                height: 140,
              ),
            ),
            const Spacer(),
            ClipRRect(
              borderRadius:  BorderRadius.circular(5),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey[300]),
                  fillColor: Colors.white,
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey[300]),
                  fillColor: Colors.white,
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('LOGIN'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
