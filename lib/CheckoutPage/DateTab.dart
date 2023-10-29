import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTab extends StatefulWidget {
  const DateTab({super.key});

  @override
  State<DateTab> createState() => _DateTabState();
}

class _DateTabState extends State<DateTab> {
  static var _startDate = DateFormat('dd-MM-yyyy').format(DateTime.now());
  static var _endDate = DateFormat('dd-MM-yyyy').format(_dateEnd);
  static var _dateStart = DateTime.now();
  static var _dateEnd =
      DateTime(_dateStart.year, _dateStart.month, _dateStart.day + 4);

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: _dateStart,
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    ).then((value) => {
          setState(() {
            _dateStart = value!;
            _startDate = DateFormat('dd-MM-yyyy').format(value!);
          })
        });
  }

  void _showDatePickerEnd() {
    showDatePicker(
      context: context,
      initialDate: _dateEnd,
      firstDate: _dateStart,
      lastDate: DateTime(2025),
    ).then((value) => {
          setState(() {
            _dateEnd = value!;
            _endDate = DateFormat('dd-MM-yyyy').format(value!);
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      height: 183,
      width: 330,
      decoration: const BoxDecoration(
          color: Color(0xFFC4C4C4),
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 70,
            width: 296,
            decoration: const BoxDecoration(
                color: Color(0xFFE5E5E5),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 23,
                      width: 175,
                      child: Text(
                        "Start Date",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF8C7E7E)),
                      ),
                    ),
                    SizedBox(
                      height: 23,
                      width: 175,
                      child: Text(
                        _startDate,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                    onTap: _showDatePicker,
                    child: const Image(
                      image: AssetImage("assets/calendar.png"),
                      height: 30,
                      width: 32,
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          Container(
            height: 70,
            width: 296,
            decoration: const BoxDecoration(
                color: Color(0xFFE5E5E5),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 23,
                      width: 175,
                      child: Text(
                        "End Date",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF8C7E7E)),
                      ),
                    ),
                    SizedBox(
                      height: 23,
                      width: 175,
                      child: Text(
                        _endDate,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                    onTap: _showDatePickerEnd,
                    child: const Image(
                      image: AssetImage("assets/calendar.png"),
                      height: 30,
                      width: 32,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
