import 'package:flutter/material.dart';

// All needed data for the portfolio 😊

const String name = 'Yashvardhan \n Singh';

const String designation = 'Cross-platform Developer';

const String aboutMe =
    "Hi! I'm Yashvardhan Singh, an apprentice developer and third-year student pursuing B.Tech, specializing in cross-platform development. Eager to contribute to innovative projects and gain practical experience in a professional setting. Passionate about the mobile ecosystem, I combine my studies with my practical experience to build intuitive and feature-rich applications. I aspire to put my skills to work on inspiring and challenging projects.";

const myImage = 'assets/yashvardhan.png';

const List<Map<String, String>> experiences = [
  {
    'title': 'Freelance developer',
    'company': 'Canyfix',
    'duration': 'Oct 2024 - Present',
    'description':
        'Worked on vendor and customer applications alongside the internal team integrating B2B features. Created deeplinking within the application using firebase. Helped in revamping the UI for landing page Canyfix website.',
    'company_link': 'https://www.linkedin.com/company/canyfix/'
  },
  {
    'title': 'Flutter Developer Intern',
    'company': 'Infits',
    'duration': 'May 2024 - Aug 2024',
    'description':
        'Worked on a kiosk application to be used across various platforms. Maintained mvc architecture across codebase.',
    'company_link': 'https://www.linkedin.com/company/team-infits/'
  },
];

const List<Map<String, String?>> projects = [
  {
    'title': 'GDG-Recruitment Platform',
    'description':
        'Currently working on the Google Developer Groups (Jssaten) backend application written in Node.js, using Prisma and Postgres.',
    'link': 'https://gdscjss.in/',
    'image': 'assets/expense_tracker.png'
  },
  {
    'title': 'Upchaar',
    'description':
        'Created this project as a solution to major problems faced with virtual healthcare. Placed second runner up in the SprintHacks hackathon held at Kiet Noida.',
    'link': "https://upchaar.live/",
    'image': 'assets/kiosk_app.png'
  },
  {
    "title": "Portfolio",
    'description':
        'Create a portfolio website showcasing my projects, skills and contribution created with flutter and dart.',
    'link': 'https://github.com/Vardhan-ysh/portfolio/tree/main/portfolio',
    'image': 'assets/chefs_recipes.png'
  },
];

const List<Map<String, String>> skills = [
  {'name': 'Flutter', 'image': 'assets/flutter.png'},
  {'name': 'Dart', 'image': 'assets/dart.png'},
  {'name': 'React', 'image': 'assets/react.png'},
  {'name': 'Node.js', 'image': 'assets/nodejs.png'},
  {'name': 'Java', 'image': 'assets/java.png'},
  {'name': 'Firebase', 'image': 'assets/firebase.png'},
  {'name': 'Version Control', 'image': 'assets/git.png'},
  {'name': 'Node.js', 'image': 'assets/nodejs.png'},
  {'name': 'Java', 'image': 'assets/java.png'},
];

const Map<String, String> contact = {
  'Email': 'mailto:yashvardhansingh112233@gmail.com',
  'LinkedIn': 'https://www.linkedin.com/in/vardhan-ysh/',
  'GitHub': 'https://github.com/Vardhan-ysh',
  'Twitter': 'https://x.com/vardhan_ysh',
  'Instagram': 'https://www.instagram.com/vardhan.ysh/',
};

const Map<String, String> education = {
  'degree': 'B.Tech in Computer Science',
  'university': 'JSSATE, Noida',
  'duration': '2022 - 2026',
};

const String resumeLink =
    'https://drive.google.com/file/d/1I0bBcwCK_uhUzbi6powZ1CYMQ3nfeET8/view?usp=drive_link';

const List<Map<String, String>> achievementsAndCertificates = [
  {
    'title': 'SprintHacks Hackathon',
    'description':
        'Placed second in the SprintHacks hackathon conducted at Kiet, Noida. Made Upchaar virtual healthcare application.',
    'link': 'https://github.com/Vardhan-ysh/upchaar'
  },
  {
    'title': 'Open Source Contributions',
    'description':
        'Open source contributions in Monumento and Ultimate alarm clock repositories on GitHub.',
    'link': 'https://github.com/AOSSIE-Org/Monumento'
  },
  {
    'title': 'Flutter Course Certification',
    'description':
        'Completed the Flutter course on Udemy by Maximilian Schwarzmüller. Learned about state management, firebase integration, and more.',
    'link':
        'https://www.udemy.com/certificate/UC-8de9232e-99c5-4a89-a5b7-e0f38e7e6b8f/'
  },
];

const Color primaryColor = Colors.amber;
const Color secondaryColor = Colors.green;

const projectImageWidth = 240.0;
const projectImageHeight = 120.0;
