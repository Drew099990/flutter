import 'package:flutter/material.dart';
import 'package:testing/models/customer_model.dart';
import 'customer.dart';
import "../assets/user_data.dart";

class AddedCustomer extends StatefulWidget {
  @override
  State<AddedCustomer> createState() => _AddedCustomerState();
}

class _AddedCustomerState extends State<AddedCustomer> {
  final TextEditingController userController = TextEditingController();

  final TextEditingController amountController = TextEditingController();

  String message = "";
  bool CustomerStatus = true;
  String status = "Paid";
  Color StatusColor = const Color.fromARGB(255, 180, 244, 213);

  void navigateToCustomer(BuildContext context) {
   
    setState(() {
      if (userController.text.isEmpty || amountController.text.isEmpty) {
        message = "please fill all fields :(";
      } else {
        message = "";
      }
      if (message != "please fill all fields :(") {
         user.add(User(
      amountController.text,
      userController.text,
      status,
      StatusColor,
    ));
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (_) => Customer(StatusColor, CustomerStatus)),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Customer ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 20,
                color: Colors.amber,
                backgroundColor: Colors.grey,
              ),
            ),
            Icon(Icons.account_circle_outlined),
          ],
        ),
      ),
      resizeToAvoidBottomInset: true,
      body: Container(
        margin: const EdgeInsets.fromLTRB(25, 25, 25, 100),
        height: MediaQuery.of(context).size.height * 0.6,
        child: Card(
          elevation: 6,
          shadowColor: Colors.blueAccent,
          child: Container(
            padding: const EdgeInsets.fromLTRB(32, 70, 33, 70),
            height: MediaQuery.of(context).size.height * 0.7,
            child: ListView(
              children: [
                const Text(
                  " Transactions ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.black12,
                    color: Colors.blueAccent,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("$message ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.black12,
                        color: Colors.blueAccent)),
                TextField(
                  controller: userController,
                  autocorrect: true,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.account_circle_outlined),
                    labelText: "User",
                    hintText: "user-name",
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: amountController,
                  autocorrect: true,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.attach_money),
                    labelText: "Amount",
                    hintText: "amount",
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Transform.scale(
                  scale: 0.85,
                  child: SwitchListTile(
                    title: const Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Row(
                        children: [
                          Icon(Icons.monetization_on_outlined),
                          Text("  Paid",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Color.fromARGB(191, 0, 0, 0),
                                  fontSize: 15)),
                        ],
                      ),
                    ),
                    activeColor: Colors.blueAccent,
                    value: CustomerStatus,
                    onChanged: (bool value) {
                      setState(() {
                        CustomerStatus = value;
                        status = CustomerStatus ? "Paid" : "Unpaid";
                        StatusColor = CustomerStatus
                            ? Colors.greenAccent
                            : const Color.fromARGB(255, 255, 146, 146);
                      });
                    },
                  ),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    navigateToCustomer(context);
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.add),
                      SizedBox(width: 8),
                      Text("Add Transaction"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
