import 'package:flutter/material.dart';

class SpecialSpotsScreen extends StatelessWidget {
  final String searchQuery;

  SpecialSpotsScreen({required this.searchQuery});

  @override
  Widget build(BuildContext context) {
    // You can fetch special spots related to the search query from the backend here
    // For simplicity, let's assume we have a list of special spots
    List<String> specialSpots = [
      "Special Spot 1",
      "Special Spot 2",
      "Special Spot 3",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Special Spots'),
      ),
      body: ListView.builder(
        itemCount: specialSpots.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(specialSpots[index]),
            onTap: () {
              // Navigate to the details screen of the selected special spot
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SpecialSpotDetailsScreen(
                    specialSpotName: specialSpots[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class SpecialSpotDetailsScreen extends StatelessWidget {
  final String specialSpotName;

  SpecialSpotDetailsScreen({required this.specialSpotName});

  @override
  Widget build(BuildContext context) {
    // Here you can display details of the selected special spot
    return Scaffold(
      appBar: AppBar(
        title: Text('Special Spot Details'),
      ),
      body: Center(
        child: Text(
          specialSpotName,
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
