
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        // fillColor: Colors.white,
        // filled: true,
        enabledBorder: builtOutlineInputBorder(),
        focusedBorder: builtOutlineInputBorder(),
        hintText: 'search here ',
        suffix: IconButton(
          onPressed: () {},
          icon:  const Opacity(
            opacity: .3,
            child:  Icon(FontAwesomeIcons.magnifyingGlass)),
        ),
      ),
    );
  }
// todo the method 
  OutlineInputBorder builtOutlineInputBorder() {
    return OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(
            12,
          ));
  }
}
