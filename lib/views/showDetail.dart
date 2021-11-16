import 'package:bai_tap_kiem_tra/models/flower.dart';
import 'package:bai_tap_kiem_tra/util/values.dart';
import 'package:bai_tap_kiem_tra/views/flowerScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class detailScreen extends StatelessWidget {
  // var title;
  // var content;
  // var urlToImage;
  // var description;
  Article chitiet;

  detailScreen({required this.chitiet, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MyFlowerScreen()));
              },
              icon: Icon(Icons.keyboard_backspace_outlined, size: 30)),
          title: Text("Flower", style: TextStyle(fontSize: 22)),
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: GestureDetector(
                child: Column(
              children: [
                Card(
                  elevation: 10,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Image.network(chitiet.urlToImage == null ||
                                chitiet.urlToImage == ''
                            ? Value().imge
                            : chitiet.urlToImage),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          chitiet.title,
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Content: " + chitiet.content,
                          maxLines: 2,
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Description: " + chitiet.description,
                          maxLines: 2,
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20)
              ],
            ))));
  }
}
