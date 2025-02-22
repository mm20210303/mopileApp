import 'package:flutter/material.dart';
import 'package:testcode/signinscreen.dart';
import 'package:testcode/signup.dart';

class welcomescreen extends StatelessWidget {
  const welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:
            Icon(Icons.list_rounded, size: 45, color: const Color(0xff0D213C)),
      ),
      body: Column(
        children: [
          Text(
            'FUTUR ACADEMY',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xff0D213C),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Welcome Back',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff0D213C),
            ),
          ),
          SizedBox(
            height: 75,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              side: BorderSide(color: Color(0xff0D213C)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              fixedSize: Size(170, 50),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signinscreen(),));
            },
            child: Text('SIGN IN',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff0D213C),
                  fontWeight: FontWeight.w600,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff0D213C),
              side: BorderSide(color: Color(0xff0D213C)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              fixedSize: Size(170, 50),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signup()));
            },
            child: Text('SIGN UP',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                )),
          ),
          SizedBox(
            height: 75,
          ),
          Text(
            'Login With Social media',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xff0D213C),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                child: Image.asset('assets/Facebook.png'),
              ),
              SizedBox(
                width: 12,
              ),
              CircleAvatar(
                radius: 30,
                child: Image.asset('assets/Instagram.png'),
              ),
              SizedBox(
                width: 12,
              ),
              CircleAvatar(
                radius: 30,
                child: Image.asset('assets/mail.png'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
