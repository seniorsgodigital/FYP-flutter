import 'package:flutter/material.dart';
import 'package:seniors_go_digital/Screens/BookAppointmentScreen.dart';
import 'package:seniors_go_digital/Screens/ChatbotScreen.dart';
import 'package:seniors_go_digital/Screens/DiscussionForumScreen.dart';
import 'package:seniors_go_digital/Screens/ProfileScreen.dart';

void main() {
  runApp(SeniorsGoDigitalApp());
}

class SeniorsGoDigitalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SeniorsDashboard(),
    );
  }
}

class SeniorsDashboard extends StatefulWidget {
  @override
  _SeniorsDashboardState createState() => _SeniorsDashboardState();
}

class _SeniorsDashboardState extends State<SeniorsDashboard> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    BookAppointment(),
    ChatbotScreen(),
    DiscussionForumScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BookAppointment()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChatbotScreen()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DiscussionForumScreen()),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfileScreen()),
        );
        break;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Handle menu icon press
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () {
              // Handle help icon press
            },
          ),
        ],
        title: Text('Seniors Go Digital'),
      ),
      body: Column(
        children: [
          SearchBar(),
          PopularServices(),
          ExploreOption(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chatbot',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forum),
            label: 'Forum',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue, // Change this color for selected icon
        unselectedItemColor: Colors.grey, // Change this color for unselected icons
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Screen'),
    );
  }
}

// Implement other screen classes (BookingScreen, ChatbotScreen, etc.) similarly

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search...',
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}

class PopularServices extends StatefulWidget {
  @override
  _PopularServicesState createState() => _PopularServicesState();
}

class _PopularServicesState extends State<PopularServices> {
  List<String> services = [
    'Service 1',
    'Service 2',
    'Service 3',
    'Service 4',
    'Service 5',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: ListView.builder(
        itemCount: services.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Handle service card tap
            },
            child: Container(
              width: 150.0,
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              color: currentIndex == index ? Colors.blue : Colors.grey,
              child: Center(
                child: Text(
                  services[index],
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ExploreOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle explore option tap
      },
      child: Card(
        // Implement card UI for the explore option
      ),
    );
  }
}
