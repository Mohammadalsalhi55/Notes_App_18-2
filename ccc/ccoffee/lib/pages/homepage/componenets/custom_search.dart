import 'package:ccoffee/constant.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    var color = greyColor.withOpacity(0.8);
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color),
            borderRadius: BorderRadius.circular(30)),
        prefixIcon: Icon(
          Icons.search,
          color: color,
        ),
        hintStyle: TextStyle(color: color, fontSize: 14),
        hintText: "Search your coffe",
      ),
    );
  }
}
