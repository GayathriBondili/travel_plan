import 'package:flutter/material.dart';
import './screens/LoginScreen.dart';
import './screens/HomeScreen.dart';
import './screens/SearchScreen.dart';
import './screens/SpecialSpotsScreen.dart';
import 'package:firebase_core/firebase_core.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyDJtHs7fPm08D5PxY3sp9WBrfDgzfMk2rc",
          appId: "1:1056342777415:android:4428e8bfcf15ef5e2d5b62",
          messagingSenderId: "1056342777415",
          projectId: "travelplan-b71c5"));
  runApp(TravelPlanApp());
}

class TravelPlanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Plan App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/search': (context) => SearchScreen(),
        '/special_spots': (context) => SpecialSpotsScreen(searchQuery: ""),
      },
    );
  }
}
