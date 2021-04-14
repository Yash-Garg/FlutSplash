import 'package:flutsplash/helpers/oauth_manager.dart';
import 'package:flutsplash/main.dart';
import 'package:flutter/material.dart';

Widget authDialog(TextEditingController codeController) => AlertDialog(
      backgroundColor: accentClr,
      title: Padding(
        padding: EdgeInsets.only(bottom: 25),
        child: Text(
          "Connect FlutSplash + Unsplash",
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
      ),
      content: TextFormField(
        controller: codeController,
        autofocus: true,
        cursorHeight: 20,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          labelText: 'AUTH CODE',
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          contentPadding: EdgeInsets.all(15),
          labelStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () async {
            await getAuthCode();
          },
          child: Text(
            "GET CODE",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF442C2E),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: TextButton(
            onPressed: () {},
            child: Text(
              "LOGIN",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF442C2E),
              ),
            ),
          ),
        )
      ],
    );
