import 'package:flutter/material.dart';
import 'package:splash/sin-in.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(

            padding: const EdgeInsets.only(left: 15),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Image.asset("assets/smalllogo.png"),
              SizedBox(height: 10,),
              Container(
                height: 220,
                width: 220,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/person.png"))
                ),
              ),
                SizedBox(height: 10,),
                Text('Manage\nYour\nTask With\nDaytask',style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.white
                ),),
                SizedBox(height: 10,),
                Center(
                  child: Container(

                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                    ),
                    child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Sinin()));
                        },
                        child: Center(child: Text('Lets start'),)),
                  ),
                )
            ],),
          ),
        ],
      ),
    );
  }
}
