import 'package:flutter/material.dart';

import '../widgets/chat_detail.dart';
import '../widgets/colors.dart';
import '../widgets/info.dart';

class MobileAppChatScreen extends StatelessWidget {
  const MobileAppChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(info[0]['name'].toString()),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.video_call,color: Colors.grey,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.call,color: Colors.grey,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_sharp,color: Colors.grey,)),

        ],
      ),
      body: Column(
        children: [
          Expanded(child: ChatDetailList()),
         Row(
           children: [
             IconButton(onPressed: (){}, icon: Icon(Icons.emoji_emotions_outlined,color: Colors.grey,)),
             IconButton(onPressed: (){}, icon: Icon(Icons.attach_file,color: Colors.grey,)),
             Expanded(child:Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextField(
                 decoration: InputDecoration(
                     hintText: 'Type a message',
                     contentPadding: EdgeInsets.all(10),
                     fillColor: searchBarColor,
                     filled: true,
                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20),
                         borderSide: BorderSide.none
                     )
                 ),
               ),
             )
             ),
             IconButton(onPressed: (){}, icon: Icon(Icons.send,color: Colors.grey,)),
           ],
         )
        ],
      ),
    );
  }
}
