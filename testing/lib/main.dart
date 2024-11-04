import "package:flutter/material.dart";
import  "../screens/customerAdder.dart";

void main() {
  runApp(home_screen());

}

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:AddedCustomer()
    );
  }
}