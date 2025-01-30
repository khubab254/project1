import 'package:flutter/material.dart';
import 'package:splash/views/spalsh_view/welcome.dart';

class Createaccount extends StatefulWidget {
  const Createaccount({super.key});

  @override
  State<Createaccount> createState() => _CreateaccountState();
}

class _CreateaccountState extends State<Createaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Column(children: [
        Image.asset("assets/smalllogo.png"),
        SizedBox(height: 10,),
        Text('Create Your Account',style: TextStyle(color: Colors.white),),
        SizedBox(height: 20,),
        Text('Full Name',style: TextStyle(color: Colors.white),),
        SizedBox(height: 10,),
        Container(
          height: 50,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.orange,

          ),
          child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Actions(actions: {}, child: Icon(Icons.person,color: Colors.white,)),
            hintText: 'Enter Your Full Name',hintStyle: TextStyle(color: Colors.white)
          ),
        ),),
        SizedBox(height: 20,),
        Text('Email Address',style: TextStyle(color: Colors.white),),
        SizedBox(height: 10,),
        Container(
          height: 50,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.orange
          ),
          child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Actions(actions: {}, child: Icon(Icons.email,color: Colors.white,)),
            hintText: 'Enter Your Email Address',hintStyle: TextStyle(color: Colors.white)
          ),
        ),),
        SizedBox(height: 20,),
        Text('Password',style: TextStyle(color: Colors.white),),
        SizedBox(height: 10,),
        Container(
          height: 50,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.orange
          ),
          child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Actions(actions: {}, child: Icon(Icons.lock,color: Colors.white,)),
            hintText: 'Enter Your Password',hintStyle: TextStyle(color: Colors.white)
          ),
        ),),
        SizedBox(height: 10,),
        Text('I have read & aggred to daytask privacy policy, terms & conditions ',style: TextStyle(color: Colors.white),),
        SizedBox(height: 20,),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Welcome()));
          },
          child: Container(

            height: 50,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.orange
            ),
            child: Center(child: Text('Sign-up',style: TextStyle(color: Colors.black),),),
          ),
        )
      ],),),
    );
  }
}
