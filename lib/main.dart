// import 'package:assignment/image2.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(DeviceSettingsApp());
// }
//
// class DeviceSettingsApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: DeviceSettingsScreen(),
//     );
//   }
// }
//
// class DeviceSettingsScreen extends StatefulWidget {
//   @override
//   _DeviceSettingsScreenState createState() => _DeviceSettingsScreenState();
// }
//
// class _DeviceSettingsScreenState extends State<DeviceSettingsScreen> {
//   bool isVacationTimeEnabled = false;
//   bool showMedsName = false;
//   bool notifyPharma = false;
//   bool addSorryTime = false;
//   String selectedAlarmTune = 'Rooster';
//   String selectedAlarmStrength = 'Louder';
//   String selectedSnooze = '5mins';
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
//               MaterialPageRoute(builder: (context) => AddMedicineInfoApp()), // Navigate to DeviceSettingsApp
//             );
//           },
//         ),
//         title:Text('Device settings'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             SwitchListTile(
//               title: Text('Set vacation time', style: TextStyle(
//                 fontWeight: FontWeight.bold,
//               )),
//               value: isVacationTimeEnabled,
//               onChanged: (value) {
//                 setState(() {
//                   isVacationTimeEnabled = value;
//                 });
//               },
//             ),
//             if (isVacationTimeEnabled) ...[
//               Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     labelText: 'Start date & time',
//                     labelStyle: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20.0,
//                     ),
//                     hintText: '        DD / MM / YYYY      HH: MM',
//                     hintStyle: TextStyle(
//                       color: Colors.grey,
//                     ),
//                     border: InputBorder.none,
//                     floatingLabelBehavior: FloatingLabelBehavior.always,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(11.0),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     labelText: 'End date & time',
//                     labelStyle: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20.0,
//                     ),
//                     hintText: '        DD / MM / YYYY      HH: MM',
//                     hintStyle: TextStyle(
//                       color: Colors.grey,
//                     ),
//                     border: InputBorder.none,
//                     floatingLabelBehavior: FloatingLabelBehavior.always,
//                   ),
//                 ),
//               ),
//             ],
//             SwitchListTile(
//               title: Text('Show meds name', style: TextStyle(
//                 fontWeight: FontWeight.bold,
//               )),
//               value: showMedsName,
//               onChanged: (value) {
//                 setState(() {
//                   showMedsName = value;
//                 });
//               },
//             ),
//             SwitchListTile(
//               title: Text('Notify pharma to autofill', style: TextStyle(
//                 fontWeight: FontWeight.bold,
//               )),
//               value: notifyPharma,
//               onChanged: (value) {
//                 setState(() {
//                   notifyPharma = value;
//                 });
//               },
//             ),
//             SwitchListTile(
//               title: Text('Add sorry time', style: TextStyle(
//                 fontWeight: FontWeight.bold,
//               )),
//               value: addSorryTime,
//               onChanged: (value) {
//                 setState(() {
//                   addSorryTime = value;
//                 });
//               },
//             ),
//             ListTile(
//               title: Text('Occupied cabinets', style: TextStyle(
//                 fontWeight: FontWeight.bold,
//               )),
//               subtitle: Text('1, 2, 3, 4, 5'),
//             ),
//             ListTile(
//               title: Text('Alarm settings', style: TextStyle(
//                 fontWeight: FontWeight.bold,
//               )),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: DropdownButtonFormField<String>(
//                 value: selectedAlarmTune,
//                 items: ['Rooster', 'Beep', 'Buzz']
//                     .map((label) => DropdownMenuItem(
//                   child: Text(label),
//                   value: label,
//                 ))
//                     .toList(),
//                 onChanged: (value) {
//                   setState(() {
//                     selectedAlarmTune = value!;
//                   });
//                 },
//                 decoration: InputDecoration(
//                   labelText: 'Alarm tune',
//                   labelStyle: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20.0,
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: DropdownButtonFormField<String>(
//                 value: selectedAlarmStrength,
//                 items: ['Louder', 'Normal', 'Softer']
//                     .map((label) => DropdownMenuItem(
//                   child: Text(label),
//                   value: label,
//                 ))
//                     .toList(),
//                 onChanged: (value) {
//                   setState(() {
//                     selectedAlarmStrength = value!;
//                   });
//                 },
//                 decoration: InputDecoration(
//                   labelText: 'Alarm strength',
//                   labelStyle: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20.0,
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: DropdownButtonFormField<String>(
//                 value: selectedSnooze,
//                 items: ['5mins', '10mins', '15mins']
//                     .map((label) => DropdownMenuItem(
//                   child: Text(label),
//                   value: label,
//                 ))
//                     .toList(),
//                 onChanged: (value) {
//                   setState(() {
//                     selectedSnooze = value!;
//                   });
//                 },
//                 decoration: InputDecoration(
//                   labelText: 'Snooze',
//                   labelStyle: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20.0,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }







import 'package:assignment/image2.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(DeviceSettingsApp());
}

class DeviceSettingsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DeviceSettingsScreen(),
    );
  }
}

