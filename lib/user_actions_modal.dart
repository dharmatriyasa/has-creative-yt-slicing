import 'package:flutter/material.dart';

class UserActionsModal extends StatelessWidget {
  const UserActionsModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Text(
            'Create',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.w600
            ),
          ),
          trailing: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        SizedBox(height: 24.0,),
        ListTile(
          leading: CircleAvatar(
            radius: 28,
            backgroundColor: Colors.grey.shade800,
            child: Icon(Icons.ondemand_video_outlined, color: Colors.white,),
          ),
          title: Text(
            'Create a Short',
            style: TextStyle(
                color: Colors.white
            ),
          ),
        ),
        SizedBox(height: 16.0,),
        ListTile(
          leading: CircleAvatar(
            radius: 28,
            backgroundColor: Colors.grey.shade800,
            child: Icon(Icons.upload_outlined, color: Colors.white,),
          ),
          title: Text(
            'Upload a Video',
            style: TextStyle(
                color: Colors.white),
          ),
        ),
        SizedBox(height: 16.0,),
        ListTile(
          leading: CircleAvatar(
            radius: 28,
            backgroundColor: Colors.grey.shade800,
            child: Icon(Icons.live_tv_outlined, color: Colors.white,),
          ),
          title: Text(
            'Go live',
            style: TextStyle(
                color: Colors.white
            ),
          ),
        ),
        SizedBox(height: 16.0,),
        ListTile(
          leading: CircleAvatar(
            radius: 28,
            backgroundColor: Colors.grey.shade800,
            child: Icon(Icons.people_alt_outlined, color: Colors.white,),
          ),
          title: Text(
            'Go Live Together',
            style: TextStyle(
                color: Colors.white
            ),
          ),
          trailing: Container(
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(4))
            ),
            padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Text(
              'New',
              style: TextStyle(
                fontWeight: FontWeight.bold,

              ),
            ),
          ),
        ),
        SizedBox(height: 16.0,),
        ListTile(
          leading: CircleAvatar(
            radius: 28,
            backgroundColor: Colors.grey.shade800,
            child: Icon(Icons.post_add_outlined, color: Colors.white,),
          ),
          title: Text(
            'Create a post',
            style: TextStyle(color: Colors.white
            ),
          ),
        ),
      ],
    );
  }
}
