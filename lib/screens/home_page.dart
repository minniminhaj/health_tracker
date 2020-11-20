import 'package:flutter/material.dart';
import 'package:health_tracker/screens/diet_plan_page.dart';
import 'package:health_tracker/screens/input_page.dart';
import 'package:health_tracker/screens/profile_page.dart';

class HomePage extends StatefulWidget {
 
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 final _pages=[
   InputPage(),
   DietPlanPage(),
   ProfilePage()
 ];
int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.healing),label:'BMI'),
        BottomNavigationBarItem(icon: Icon(Icons.healing),label:'Diet'),
        BottomNavigationBarItem(icon: Icon(Icons.perm_identity_rounded),label:'Profile'),
      ],
      currentIndex: selectedIndex,
      elevation: 3.0,
      onTap: (index){
        setState(() {
          this.selectedIndex=index;
        });
      },),

    );
  }
}