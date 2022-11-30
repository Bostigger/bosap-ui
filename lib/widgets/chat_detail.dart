import 'package:flutter/material.dart';
import 'package:master_responsiveness/widgets/colors.dart';
import 'package:master_responsiveness/widgets/info.dart';
import 'package:master_responsiveness/widgets/sender_message_Card.dart';
import 'package:master_responsiveness/widgets/user_message_card.dart';
class ChatDetailList extends StatelessWidget {
  const ChatDetailList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
          itemCount: messages.length,
          itemBuilder: (context,index){
          if(messages[index]['isMe']==true){
            return UserMessageCard(message: messages[index]['text'].toString(),date:messages[index]['time'].toString());
          }
          return SenderMessageCard(message: messages[index]['text'].toString(),date:messages[index]['time'].toString());
      });

  }
}

