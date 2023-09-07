
class TimeStamp{
  static DateTime timeStamp({required int time}){
    DateTime date = DateTime.fromMillisecondsSinceEpoch(time * 1000);
    return date;
  }
}