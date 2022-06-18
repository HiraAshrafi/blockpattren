

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formblock/bloc/eventbloc%5D.dart';
import 'package:formblock/bloc/statebloc.dart';

class SignInBloc extends Bloc<SignInEvent,SignInState>{
  SignInBloc():super(SignInInitialState()){
    on<SignInTextChangeEvent>((event, emit){
      if(event.phonenumber=="" || event.phonenumber.length<=11){
        emit(SignInErrorState('Please Type a Correct Number!'));

      }
      else{
        emit(SignInvalidState());
      }

    });
    on<SubmitedbuttonEvent>((event, emit){
      emit(SignInLoadingState());
    });
  }

}