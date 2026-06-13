
import 'package:flutter/material.dart';
import 'package:jobboardhrapp/features/user/data/model/user_model.dart';

class UserWidget extends StatelessWidget {
  UserModel user;
   UserWidget({super.key,required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
            user.profileImage !=null && user.profileImage!.isNotEmpty
                            ? CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    user.fullProfileImagePath.toString()),
                              )
                            : const CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 30,
                                backgroundImage:
                                    AssetImage("assets/images/person.png"),
                              ),
            
            Text(user.username.toString(),
            style: TextStyle(color: Colors.black,fontSize: 15,
            fontWeight: FontWeight.w700),)
           ],
        ),
        SizedBox(height: 15,),
        Text(user.email.toString(),
        style: TextStyle(color: Colors.black,fontSize: 15),)
      ],
    );
  }
}