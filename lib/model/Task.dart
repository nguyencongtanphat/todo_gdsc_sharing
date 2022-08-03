import 'package:uuid/uuid.dart';

var uuid = Uuid();

class Task {
  String id = uuid.v4();
  bool status;
  String content;
  Task({required this.content, this.status = false});
}
