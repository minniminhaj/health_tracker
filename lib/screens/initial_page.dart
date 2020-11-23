import 'package:flutter/material.dart';
import 'package:health_tracker/constants.dart';
import 'package:health_tracker/screens/home_page.dart';

class InitialPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 2500),(){
        //Navigator.of(context).pushNamed(InputPage.routeName);
        Navigator.of(context).pushReplacementNamed(HomePage.routeName);
    });

    return SafeArea(
        child: Scaffold(
        body: Center(
          child:
         Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
              Container(
                width: 200.0,
                child: Image.asset('assets/images/undraw_Activity_tracker_re_2lvv.png'),),
                SizedBox(
                height: 30.0,
              ),
             Text(
              'Health Tracker',
                style: kLargeButtonTextStyle
              ),
              
             
           ],
         ),
      ),
        )
    );
  }
}