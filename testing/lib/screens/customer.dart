import "package:flutter/material.dart";

import "../widgets/custom_widget_customer.dart";
import  "../assets/user_data.dart";
import 'package:flutter/material.dart';
import '../widgets/custom_widget_customer.dart'; // Ensure this path is correct
import '../assets/user_data.dart';

class Customer extends StatelessWidget {
  // final bool userStatus;
  // late final String status;

  // Customer(this.userStatus) {

  //   status = userStatus ? "Paid" : "Unpaid";
  // }
  bool vTruth;
  Color statusColor  ;
  Customer(this.statusColor,this.vTruth);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transaction List"),
      ),
      body: ListView.builder(
        itemCount: user.length, // Assuming `user` is a List defined in user_data.dart
        itemBuilder: (BuildContext context, int i) {
          return 
            USERS(
              user[i].username,
              user[i].amount.toString(),
              user[i].status,
              user[i].statusColor
              
              
            );
        },
      ),
    );
  }
}