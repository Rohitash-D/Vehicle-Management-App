class VehicleEntity {
  final String id;
  final String make;
  final String model;
  final int year;
  final List<MaintenanceRecord> maintenanceHistory;
  final List<RefuelingRecord> refuelingHistory;

  VehicleEntity({
    required this.id,
    required this.make,
    required this.model,
    required this.year,
    this.maintenanceHistory = const [],
    this.refuelingHistory = const [],
  });
}

class MaintenanceRecord {
  final DateTime date;
  final String description;

  MaintenanceRecord({
    required this.date,
    required this.description,
  });
}

class RefuelingRecord {
  final DateTime date;
  final double amount;

  RefuelingRecord({
    required this.date,
    required this.amount,
  });
}
