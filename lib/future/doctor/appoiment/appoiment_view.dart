// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:se7ety/future/doctor/appoiment/appoiment_list.dart';

class DoctorAppointments extends StatefulWidget {
  const DoctorAppointments({super.key});

  @override
  _DoctorAppointmentsState createState() => _DoctorAppointmentsState();
}

class _DoctorAppointmentsState extends State<DoctorAppointments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'مواعيد الحجز',
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: DoctorAppointmentList(),
      ),
    );
  }
}