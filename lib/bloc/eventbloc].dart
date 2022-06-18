abstract class SignInEvent{}

class SignInTextChangeEvent extends SignInEvent{
  String phonenumber;

  SignInTextChangeEvent(this.phonenumber);

}

class SubmitedbuttonEvent extends SignInEvent{
  String phonenumber;



  SubmitedbuttonEvent(this.phonenumber);


}