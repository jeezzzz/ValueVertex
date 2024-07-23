class Room {
  final String id;
  final String name;
  final String type;
  final List<Device> devices;

  Room(
      {required this.id,
      required this.name,
      required this.type,
      required this.devices});

  factory Room.fromJson(Map<String, dynamic> json) {
    var deviceList = json['devices'] as List;
    List<Device> devices =
        deviceList.map((device) => Device.fromJson(device)).toList();

    return Room(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      devices: devices,
    );
  }
}

class Device {
  final int id;
  final String name;
  final String type;
  final Map<String, dynamic> status;

  Device(
      {required this.id,
      required this.name,
      required this.type,
      required this.status});

  factory Device.fromJson(Map<String, dynamic> json) {
    return Device(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      status: json['status'],
    );
  }
}
