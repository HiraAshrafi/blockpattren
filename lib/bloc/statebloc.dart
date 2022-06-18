abstract class SignInState{}

class SignInInitialState extends SignInState{}
class SignInvalidState extends SignInState{}
class SignInErrorState extends SignInState{
  String messageerror;

  SignInErrorState(this.messageerror);
}

class SignInLoadingState extends SignInState{}
