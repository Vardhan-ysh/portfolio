import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
      ),
      body: const PortfolioContent(),
    );
  }
}

class PortfolioContent extends StatelessWidget {
  const PortfolioContent({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return _buildWideContainers();
        } else {
          return _buildNarrowContainers();
        }
      },
    );
  }

  Widget _buildWideContainers() {
    return Row(
      children: [
        Expanded(child: _buildAboutSection()),
        Expanded(child: _buildProjectsSection()),
        Expanded(child: _buildContactSection()),
      ],
    );
  }

  Widget _buildNarrowContainers() {
    return Column(
      children: [
        _buildAboutSection(),
        _buildProjectsSection(),
        _buildContactSection(),
      ],
    );
  }

  Widget _buildAboutSection() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const Text('About Me'),
    );
  }

  Widget _buildProjectsSection() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const Text('Projects'),
    );
  }

  Widget _buildContactSection() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const Text('Contact'),
    );
  }
}