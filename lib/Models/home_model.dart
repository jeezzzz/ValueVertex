import 'package:value_vertex/Models/room_model.dart';

class Home {
  final String name;
  final List<Room> rooms;

  Home({required this.name, required this.rooms});

  factory Home.fromJson(Map<String, dynamic> json) {
    var roomList = json['rooms'] as List;
    List<Room> rooms = roomList.map((room) => Room.fromJson(room)).toList();

    return Home(
      name: json['name'],
      rooms: rooms,
    );
  }
}
