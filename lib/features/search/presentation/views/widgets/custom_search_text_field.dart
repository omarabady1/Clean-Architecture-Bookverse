import 'package:flutter/material.dart';
class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Search',
          labelStyle: const TextStyle(color: Color(0xff728582)),
          floatingLabelStyle: TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(12),
          ),
          prefixIcon: Icon(Icons.search, color: Colors.grey),
          suffixIcon: SizedBox(
            height: 55,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0x30ffeded),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                ),
                child: Icon(Icons.search, color: Colors.white,)
            ),
          ),
        ),
      ),
    );
  }
}