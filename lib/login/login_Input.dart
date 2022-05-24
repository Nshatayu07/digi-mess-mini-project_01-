import 'package:flutter/material.dart';

class loginInput extends StatefulWidget {
  final String text;
  final IconData icon;

  loginInput({required this.text, required this.icon});

  @override
  State<loginInput> createState() => _loginInputState();
}

class _loginInputState extends State<loginInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
          icon: Icon(widget.icon,
              size: 30.0, color: Colors.black),
          iconColor: Colors.blue[900],
          hintText: widget.text,
          hintStyle:
          const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: (BorderRadius.circular(20.0)),
            borderSide:
            const BorderSide(color: Colors.black, width: 3.0),
          ),
        ),
    );
  }
}
