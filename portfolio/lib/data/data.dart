import 'package:flutter/material.dart';

// All needed data for the portfolio 😊

const String name = 'Yashvardhan \n Singh';

const String designation = 'Cross-platform Developer';

const String aboutMe =
    "Hi! I'm Yashvardhan Singh, an apprentice developer and third-year student pursuing B.Tech, specializing in cross-platform development. Passionate about the mobile ecosystem, I combine my studies with my practical experience to build intuitive and feature-rich applications. I aspire to put my skills to work on inspiring and challenging projects.";

const myImage = 'assets/yashvardhan.jpg';

const List<Map<String, String>> experiences = [
  {
    'title': 'Flutter Developer',
    'company': 'Infits Pvt. Ltd.',
    'duration': 'May 2024 - August 2024',
    'description':
        'Worked on developing and maintaining mobile applications using Flutter. Collaborated with the design team to implement new features and improve user experience.',
    'company_link': 'https://www.linkedin.com/company/team-infits/'
  },
  {
    'title': 'Flutter Developer Intern',
    'company': 'HelpyMoto',
    'duration': 'Feburary 2024 - April 2024',
    'description':
        'Responsible for developing cross-platform mobile applications. Participated in code reviews and contributed to the improvement of the development process.',
    'company_link': 'https://www.linkedin.com/company/helpy-moto/'
  },
];

const List<Map<String, String?>> projects = [
  {
    'title': 'Kiosk App',
    'description':
        'A mobile application that helps users find the best motivational quotes to keep them inspired and motivated. The app is built using Flutter and Firebase.',
    'link': null,
    'image': 'assets/kiosk_app.png'
  },
  {
    "title": "Chef’s Recipes",
    'description':
        'A mobile application that helps users find the best fitness trainers in their area. The app is built using Flutter and Firebase.',
    'link': 'https://github.com/Vardhan-ysh/chefs_recipes',
    'image': 'assets/chefs_recipes.png'
  },
  {
    'title': 'Expense Tracker App',
    'description':
        'A mobile application that helps users find the best fitness trainers in their area. The app is built using Flutter and Firebase.',
    'link': 'https://github.com/Vardhan-ysh/expense_tracker',
    'image': 'assets/expense_tracker.png'
  },
];

const List<Map<String, String>> skills = [
  {'name': 'Flutter', 'image': 'assets/flutter.png'},
  {'name': 'Dart', 'image': 'assets/dart.png'},
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
    'https://drive.google.com/file/d/1l0GVbZ2N9YfhXJwH63njTrUm0Mbfvuh3/view?usp=drivesdk';

const List<Map<String, String>> achievementsAndCertificates = [
  {
    'title': 'SprintHacks Hackathon',
    'description':
        'Participated in the SprintHacks Hackathon and developed a mobile/web application that helps users get sustainable healthcare solution.',
    'link': 'https://github.com/Vardhan-ysh/upchaar'
  },
  {
    'title': 'Flutter & Dart - The Complete Guide',
    'description':
        'Completed the Flutter Development Course on Udemy and built several projects to enhance my skills.',
    'link':
        'https://www.udemy.com/certificate/UC-8de9232e-99c5-4a89-a5b7-e0f38e7e6b8f/'
  },
];

const Color primaryColor = Colors.amber;
const Color secondaryColor = Colors.green;

const projectImageWidth = 240.0;
const projectImageHeight = 120.0;
