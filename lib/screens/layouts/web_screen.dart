import 'package:flutter/material.dart';
import 'package:master_responsiveness/screens/contact_list.dart';
import 'package:master_responsiveness/widgets/colors.dart';

import '../../widgets/chat_app_bar.dart';
import '../../widgets/chat_detail.dart';
import '../../widgets/web_profile_bar.dart';
import '../../widgets/web_search_bar.dart';
class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Row(
       crossAxisAlignment: CrossAxisAlignment.stretch,
       children: [
         Expanded(
           child: SingleChildScrollView(
             child: Column(
               children: [
                 WebProfileBar(),
                 WebSearchBar(),
                 ChatList(),
               ],
             ),
           ),
         ),
         Container(
           width: MediaQuery.of(context).size.width*0.70,
           decoration: BoxDecoration(
               image : DecorationImage(
                   image: AssetImage('assets/img.png'),fit: BoxFit.cover)
           ),
           child: Column(
             children: [
               WebChatAppBar(),
               Expanded(child: ChatDetailList()),
               Container(
                 height: MediaQuery.of(context).size.width*0.04,
                 padding: EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   color: chatBarMessage,
                   border:Border(
                     bottom: BorderSide(
                       color: dividerColor
                     )
                   )
                 ),
                 child: Row(
                   children: [
                     IconButton(onPressed: (){}, icon: Icon(Icons.emoji_emotions_outlined,color: Colors.grey,)),
                     IconButton(onPressed: (){}, icon: Icon(Icons.attach_file,color: Colors.grey,)),
                     Expanded(
                       child: Padding(
                         padding: EdgeInsets.only(left:10,right:15),
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
                           ))
                       ),
                     IconButton(onPressed: (){}, icon: Icon(Icons.mic,color: Colors.grey,)),
                   ],
                 ),
               )
             ],
           ),
         )
       ],
     )
    );
  }
}
