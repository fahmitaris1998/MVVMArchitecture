import 'package:design_pattern/bloc/userbloc.dart';
import 'package:design_pattern/model/user.dart';
import 'package:design_pattern/ui/cardprofile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    UserBloc bloc = BlocProvider.of<UserBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('MVVM Architecture'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RaisedButton(
              onPressed: (){
                bloc.add(10);
              },
            child: Text("Random Profile"),
          ),
          BlocBuilder<UserBloc,User>(builder:(context,user) => (user is UninitializedUser) ? Container(child: Text("asd"),):CardProfile(user: user,))
        ],
      )
    );
  }
}
