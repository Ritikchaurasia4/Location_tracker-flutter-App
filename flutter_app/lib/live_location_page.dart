// lib/live_location_page.dart
import 'package:flutter/material.dart';

class LiveLocationPage extends StatelessWidget {
  const LiveLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Track Live Location'),
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          // Header with user details
          Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(16.0),
            child: const Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('images/img/mukesh.jpg'),
                  // child:  Icon(Icons.person, color: Colors.pink),
                ),
                 SizedBox(width: 10),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Esther Howard (WSL0053)',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      'Change',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Map placeholder
          Expanded(
            child: Stack(
              children: [
                Container(
                  color: Colors.grey[300],
                  child: const Center(
                    child: Text('Map Placeholder'),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 150,
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/img/m1.jpg'),
                        radius: 30,
                        child: const Icon(Icons.location_on, color: Colors.blue),
                      ),
                      const Text('5 min ago', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Site list
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text('Total Sites: 10', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Tue, Aug 31 2022', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: ListView(
              children: [
                _buildSiteItem(
                    '2715 Ash Dr. San Jose, South Dakota 83475', 'Left at 08:30 am'),
                _buildSiteItem(
                    '1901 Thornridge Cir. Shiloh, Hawaii 81063', '09:45 am - 12:45 pm'),
                _buildSiteItem(
                    '412 N College Ave, College Place, WA, US', '02:15 pm - 02:30 pm'),
                _buildSiteItem(
                    'PH Sales & Marketing 4 Benoi Crescent, Singapore', '03:00 pm - 03:25 pm'),
                _buildSiteItem(
                    '6 Rue Jean-Louis Grivaz 74000 Annecy', '04:00 pm - 04:15 pm'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSiteItem(String address, String time) {
    return ListTile(
      title: Text(address),
      subtitle: Text(time),
      trailing: const Icon(Icons.arrow_forward),
      onTap: () {
        // Handle item click
      },
    );
  }
}
