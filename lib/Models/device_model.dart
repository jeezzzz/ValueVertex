// models/device.dart
class DeviceStatus {
  final bool working;
  final int? brightness;
  final int? speed;
  final int? temperature;
  final String? color;
  final String? mode;
  final String? power;

  DeviceStatus({
    required this.working,
    this.brightness,
    this.speed,
    this.temperature,
    this.color,
    this.mode,
    this.power,
  });

  factory DeviceStatus.fromJson(Map<String, dynamic> json) {
    return DeviceStatus(
      working: json['working'],
      brightness: json['brightness'],
      speed: json['speed'],
      temperature: json['temperature'],
      color: json['color'],
      mode: json['mode'],
      power: json['power'],
    );
  }
}

class Device {
  final int id;
  final String name;
  final String type;
  final DeviceStatus status;

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
      status: DeviceStatus.fromJson(json['status']),
    );
  }
}
