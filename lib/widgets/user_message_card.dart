import 'package:flutter/material.dart';

import 'colors.dart';
class UserMessageCard extends StatelessWidget {
  final String message;
  final String date;
  const UserMessageCard({Key? key, required this.message, required this.date}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
          constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width-50
          ),
          child: Card(
              elevation: 1,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              color: messageColor,
              child:Stack(
                children: [
                  Padding(
                      child:Text(message,style: TextStyle(fontSize: 16),),
                      padding: EdgeInsets.only(
                          left:10,right:30,top:5,bottom: 20
                      )),
                  Positioned(
                      bottom: 4,
                      right:10,
                      child: Row(
                        children: [
                          Text(date,style: TextStyle(color: Colors.white60,fontSize: 10),),
                          SizedBox(width: 5,),
                          Icon(Icons.done_all, size:20,color: Colors.white60),
                        ],
                      ))
                ],
              )
          )
      ),
    );
  }
}
