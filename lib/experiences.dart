import 'package:flutter/material.dart';

class Experience {
  final String jobTitle;
  final String company;
  final String date;
  final Color color;
  final bool active;
  final String description;

  Experience(
      {this.jobTitle,
      this.company,
      this.date,
      this.color,
      this.active,
      this.description});
}

List<Experience> experiences = [
  new Experience(
      jobTitle: 'JavaScript Expert',
      company: 'SQLi',
      date: 'Since 2018',
      color: Colors.orange,
      active: true,
      description: ''),
  new Experience(
      jobTitle: 'CTO/Co-founder',
      company: 'Systemantic',
      date: '2017-2018',
      color: Colors.cyan,
      active: false,
      description:
          '- Designing and prototyping an Ethereum blockchain application for the training centers and learning sessions \n\n'
          '- Architected and developed a hybrid API (GraphQL/REST) with Node.js, Express, GraphQL, MongoDB \n\n'
          '- Designing and developing a marketplace for training centers based on React, Node.js, and GraphQL \n\n'
          '- Designing and developing a marketplace for training centers based on React, Node.js, and GraphQL. \n\n'
          '- Architecting large React/Redux applications.\n\n'),
  new Experience(
      jobTitle: 'Technical Consultant and Instructor',
      company: 'Systemantic',
      date: '2017-2018',
      color: Colors.cyan,
      active: false,
      description:
          '- Prepare materials and courses to facilitate technical training \n\n'
          '- Identify Software development Training needs and design \n\n'
          '- Effective training programs for developers \n\n'
          '- Ensure a high level React/React Native/Redux training for front-end engineers \n\n'),
  new Experience(
      jobTitle: 'CTO',
      company: 'Linkry Events',
      date: '2016-2017',
      color: Colors.blue,
      active: false,
      description:
          '- Help teams to design and implement scalable and highly available backend applications and micro-services using JavaScript/Node.js and MongoDB.\n\n'
          '- Identify weaknesses in applications and infrastructure and find reliable solutions for them \n\n'
          '- Develop and design new components for our web app, on the backend and frontend\n\n'),
  new Experience(
      jobTitle: 'Full Stack Engineer',
      company: 'Linkry Events',
      date: '2015-2016',
      color: Colors.blue,
      active: false,
      description: ''),
  new Experience(
      jobTitle: 'Full Stack Engineer',
      company: 'leBordeluche',
      date: '2014-2015',
      color: Colors.deepPurple,
      active: false,
      description: '')
];
