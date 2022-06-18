
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formblock/bloc/signbloc.dart';
import 'package:formblock/welcome/phone.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 300,),
              Text("Example",
                style: TextStyle(fontSize: 25,color: Colors.blue,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 250,),
              CupertinoButton(
                color: Colors.blue,

                child: Text("Login With Email",style: TextStyle(color: Colors.white,fontSize: 18),),
                onPressed: (){

                },

              ),
              SizedBox(height: 10,),
              CupertinoButton(
                color: Colors.blue,


                child: Text("Login With Phone",style: TextStyle(color: Colors.white,fontSize: 18),),
                onPressed: (){

                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>BlocProvider(

                      create: (context)=>SignInBloc(),
                        child: Phone())
                  ));



                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
