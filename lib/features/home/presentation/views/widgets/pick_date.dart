import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class PickDate extends StatefulWidget {
  const PickDate({Key? key}) : super(key: key);

  @override
  State<PickDate> createState() => _PickDateState();
}

class _PickDateState extends State<PickDate> {
  TextEditingController _fromDateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Container(
        width: 350,
        height: 55,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: TextField(
          controller: _fromDateController,
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2070),
            );
            if (pickedDate != null) {
              setState(() {
                _fromDateController.text =
                    DateFormat('yyyy/MM/dd').format(pickedDate);
              });
            }
          },
          decoration: const InputDecoration(
            hintText: 'Pick a Date',
            prefixIcon: Icon(Icons.calendar_today_rounded),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
            contentPadding: EdgeInsets.symmetric(
                vertical: 10, horizontal: 16),
          ),
        ),
      ),
    );

  }
}
