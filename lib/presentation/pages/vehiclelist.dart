// lib/pages/vehicle_list_page.dart
import 'package:flutter/material.dart';
import 'package:vehicle_management_app/presentation/pages/vehicledashboardpage/vehicledashboardpage.dart';

class VehicleListPage extends StatelessWidget {
  const VehicleListPage({super.key});

  @override
  Widget build(BuildContext context) {
    var vehicles;
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicle List'),
      ),
      body: ListView.builder(
        itemCount: vehicles.length,
        itemBuilder: (context, index) {
          final vehicle = vehicles[index];
          return ListTile(
            leading:
                Icon(Icons.directions_car), // Placeholder for vehicle image
            title: Text(vehicle.name),
            subtitle: Text(
                'Status: ${vehicle.status}\nLast Updated: ${vehicle.lastUpdated.toLocal().toString().split(' ')[0]}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VehicleDashboardPage(vehicle: vehicle),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
