import 'dart:html';
import 'dart:js';
import 'package:flutter/material.dart';
import 'data_hotel.dart';

class HomePage extends StatelessWidget {

  const HomePage({Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Hotel"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final DataHotel hotel = hotelList[index];
          return InkWell(
            child: Center(
              child: Row(
                children: [
                  Image.network(hotel.imageUrl[0], width: 70,),
                  Text(hotel.name),
                  Text(hotel.stars),
                  Text(hotel.location),
                ],
              ),
            ),
          );
        },
        itemCount: hotelList.length,),
    );
  }

  Widget _buildButtonSubmit(){
    return Container(
      child: ElevatedButton(
        onPressed: (){
        },
        child: Text("Submit"),
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            textStyle: TextStyle(fontSize: 16)
        ),
      ),
    );
  }
}
