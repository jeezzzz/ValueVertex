class Device {
  final int id;
  final String name;
  final String type;
  final Map<String, dynamic> status;

  Device({
    required this.id,
    required this.name,
    required this.type,
    required this.status,
  });

  factory Device.fromJson(Map<String, dynamic> json) {
    return Device(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      status: json['status'],
    );
  }
}

class Room {
  final String id;
  final String name;
  final String type;
  final List<Device> devices;

  Room({
    required this.id,
    required this.name,
    required this.type,
    required this.devices,
  });

  factory Room.fromJson(Map<String, dynamic> json) {
    var deviceList = json['devices'] as List;
    List<Device> devices = deviceList.map((i) => Device.fromJson(i)).toList();

    return Room(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      devices: devices,
    );
  }
}

// Sample static data (from your JSON)
final List<Room> staticRooms = [
  Room.fromJson({
    "id": "room1",
    "name": "Bedroom 1",
    "type": "bedroom",
    "devices": [
      {
        "id": 1,
        "name": "Ceiling Light",
        "type": "light",
        "status": {"working": true, "brightness": 75, "color": "warm"}
      },
      {
        "id": 2,
        "name": "Bedside Lamp",
        "type": "light",
        "status": {"working": true, "brightness": 50, "color": "warm"}
      },
      {
        "id": 3,
        "name": "Ceiling Fan",
        "type": "fan",
        "status": {"working": true, "speed": 3}
      },
      {
        "id": 4,
        "name": "Window AC",
        "type": "AC",
        "status": {"working": true, "mode": "cool", "temperature": 24}
      },
    ],
  }),
  Room.fromJson({
    "id": "room2",
    "name": "Bedroom 2",
    "type": "bedroom",
    "devices": [
      {
        "id": 5,
        "name": "Ceiling Light",
        "type": "light",
        "status": {"working": true, "brightness": 80, "color": "cool"}
      },
      {
        "id": 6,
        "name": "Bedside Lamp",
        "type": "light",
        "status": {"working": true, "brightness": 40, "color": "warm"}
      },
      {
        "id": 7,
        "name": "Ceiling Fan",
        "type": "fan",
        "status": {"working": false, "speed": null}
      },
      {
        "id": 8,
        "name": "Split AC",
        "type": "AC",
        "status": {"working": true, "mode": "cool", "temperature": 22}
      },
    ],
  }),
  Room.fromJson({
    "id": "room3",
    "name": "Kitchen",
    "type": "kitchen",
    "devices": [
      {
        "id": 9,
        "name": "Ceiling Light",
        "type": "light",
        "status": {"working": true, "brightness": 100, "color": "cool"}
      },
      {
        "id": 10,
        "name": "Exhaust Fan",
        "type": "fan",
        "status": {"working": true, "speed": 2}
      },
      {
        "id": 11,
        "name": "Refrigerator",
        "type": "refrigerator",
        "status": {"working": true, "temperature": 4}
      },
      {
        "id": 12,
        "name": "Microwave Oven",
        "type": "oven",
        "status": {"working": true, "mode": "off"}
      },
    ],
  }),
  Room.fromJson({
    "id": "room4",
    "name": "Living Area",
    "type": "livingroom",
    "devices": [
      {
        "id": 13,
        "name": "Main Light",
        "type": "light",
        "status": {"working": true, "brightness": 90, "color": "cool"}
      },
      {
        "id": 14,
        "name": "Ambient Light",
        "type": "light",
        "status": {"working": true, "brightness": 30, "color": "warm"}
      },
      {
        "id": 15,
        "name": "Ceiling Fan",
        "type": "fan",
        "status": {"working": true, "speed": 2}
      },
      {
        "id": 16,
        "name": "Window AC",
        "type": "AC",
        "status": {"working": true, "mode": "cool", "temperature": 23}
      },
      {
        "id": 17,
        "name": "Television",
        "type": "tv",
        "status": {"working": true, "power": "on", "volume": 15}
      },
    ],
  }),
  Room.fromJson({
    "id": "room5",
    "name": "Washroom",
    "type": "bathroom",
    "devices": [
      {
        "id": 18,
        "name": "Ceiling Light",
        "type": "light",
        "status": {"working": true, "brightness": 100, "color": "cool"}
      },
      {
        "id": 19,
        "name": "Exhaust Fan",
        "type": "fan",
        "status": {"working": true, "speed": 3}
      },
      {
        "id": 20,
        "name": "Water Heater",
        "type": "waterHeater",
        "status": {"working": true, "temperature": 60}
      },
    ],
  }),
];
