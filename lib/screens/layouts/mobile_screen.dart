import 'package:flutter/material.dart';

import '../../widgets/colors.dart';
import '../contact_list.dart';
class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: appBarColor,
            title:const Text('Bosapp',style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),
            actions: [
              IconButton(onPressed: (){}, icon:Icon(Icons.search),color: Colors.grey,),
              IconButton(onPressed: (){}, icon:Icon(Icons.more_vert_sharp),color: Colors.grey,),
            ],
            bottom: const TabBar(
              indicatorColor: tabColor,
              indicatorWeight: 4,
              labelColor: tabColor,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold
              ),
              tabs: [
                Tab(text: 'CHATS',),
                Tab(text: 'STATUS',),
                Tab(text: 'CALLS',),
              ],
            ),
          ),
          body: ChatList(),
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            backgroundColor: tabColor,
            child: Icon(Icons.comment),
          ),
        )
    );
  }
}
