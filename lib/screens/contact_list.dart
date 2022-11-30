import 'package:flutter/material.dart';
import 'package:master_responsiveness/screens/mobile_chat_screen.dart';
import 'package:master_responsiveness/widgets/colors.dart';

import '../widgets/info.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: ListView.builder(
         shrinkWrap: true,
          itemCount: info.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (contex)=>
                       MobileAppChatScreen()
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(info[index]['profilePic'].toString()),radius: 30,
                      ),
                      title: Text(info[index]['name'].toString(),
                          style: TextStyle(fontSize: 18)),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Text(
                          info[index]['message'].toString(),
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                      trailing: Text(info[index]['time'].toString(),
                          style: TextStyle(fontSize: 12, color: Colors.grey)),
                    ),
                  ),
                ),
                Divider(color: dividerColor,indent: 85,)
              ],
            );
          }),
    );
  }
}
