import 'package:flutter/material.dart';

ThemeData theme(BuildContext context){
  return ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      appBarTheme: AppBarTheme(
        centerTitle: false,
        color: Colors.blue,
        elevation: 0,
        titleTextStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        )
      )
      );
}