import 'package:flutter/material.dart';

import 'colors.dart';
import 'info.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.7,
      height:MediaQuery.of(context).size.height*0.08,
      padding: const EdgeInsets.all(10.0),
      color:appBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Row(
           children: [
             CircleAvatar(
               backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),radius: 20,
             ),
             SizedBox(width:MediaQuery.of(context).size.width*0.01),
             Text(info[0]['name'].toString())
           ],
         ),
         Row(
           children: [
             IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.grey,)),
             IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_sharp,color: Colors.grey,)),
           ],
         )
        ],
      ),
    );
  }
}
