import 'package:flutter/material.dart';
import 'package:testcode/controlscreen.dart';

class Signinscreen extends StatelessWidget {
  const Signinscreen({super.key});

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
            "Hello",
            style: TextStyle(
              color: Color(0xff0D213C),
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "SIGN IN",
            style: TextStyle(
              color: Color(0xff0D213C),
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xff0D213C),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gmail',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 3,
                          ),
                        ),
                        hintText: 'enter email',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        suffixIcon: Icon(
                          Icons.email,
                          size: 30,
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 3,
                          ),
                        ),
                        hintText: 'enter password',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye_rounded,
                          size: 30,
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(height: 5,),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'forget password?',
                      style: TextStyle(color: Color(0xff454545)),
                    ),
                  ),
                  SizedBox(
                    height: 115,
                  ),
                  Align(
alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(color: Color(0xff0D213C)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        fixedSize: Size(170, 50),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Controlscreen(),
                        ));
                      },
                      child: Text('SIGN IN',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff0D213C),
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
