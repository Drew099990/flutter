import "package:flutter/material.dart";
import '../assets/user_data.dart';

class USERS extends StatefulWidget {
  String user;
  String amount;
  String status;
  Color statusColor;

  USERS(
    this.user,
    this.amount,
    this.status,
    this.statusColor,
  );

  @override
  State<USERS> createState() => _USERSState();
}

class _USERSState extends State<USERS> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.statusColor,
      child: Row(
        children: [
          SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 10,
              ),
              CircleAvatar(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.network(
                          "https://www.shutterstock.com/image-vector/avatar-profile-icon-man-260nw-400166920.jpg"))),
              Text(
                "K ${widget.amount}",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 8,
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.user,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic),
              ),
              Text(
                widget.status,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                ),
              )
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [  const SizedBox(
            width: 10,
          ),
              Transform.scale(
                  scale: 0.7,
                  child: Switch(
                    activeColor: Colors.white10,
                    activeTrackColor: Color.fromARGB(255, 144, 173, 188),
                    value: true,
                    onChanged: (bool drew) {},
                  )),
            ],
          )
        ],
      ),
    );
  }
}
