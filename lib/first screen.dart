import 'package:flutter/material.dart';
import 'package:testcode/second%20screen.dart';

class firstscreen extends StatelessWidget {
  const firstscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('code'),centerTitle: true,titleTextStyle: TextStyle(fontSize: 50 , color: Color(0xff0D213C)),
    backgroundColor: Colors.amberAccent,),
     body: ListView(children: 
     [Text('1111111', 
     style: TextStyle(fontSize: 50),),
     Text('222222', 
     style: TextStyle(fontSize: 50),),
     Text('33333', 
     style: TextStyle(fontSize: 50),),
     Text('1111111', 
     style: TextStyle(fontSize: 50),),
     Text('1111111', 
     style: TextStyle(fontSize: 50),),
     Text('1111111', 
     style: TextStyle(fontSize: 50),),
     Text('222222', 
     style: TextStyle(fontSize: 50),),
     Text('33333', 
     style: TextStyle(fontSize: 50),),
     Text('1111111', 
     style: TextStyle(fontSize: 50),),
     Text('1111111', 
     style: TextStyle(fontSize: 50),),
     MaterialButton(onPressed:() {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Secondscreen(),));
      print('hellow coding');
     },color: Colors.amber,
     
    )]));
     //Column(children: [Icon(Icons.list), Text('Mohamed'),Icon(Icons.facebook,size: 50,color: Colors.blue,),Image.asset ('assets/image8.png',height: 50,),],)  ,
    
     // );
  
  }
}