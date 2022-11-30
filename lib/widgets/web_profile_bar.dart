import 'package:flutter/material.dart';
import 'package:master_responsiveness/widgets/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.3,
      height:MediaQuery.of(context).size.height*0.08,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: webAppBarColor,
        border:Border(
          right: BorderSide(
            color: dividerColor
          )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),radius: 20,
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.message)),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_sharp))
            ],
          )
        ],
      ),
    );
  }
}
