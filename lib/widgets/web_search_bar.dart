import 'package:flutter/material.dart';
import 'package:master_responsiveness/widgets/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.height * 0.06,
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: dividerColor))),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Search a friend',
            hintStyle: const TextStyle(fontSize: 14),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
            fillColor: searchBarColor,
            filled: true,
            prefixIcon: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Icon(Icons.search,size: 20,),
            ),
        contentPadding: const EdgeInsets.all(10)),
      ),
    );
  }
}
