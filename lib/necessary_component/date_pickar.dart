import 'package:ai_chat_gpt/necessary_component/screen_size.dart';
import 'package:flutter/material.dart';

class CustomDatePicker {
  DateTime? selectedDate;
  Future<DateTime?> dataPicker(BuildContext context) async {
    selectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime(2400),
        initialEntryMode: DatePickerEntryMode.calendarOnly,
        selectableDayPredicate: (DateTime? day) {
          print(day);
          if (day != null) {
            selectedDate = day;
            return true;
          }
          return false;
        },
        builder: (context, child) => Theme(
            data: ThemeData(timePickerTheme: TimePickerThemeData()),
            child: child!));
    return selectedDate;
  }

  Future<DateTime?> calenderDatePicker(BuildContext context) async {
    DateTime? dateTime = DateTime.now();
    await showCustomDialog(context);
    /*return showDialog(
        context: context,
        builder: (context) => Dialog(
              child: SizedBox(
                height: ScreenSize(context).height * 0.64,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 1, color: Colors.grey)),
                          child: const Icon(
                            Icons.close,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Builder(
                      builder: (BuildContext context) {
                        return CalendarDatePicker(
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          lastDate: DateTime(2400),
                          currentDate: dateTime,
                          onDateChanged: (DateTime value) {
                            dateTime = value;
                            Navigator.pop(context);
                            print("${dateTime?.day}");
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
            ));*/

    return selectedDate;
  }
  Future<void> showCustomDialog(BuildContext context){
    return showDialog(
        context: context,
        builder: (context) => Dialog(
          child: SizedBox(
            height: ScreenSize(context).width * 0.8,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.grey)),
                      child: const Icon(
                        Icons.close,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Builder(
                    builder: (BuildContext context) {
                      return CalendarDatePicker(
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950),
                        lastDate: DateTime(2400),
                        currentDate: selectedDate,
                        onDateChanged: (DateTime value) {
                          selectedDate = value;
                          Navigator.pop(context);
                          //print("${selectedDate?.day}");
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

