import 'package:flutter/material.dart';
import 'package:splash/controller/components/text-component.dart';
import 'package:splash/createaccount.dart';

class Sinin extends StatefulWidget {
  const Sinin({super.key});

  @override
  State<Sinin> createState() => _SininState();
}

class _SininState extends State<Sinin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(children: [
          Image.asset("assets/smalllogo.png"),
          SizedBox(height: 10,),
          Text('Welcome Back!',style: TextStyle(color: Colors.white),),
          SizedBox(height: 20,),
          Text('Enter Your Email',style: TextStyle(color: Colors.white),),
          SizedBox(height: 10,),
          Container(
            height: 50,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.orange
            ),
            child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Actions(actions: {}, child: Icon(Icons.mail,color: Colors.white,)),
              hintText: 'Enter Your Email',hintStyle: TextStyle(color: Colors.white),
            ),
          ),),
          SizedBox(height: 20,),
          TextWidget(text: 'Enter Your password'),
          //Text('Enter Your Password',style: TextStyle(color: Colors.white),),
          SizedBox(height: 10,),
          Container(
            height: 50,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.orange,
              
            ),
            child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Actions(actions: {}, child: Icon(Icons.lock,color: Colors.white,)),
               hintText: 'Enter Your Password',hintStyle: TextStyle(color: Colors.white)
            ),
          ),),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Createaccount()));
            },
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.orange
              ),
              child: Center(child: Text('Log-in',style: TextStyle(color: Colors.white),),),
            ),
          ),
          SizedBox(height: 20,),
          Text('----or continue with----',style: TextStyle(color: Colors.white),),
          SizedBox(height: 20,),
          Container(
            height: 50,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.orange
            ),
            child: Center(child: Text('G Google',style: TextStyle(color: Colors.white),),),
          ),
          SizedBox(height: 20,),
          Text('Dont have an account? sin-up',style: TextStyle(color: Colors.white),)

        ],),
      ),
    );
  }
}

