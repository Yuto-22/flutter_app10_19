import 'package:flutter/material.dart';
import 'package:flutter_app10_19/signpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 40,),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Countinue as guest',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: 140,),
              Image.asset('assets/home.png'),
              SizedBox(height: 60,),

              Text(
                'Welcome to the world’s most\n imaginative marketplace',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 10,),
              SignUp(),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          width: 350,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignPage(),
                ),
              );
            },
            child: Text(
              'Sign up',
              style: TextStyle(
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              onPrimary: Colors.white,
              shape: const StadiumBorder(),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          width: 350,
          height: 50,
          child: ElevatedButton(
            onPressed: () {

            },
            child: Text(
              'I already have an account',
              style: TextStyle(
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.black,
              shape: const StadiumBorder(),
              elevation: 0,
            ),
          ),
        ),
      ],
    );
  }

}