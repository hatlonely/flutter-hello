import 'dart:async';

import 'package:another_flushbar/flushbar.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

class ButtonDemo extends StatelessWidget {
  final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FabCircularMenu(children: <Widget>[
        IconButton(icon: Icon(Icons.home), onPressed: () => {print('Home')}),
        IconButton(icon: Icon(Icons.favorite), onPressed: () => {print('Favorite')})
      ]),
      body: Column(
        children: [
          ElevatedButton(onPressed: () => {print("click ElevatedButton")}, child: Text("ElevatedButton")),
          TextButton(onPressed: () => {print("click TextButton")}, child: Text("TextButton")),
          OutlinedButton(onPressed: () => {print("click OutlinedButton")}, child: Text("OutlinedButton")),
          LikeButton(onTap: (bool isLiked) async {
            print("LikeButton $isLiked");
            return !isLiked;
          }),
          IconButton(onPressed: () => {print("click IconButton")}, icon: Icon(Icons.analytics)),
          RoundedLoadingButton(
            child: Text('RoundedLoadingButton', style: TextStyle(color: Colors.white)),
            controller: _btnController,
            onPressed: () async {
              Timer(Duration(seconds: 3), () {
                _btnController.success();
              });
            },
          ),
          MaterialButton(
            child: Text("MaterialButton"),
            onPressed: () {
              Flushbar(
                title: "Hey Ninja",
                message: "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                duration: Duration(seconds: 3),
              )..show(context);
            },
          ),
          PopupMenuButton<WhyFarther>(
            onSelected: (WhyFarther result) {
              print(result);
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.harder,
                child: Text('Working a lot harder'),
              ),
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.smarter,
                child: Text('Being a lot smarter'),
              ),
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.selfStarter,
                child: Text('Being a self-starter'),
              ),
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.tradingCharter,
                child: Text('Placed in charge of trading charter'),
              ),
            ],
          ),
          DropdownButton<String>(
            value: 'One',
            icon: const Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String? newValue) {
              print(newValue);
            },
            items: <String>['One', 'Two', 'Free', 'Four'].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
