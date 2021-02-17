import 'package:design_pattern/bloc/userbloc.dart';
import 'package:design_pattern/model/user.dart';
import 'package:design_pattern/ui/userprofile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
       visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  User get initialState => UninitializedUser();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: BlocProvider(
        create: (BuildContext context) => UserBloc(initialState),
        child: UserProfile(),
      )
    );
  }
}
