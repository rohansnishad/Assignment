// import 'package:assignment/main.dart';
// import 'package:flutter/material.dart';
//
//
// class AddMedicineInfoApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: AddMedicineInfoScreen(),
//     );
//   }
// }
//
// class AddMedicineInfoScreen extends StatefulWidget {
//   @override
//   _AddMedicineInfoScreenState createState() => _AddMedicineInfoScreenState();
// }
//
// class _AddMedicineInfoScreenState extends State<AddMedicineInfoScreen> {
//   String frequency = 'Daily';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.chevron_left), // Changed icon to chevron_left
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => DeviceSettingsApp()), // Navigate to DeviceSettingsApp
//             );
//           },
//         ),
//         title: Center(child: Text('Add Medicine Info')),
//         actions: [
//           TextButton(
//             onPressed: () {},
//             child: Text(
//               'Next',
//               style: TextStyle(
//                 color: Colors.lightBlue,
//                 fontSize: 18.0,
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             TextField(
//               decoration: InputDecoration(
//                 labelText: 'Medicine name',
//                 hintText: 'enter name',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20.0),
//             Text('Frequency', style: TextStyle(fontSize: 16.0, color: Colors.grey)),
//             RadioListTile<String>(
//               title: const Text('Daily'),
//               value: 'Daily',
//               groupValue: frequency,
//               onChanged: (value) {
//                 setState(() {
//                   frequency = value!;
//                 });
//               },
//             ),
//             RadioListTile<String>(
//               title: const Text('Specific days'),
//               value: 'Specific days',
//               groupValue: frequency,
//               onChanged: (value) {
//                 setState(() {
//                   frequency = value!;
//                 });
//               },
//             ),
//             RadioListTile<String>(
//               title: const Text('Interval'),
//               value: 'Interval',
//               groupValue: frequency,
//               onChanged: (value) {
//                 setState(() {
//                   frequency = value!;
//                 });
//               },
//             ),
//             RadioListTile<String>(
//               title: const Text('As needed'),
//               value: 'As needed',
//               groupValue: frequency,
//               onChanged: (value) {
//                 setState(() {
//                   frequency = value!;
//                 });
//               },
//             ),
//             SizedBox(height: 20.0),
//             AlarmDoseField(),
//             AlarmDoseField(),
//             AlarmDoseField(),
//             AlarmDoseField(),
//             AlarmDoseField(),
//             SizedBox(height: 10.0),
//             Center(
//               child: TextButton.icon(
//                 onPressed: () {},
//                 icon: Icon(Icons.add_circle_outline, color: Colors.lightBlue),
//                 label: Text('Add more alarm', style: TextStyle(color: Colors.lightBlue)),
//                 style: TextButton.styleFrom(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30.0),
//                   ),
//                   backgroundColor: Colors.lightBlue.withOpacity(0.1),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class AlarmDoseField extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Row(
//         children: [
//           Expanded(
//             child: TextField(
//               decoration: InputDecoration(
//                 labelText: 'Set time & dose',
//                 hintText: '08:00',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(width: 10.0),
//           Container(
//             width: 80.0,
//             child: TextField(
//               decoration: InputDecoration(
//                 hintText: '5 ml',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }






import 'package:flutter/material.dart';
import 'package:assignment/main.dart'; // Ensure this import is correct

class AddMedicineInfoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddMedicineInfoScreen(),
    );
  }
}

class AddMedicineInfoScreen extends StatefulWidget {
  @override
  _AddMedicineInfoScreenState createState() => _AddMedicineInfoScreenState();
}

class _AddMedicineInfoScreenState extends State<AddMedicineInfoScreen> {
  String frequency = 'Daily';
  List<Widget> alarmFields = [];

  @override
  void initState() {
    super.initState();
    // Initialize with one AlarmDoseField
    alarmFields.add(AlarmDoseField());
  }

  void addAlarmField() {
    setState(() {
      alarmFields.add(AlarmDoseField());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left), // Changed icon to chevron_left
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DeviceSettingsApp()), // Navigate to DeviceSettingsApp
            );
          },
        ),
        title: Center(child: Text('Add Medicine Info')),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Next',
              style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Medicine name',
                hintText: 'enter name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text('Frequency', style: TextStyle(fontSize: 16.0, color: Colors.grey)),
            RadioListTile<String>(
              title: const Text('Daily', style: TextStyle(color: Colors.black)),
              value: 'Daily',
              groupValue: frequency,
              onChanged: (value) {
                setState(() {
                  frequency = value!;
                });
              },
              activeColor: Colors.lightBlue,
            ),
            RadioListTile<String>(
              title: const Text('Specific days', style: TextStyle(color: Colors.black)),
              value: 'Specific days',
              groupValue: frequency,
              onChanged: (value) {
                setState(() {
                  frequency = value!;
                });
              },
              activeColor: Colors.lightBlue,
            ),
            RadioListTile<String>(
              title: const Text('Interval', style: TextStyle(color: Colors.black)),
              value: 'Interval',
              groupValue: frequency,
              onChanged: (value) {
                setState(() {
                  frequency = value!;
                });
              },
              activeColor: Colors.lightBlue,
            ),
            RadioListTile<String>(
              title: const Text('As needed', style: TextStyle(color: Colors.black)),
              value: 'As needed',
              groupValue: frequency,
              onChanged: (value) {
                setState(() {
                  frequency = value!;
                });
              },
              activeColor: Colors.lightBlue,
            ),
            SizedBox(height: 20.0),
            Column(
              children: alarmFields,
            ),
            SizedBox(height: 10.0),
            Center(
              child: TextButton.icon(
                onPressed: addAlarmField,
                icon: Icon(Icons.add_circle_outline, color: Colors.lightBlue),
                label: Text('Add more alarm', style: TextStyle(color: Colors.lightBlue)),
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  backgroundColor: Colors.lightBlue.withOpacity(0.1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AlarmDoseField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Set time & dose',
                hintText: '08:00',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
          SizedBox(width: 10.0),
          Container(
            width: 80.0,
            child: TextField(
              decoration: InputDecoration(
                hintText: '5 ml',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
