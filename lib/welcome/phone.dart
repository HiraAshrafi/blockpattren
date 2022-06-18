
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formblock/bloc/eventbloc%5D.dart';
import 'package:formblock/bloc/signbloc.dart';
import 'package:formblock/bloc/statebloc.dart';
class Phone extends StatefulWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  _PhoneState createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  TextEditingController _phonenumber=TextEditingController();
  TextEditingController _vilagenamecontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone Authentication"),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 30),
          child: Column(
            children: [

              SizedBox(height: 10,),
              TextField(
                onChanged: (val){
                  BlocProvider.of<SignInBloc>(context).add(
                    SignInTextChangeEvent(_phonenumber.text)
                  );
                },
                controller: _phonenumber,
                decoration: InputDecoration(
                    hintText: "Enter your phone number"
                ),
              ),
              BlocBuilder<SignInBloc,SignInState>(
                builder: (context,state){
                  if(state is SignInErrorState){
                    return  Row(
                      children: [
                        Text(state.messageerror,
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                      ],
                    );
                  }
                  else{
                    return Container();
                  }
                },

              ),
              SizedBox(height: 10,),
              TextField(
                onChanged: (val){
                  BlocProvider.of<SignInBloc>(context).add(
                      SignInTextChangeEvent(_vilagenamecontroller.text)
                  );
                },
                controller: _vilagenamecontroller,


                decoration: InputDecoration(
                    hintText: "vilage name"
                ),
              ),
              BlocBuilder<SignInBloc,SignInState>(
                builder: (context,state){
                  if(state is SignInErrorState){
                    return  Row(
                      children: [
                        Text(state.messageerror,
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                      ],
                    );
                  }
                  else{
                    return Container();
                  }
                },

              ),

              BlocBuilder<SignInBloc,SignInState>(
                builder: (context,state){
                  if(state is SignInLoadingState){
                    return Center(child: CircularProgressIndicator());
                  }
                  return  CupertinoButton(
                    child: Text("sign Up"),
                    onPressed: (){
                      if(state is SignInvalidState){
                        BlocProvider.of<SignInBloc>(context).add(
                            SubmitedbuttonEvent(_phonenumber.text)
                        );
                      }


                      }

                  );
                }

              )





            ],
          ),
        ),
      ),
    );
  }
}
