import 'package:flutter/material.dart';
import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:untitled/pages/HomePage.dart';
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CalendarAppBar(
        backButton: false,
        locale: 'ID',
        accent: Colors.green[700],
        onDateChanged: (value) => print(value),
        firstDate: DateTime.now().subtract(Duration(days: 140)),
        lastDate: DateTime.now(),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green[200],
          child: Icon(Icons.add)
      ),
      body: HomePage(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          IconButton(onPressed: () {
            // Aksi ketika tombol home ditekan
            print('Home button pressed');
          }, icon: Icon(Icons.home)),
          SizedBox(width: 20),
          IconButton(onPressed: (){
            // Aksi ketika tombol search ditekan
            print('list button pressed');
          }, icon: Icon(Icons.list)),


      ],),
      ),
    );
  }
}
