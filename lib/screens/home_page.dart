import 'package:flutter/material.dart';
import 'package:health_tracker/constants.dart';
import 'package:health_tracker/screens/diet_plan_page.dart';
import 'package:health_tracker/screens/input_page.dart';
import 'package:health_tracker/screens/profile_page.dart';
import 'package:health_tracker/screens/tips_page.dart';

class HomePage extends StatefulWidget {
 
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 final _pages=[
   InputPage(),
   DietPlanPage(),
   TipsPage(),
   ProfilePage(),

 ];
int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex],
      bottomNavigationBar: ClipRRect(
        
        borderRadius: BorderRadius.only(topLeft:Radius.circular(20.0),topRight:Radius.circular(20.0)),
        child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.calculate),label:'BMI',backgroundColor: kInactiveCardColour),
          BottomNavigationBarItem(icon: Icon(Icons.food_bank),label:'Diet',backgroundColor: kInactiveCardColour),
          BottomNavigationBarItem(icon: Icon(Icons.new_releases),label:'Tips',backgroundColor: kInactiveCardColour),
          BottomNavigationBarItem(icon: Icon(Icons.perm_identity_rounded),label:'Profile',backgroundColor: kInactiveCardColour),
        ],
        currentIndex: selectedIndex,
        elevation: 6.0,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Color(0xFF8D8E98),
        iconSize: 25.0,
        onTap: (index){
          setState(() {
            this.selectedIndex=index;
          });
        },),
      ),

    );
  }
}