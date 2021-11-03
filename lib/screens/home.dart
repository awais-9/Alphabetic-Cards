import 'package:flutter/material.dart';
import 'package:kidstarter/screens/capital alphabets.dart';
import 'package:kidstarter/screens/small%20alphabets.dart';
import 'package:kidstarter/widgets/category_card.dart';

class HomeScreen extends StatelessWidget {
  final List<Widget> _categories = [
    CategoryCard(
      title: 'Lower Alphabets',
      primaryColor: Colors.orangeAccent[100],
      secondaryColor: Colors.orange,
      screen: AlphabetsScreen2(
        title: 'Small Alphabets',
        primaryColor: Colors.orangeAccent[100],
        secondaryColor: Colors.orange,
      ),
    ),
    CategoryCard(
      title: 'Upper Alphabets',
      primaryColor: Colors.purpleAccent[100],
      secondaryColor: Colors.purple,
      screen: AlphabetsScreen(
        title: 'Capital Alphabets',
        primaryColor: Colors.purpleAccent[100],
        secondaryColor: Colors.purple,
      ),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[50],
          image: DecorationImage(
            image: AssetImage('assets/images/bg-bottom.png'),
            alignment: Alignment.bottomCenter,
          ),
        ),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 188.0,
              backgroundColor: Colors.grey[50],
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/bg-top.png',
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(_categories),
            ),
          ],
        ),
      ),
    );
  }
}
