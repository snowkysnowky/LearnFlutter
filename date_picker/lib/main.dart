import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  DateTime selectDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date Picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectDate.toString(),
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: selectDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2025),
                  // initialEntryMode: DatePickerEntryMode.input,
                  // initialDatePickerMode: DatePickerMode.year,
                  // selectableDayPredicate: (day) {
                  //   if ((day.isAfter(DateTime.now()
                  //           .subtract(const Duration(days: 2)))) &&
                  //       (day.isBefore(
                  //           DateTime.now().add(const Duration(days: 2))))) {
                  //     return true;
                  //   }
                  //   return false;
                  // },
                  helpText: "Help Text",
                  cancelText: "Cancel Text",
                  confirmText: "Confirm Text",
                  fieldHintText: "Field Hint Text",
                  fieldLabelText: "Field Label Text",
                  builder: (context, child) {
                    return Theme(data: ThemeData.dark(), child: child!);
                  },
                ).then((value) {
                  setState(() {
                    selectDate = value!;
                  });
                });
              },
              child: const Text("Date Picker"),
            ),
          ],
        ),
      ),
    );
  }
}