class DeviceSettingsScreen extends StatefulWidget {
  @override
  _DeviceSettingsScreenState createState() => _DeviceSettingsScreenState();
}

class _DeviceSettingsScreenState extends State<DeviceSettingsScreen> {
  bool isVacationTimeEnabled = false;
  bool showMedsName = false;
  bool notifyPharma = false;
  bool addSorryTime = false;
  String selectedAlarmTune = 'Rooster';
  String selectedAlarmStrength = 'Medium';
  String selectedSnooze = '10mins';

  void _showBottomSheet(BuildContext context, String title, List<String> options, Function(String) onSelected) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.chevron_left),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Expanded(
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  SizedBox(width: 48), // Placeholder for alignment
                ],
              ),
              SizedBox(height: 16.0),
              ...options.map((option) => ListTile(
                title: Center(child: Text(option, style: TextStyle(
                  fontWeight: selectedAlarmTune == option || selectedAlarmStrength == option || selectedSnooze == option
                      ? FontWeight.bold : FontWeight.normal,
                ))),
                onTap: () {
                  onSelected(option);
                  Navigator.pop(context);
                },
              )).toList(),
              SizedBox(height: 16.0),
            ],
          ),
        );
      },
    );
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
              MaterialPageRoute(builder: (context) => AddMedicineInfoApp()), // Navigate to AddMedicineInfoApp
            );
          },
        ),
        title: Text('Device settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SwitchListTile(
              title: Text('Set vacation time', style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
              value: isVacationTimeEnabled,
              onChanged: (value) {
                setState(() {
                  isVacationTimeEnabled = value;
                });
              },
            ),
            if (isVacationTimeEnabled) ...[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Start date & time',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                    hintText: '        DD / MM / YYYY      HH: MM',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'End date & time',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                    hintText: '        DD / MM / YYYY      HH: MM',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
            ],
            SwitchListTile(
              title: Text('Show meds name', style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
              value: showMedsName,
              onChanged: (value) {
                setState(() {
                  showMedsName = value;
                });
              },
            ),
            SwitchListTile(
              title: Text('Notify pharma to autofill', style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
              value: notifyPharma,
              onChanged: (value) {
                setState(() {
                  notifyPharma = value;
                });
              },
            ),
            SwitchListTile(
              title: Text('Add sorry time', style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
              value: addSorryTime,
              onChanged: (value) {
                setState(() {
                  addSorryTime = value;
                });
              },
            ),
            ListTile(
              title: Text('Occupied cabinets', style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
              subtitle: Text('1, 2, 3, 4, 5'),
            ),
            ListTile(
              title: Text('Alarm settings', style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
            ),
            ListTile(
              title: Text('Alarm tune: $selectedAlarmTune'),
              onTap: () => _showBottomSheet(
                context,
                'Select tune',
                ['Chimes', 'Rooster', 'Sweet piano'],
                    (value) {
                  setState(() {
                    selectedAlarmTune = value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Alarm strength: $selectedAlarmStrength'),
              onTap: () => _showBottomSheet(
                context,
                'Select strength',
                ['Low', 'Medium', 'Louder'],
                    (value) {
                  setState(() {
                    selectedAlarmStrength = value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Snooze: $selectedSnooze'),
              onTap: () => _showBottomSheet(
                context,
                'Select snooze',
                ['5mins', '10mins', '15mins'],
                    (value) {
                  setState(() {
                    selectedSnooze = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

