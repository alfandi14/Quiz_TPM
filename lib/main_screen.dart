import 'package:flutter/material.dart';
import 'package:quiz_tpm/home_page.dart';
import 'data_hotel.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

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
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomePage();
            }));
          },
          child: Card(
            child: Row(
              children: [
                Image.network(hotel.imageUrl[0], width: 70,),
                Text(hotel.name),
                Text(hotel.stars),
                Text(hotel.roomPrice)
              ],
            ),
          ),
        );
      },
      itemCount: hotelList.length,),
  );
  }
}
