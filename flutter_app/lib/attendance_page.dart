// import 'package:flutter/material.dart';

// class AttendancePage extends StatelessWidget {
//   const AttendancePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:const Text('Attendance'),
//       ),
//       body:const Center(
//         child: Text('Welcome to the Attendance Page!'),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

class AttApp extends StatelessWidget {
  const AttApp({super.key});

  // const AttApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AttendancePage(),
    );
  }
}

class AttendancePage extends StatelessWidget {
  final List<Map<String, dynamic>> members = [
    {
      'name': 'Wade Warrenn',
      'id': 'WSL0003',
      'status': 'Working',
      'loginTime': '09:30 am',
      'logoutTime': null,
      // 'avatar': Icons.person,
    },
    {
      'name': 'Esther Howard',
      'id': 'WSL0034',
      'status': 'Logged Out',
      'loginTime': '09:30 am',
      'logoutTime': '06:40 pm',
      // 'avatar': Icons.person,
    },
    {
      'name': 'Cameron Williamson',
      'id': 'WSL0054',
      'status': 'Not Logged In Yet',
      'loginTime': null,
      'logoutTime': null,
      // 'avatar': Icons.person,
    },
    {
      'name': 'Brooklyn Simmons',
      'id': 'WSL0076',
      'status': 'Logged Out',
      'loginTime': '09:30 am',
      'logoutTime': '06:40 pm',
      // 'avatar': Icons.person,
    },
    {
      'name': 'Savannah Nguyen',
      'id': 'WSL0065',
      'status': 'Logged Out',
      'loginTime': '09:30 am',
      'logoutTime': '06:40 pm',
      // 'avatar': Icons.person,
    },
    {
      'name': 'Leslie Alexander',
      'id': 'WSL0069',
      'status': 'Logged Out',
      'loginTime': '09:30 am',
      'logoutTime': '06:40 pm',
      // 'avatar': Icons.person,
    },
    {
      'name': 'Kathryn Murphy',
      'id': 'WSL0095',
      'status': 'Logged Out',
      'loginTime': '09:30 am',
      'logoutTime': '06:40 pm',
      // 'avatar': Icons.person,
    },
  ];

 AttendancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ATTENDANCE'),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            icon: const Icon(Icons.calendar_today),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children:[
                    Icon(Icons.group, color: Colors.grey),
                    SizedBox(width: 8),
                    Text('All Members', style: TextStyle(fontSize: 16)),
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Row(
                    children:  [
                      Text('Change', style: TextStyle(color: Colors.blue)),
                      Icon(Icons.arrow_drop_down, color: Colors.blue),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: members.length,
              itemBuilder: (context, index) {
                final member = members[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('images/img/m2.jpg'),
                    child: Icon(member['avatar'], color: Colors.black),
                  ),
                  title: Text(
                    '${member['name']} (${member['id']})',
                    style: const TextStyle(fontSize: 16),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          if (member['loginTime'] != null)
                            Text(
                              'Login: ${member['loginTime']}',
                              style: const TextStyle(color: Colors.green),
                            ),
                          const SizedBox(width: 10),
                          if (member['logoutTime'] != null)
                            Text(
                              'Logout: ${member['logoutTime']}',
                              style: const TextStyle(color: Colors.red),
                            ),
                        ],
                      ),
                      if (member['status'] != null)
                        Text(
                          member['status'],
                          style: TextStyle(
                            color: member['status'] == 'Working'
                                ? Colors.green
                                : Colors.grey,
                          ),
                        ),
                    ],
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {},
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {},
              child: const Text('Show Map View',
                  style: TextStyle(color: Colors.blue)),
            ),
          ),
        ],
      ),
    );
  }
}