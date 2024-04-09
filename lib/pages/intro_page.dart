import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 80,bottom: 80, top: 120,right: 80),
            child: Image.asset('lib/images/avocado.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(" We deliver groceries at your doorstep",textAlign: TextAlign.center
              ,style:TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),),
          ),
          Text('Fresh items everyday'),
          SizedBox(height:30,),

          GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HomePage();
                },
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text('Get Started',style: TextStyle(color:Colors.white),),
              ),
            ),
          )
        ],
      ),
    );
    
  }
}
