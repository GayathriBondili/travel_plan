import 'package:flutter/material.dart';
import '../widgets/ImageTitle.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[100], // Background color for the entire page
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 200, // Adjust the height of the image
                child: Image.asset('assets/images/explore.jpg', fit: BoxFit.fill),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for a place',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Colors.white, // Background color for the search bar
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Popular Tourist Places',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto', // Change font family
                ),
              ),
              SizedBox(height: 10.0),
              GridView.count(
                crossAxisCount: 3, // Number of columns
                crossAxisSpacing: 10.0, // Spacing between columns
                mainAxisSpacing: 10.0, // Spacing between rows
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(), // Disable scrolling
                children: <Widget>[
                  Image.asset('assets/images/kashmir.jpeg', fit: BoxFit.cover),
                  Image.asset('assets/images/kerala.jpeg', fit: BoxFit.cover),
                  Image.asset('assets/images/adiyogi.jpeg', fit: BoxFit.cover),
                  // Add more images as needed
                  Image.asset('assets/images/eiffel tower.jpeg', fit: BoxFit.cover),
                  Image.asset('assets/images/colosseum.jpeg', fit: BoxFit.cover),
                  Image.asset('assets/images/tajmahal.jpeg', fit: BoxFit.cover),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'Travel Quotes',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto', // Change font family
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '"The journey of a thousand miles begins with a single step."',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Montserrat', // Change font family
                  color: Colors.blue, // Change text color
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '"Travel is the only thing you buy that makes you richer."',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Montserrat', // Change font family
                  color: Colors.green, // Change text color
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '"Adventure is worthwhile."',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Montserrat', // Change font family
                  color: Colors.orange, // Change text color
                ),
              ),
              SizedBox(height: 20.0),
              ExpansionTile(
                title: Text(
                  'About Us',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'This app is developed by the students of 3rd year CAI Sri Vasavi Engineering College.',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Email: sindhujasenapathi70@gmail.com\nPhone: +91 8652941682\nAddress: Tadepalligudem, AndhraPradesh, India',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),),);}}
 