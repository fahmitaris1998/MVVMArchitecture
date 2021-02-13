import 'package:design_pattern/model/user.dart';
import 'package:flutter/material.dart';

class CardProfile extends StatelessWidget {
  final User user;

  const CardProfile({Key key, this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(image: NetworkImage(user.avatar),height: 75.0,width: 75.0,)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ID : "+ user.id),
              Text("Nama : "+ user.firstname +" "+user.lastname),
              Text("Email : "+user.email)
            ],
          )
        ],
      ),
    );
  }
}
