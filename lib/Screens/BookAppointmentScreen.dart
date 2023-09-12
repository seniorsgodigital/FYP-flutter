import 'package:flutter/material.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({Key? key}) : super(key: key);

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('Book an Appointment Page', style: TextStyle(fontSize: 20),),
        ),
      )
    );
  }
}
