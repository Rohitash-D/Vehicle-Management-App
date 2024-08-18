// lib/pages/vehicle_dashboard_page.dart
import 'package:flutter/material.dart';

class VehicleDashboardPage extends StatelessWidget {
  final vehicle;

  VehicleDashboardPage({required this.vehicle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${vehicle.name} Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Icon(Icons.directions_car,
                  size: 100), // Placeholder for vehicle image
            ),
            SizedBox(height: 20),
            Text('Name: ${vehicle.name}', style: TextStyle(fontSize: 22)),
            Text('Status: ${vehicle.status}', style: TextStyle(fontSize: 18)),
            Text('Current Location: Downtown',
                style: TextStyle(fontSize: 18)), // Dummy data
            Text(
                'Last Service Date: ${vehicle.lastUpdated.toLocal().toString().split(' ')[0]}',
                style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement action
              },
              child: Text('Request Maintenance'),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement action
              },
              child: Text('Update Status'),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement action
              },
              child: Text('Contact Support'),
            ),
          ],
        ),
      ),
    );
  }
}
