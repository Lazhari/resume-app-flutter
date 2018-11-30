import 'package:flutter/material.dart';

class Experience {
  final String jobTitle;
  final String company;
  final String date;
  final Color color;
  final bool active;

  Experience({this.jobTitle, this.company, this.date, this.color, this.active});
}

List<Experience> experiences = [
  new Experience(
      jobTitle: 'JavaScript Expert',
      company: 'SQLi',
      date: '2018',
      color: Colors.orange,
      active: true),
  new Experience(
      jobTitle: 'Full Stack Engineer',
      company: 'Systemantic',
      date: '2017-2018',
      color: Colors.cyan,
      active: false),
  new Experience(
      jobTitle: 'CTO',
      company: 'Linkry Events',
      date: '2016-2017',
      color: Colors.blue,
      active: true),
  new Experience(
      jobTitle: 'Full Stack Engineer',
      company: 'Linkry Events',
      date: '2015-2016',
      color: Colors.blue,
      active: true)
];
