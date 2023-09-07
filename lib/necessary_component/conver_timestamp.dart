
class ConvertTimeStamp{
  static DateTime readTimestamp(String timestamp) {
    int time = int.parse(timestamp);
    DateTime date = DateTime.fromMillisecondsSinceEpoch(time * 1000);
    return date;
  }
}