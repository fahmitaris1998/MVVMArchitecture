import 'package:bloc/bloc.dart';
import 'package:design_pattern/model/user.dart';

class UserBloc extends Bloc<int, User>{
  UserBloc(User initialState) : super(initialState);
  User get initialState => UninitializedUser();

  @override
  Stream<User> mapEventToState(int event) async* {
    // TODO: implement mapEventToState
    try{
      User user = await User.getUserFromAPI(event);
      yield user;
    }catch(_){

    }
  }

}