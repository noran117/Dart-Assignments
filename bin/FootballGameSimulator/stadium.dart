class Stadium {
  String name, location;
  int? capacity;
  String? weather = 'Undifined', turfType = 'Undifined';

  Stadium({
    required this.name,
    required this.location,
    this.capacity,
    this.weather,
    this.turfType,
  });

  @override
  String toString() {
    return '''Game at: $name, $location 
    Starts at: ${DateTime.now().hour}
    Capacity: ${capacity ?? 'Unknown'}''';
  }
}
