import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentIndex = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('재경이네', style: TextStyle(color: Colors.black),),),
      body: IndexedStack(
        index: currentIndex,
        children: [
          Container(color: Colors.red,),
          Container(color: Colors.blue,),
          Container(color: Colors.yellow,),
        ],
      ),
      bottomNavigationBar: navigationBar(),
    );
  }

  BottomNavigationBar navigationBar(){
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
      BottomNavigationBarItem(icon: Icon(Icons.category_outlined), label: "category"),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "cart"),
    ],
    currentIndex: currentIndex,
    onTap: (value) {

      currentIndex = value;
      setState(() {

      });
    },
    );
  }
}
