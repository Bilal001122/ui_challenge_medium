class Event {
  final String name;
  final bool isDone;

  Event({required this.name, required this.isDone});
}


List<Event> events = [
  Event(name: 'Devfest 2022', isDone: true),
  Event(name: 'Flutter Forward Extended.', isDone: false),
];

List<Event> bootCamps = [
  Event(name: 'Devfest 2022', isDone: true),
  Event(name: 'Flutter Forward Extended.', isDone: false),
];