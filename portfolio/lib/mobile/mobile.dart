import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/mobile/about.dart';
import 'package:portfolio/mobile/drawer.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MobileView extends StatefulWidget {
  @override
  _MobileViewState createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _certificatesKey = GlobalKey();
  bool _showScrollToTopButton = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.atEdge) {
      bool isBottom = _scrollController.position.pixels != 0;
      setState(() {
        _showScrollToTopButton = isBottom;
      });
    } else {
      setState(() {
        _showScrollToTopButton = false;
      });
    }
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          name.split(' ').first,
          style: GoogleFonts.orbitron(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
            ),
          ),
        ],
      ),
      floatingActionButton: _showScrollToTopButton
          ? FloatingActionButton(
              onPressed: _scrollToTop,
              backgroundColor: secondaryColor,
              child: const Icon(Icons.arrow_upward),
            )
          : null,
      endDrawer: CustomDrawer(
        aboutKey: _aboutKey,
        projectsKey: _projectsKey,
        experienceKey: _experienceKey,
        achievementsKey: _certificatesKey,
        certificatesKey: _certificatesKey,
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            About(aboutKey: _aboutKey),
            const SizedBox(height: 36),
            Container(
              padding: const EdgeInsets.all(16),
              key: _experienceKey,
              // color: Colors.blue,
              child: Center(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Experience",
                        style: GoogleFonts.montserrat(
                          fontSize: 32,
                          color: primaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    for (var experience in experiences)
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 7),
                            width: 2,
                            height: 46,
                            color: Colors.white.withOpacity(0.2),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  experience['title']!,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 20,
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                ),
                                // const SizedBox(height: 2),
                                Row(
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        launchUrlString(
                                            experience['company_link']!);
                                      },
                                      child: Text(
                                        experience['company']!,
                                        style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          color: secondaryColor,
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    if (MediaQuery.of(context).size.width > 370)
                                      Text(
                                        experience['duration']!,
                                        style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          color: Colors.white.withOpacity(0.6),
                                        ),
                                      ),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  experience['description']!,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.white.withOpacity(0.6),
                                  ),
                                ),
                                const SizedBox(height: 18),
                              ],
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
            Container(
              key: _projectsKey,
              padding: const EdgeInsets.all(16),
              // height: 400,
              // color: Colors.green,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Projects",
                      style: GoogleFonts.montserrat(
                        fontSize: 32,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  for (var project in projects)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 24),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 3),
                                width: 2,
                                height: 20,
                                color: Colors.white.withOpacity(0.2),
                              ),
                              const SizedBox(width: 16),
                              Text(
                                project['title']!,
                                style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  color: Colors.white.withOpacity(0.8),
                                ),
                              ),
                              const SizedBox(width: 16),
                              if (project['link'] != null &&
                                  MediaQuery.of(context).size.width > 390)
                                Container(
                                  margin: const EdgeInsets.only(top: 3),
                                  width: 2,
                                  height: 20,
                                  color: Colors.white.withOpacity(0.2),
                                ),
                              if (project['link'] != null &&
                                  MediaQuery.of(context).size.width > 390)
                                TextButton(
                                  onPressed: () {
                                    launchUrlString(project['link']!);
                                  },
                                  child: Text(
                                    "View Project",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      color: secondaryColor,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          if (project['link'] != null &&
                              MediaQuery.of(context).size.width < 390)
                            Align(
                              alignment: Alignment.centerLeft,
                              child: TextButton(
                                onPressed: () {
                                  launchUrlString(project['link']!);
                                },
                                child: Text(
                                  "  View Project",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: secondaryColor,
                                  ),
                                ),
                              ),
                            ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              if (MediaQuery.of(context).size.width > 1100)
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Image.asset(
                                    project['image']!,
                                    width: projectImageWidth,
                                    height: projectImageHeight,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Text(
                                  project['description']!,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    color: Colors.white.withOpacity(0.6),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            Container(
              key: _certificatesKey,
              // height: 400,
              padding: const EdgeInsets.all(16),
              // color: Colors.purple,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Achievements & Certificates",
                      style: GoogleFonts.montserrat(
                        fontSize: 32,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  for (var achievement in achievementsAndCertificates)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 24),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 3),
                                width: 2,
                                height: 20,
                                color: Colors.white.withOpacity(0.2),
                              ),
                              const SizedBox(width: 16),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: Text(
                                  achievement['title']!,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 20,
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16),
                              if (achievement['link'] != null)
                                Container(
                                  margin: const EdgeInsets.only(top: 3),
                                  width: 2,
                                  height: 20,
                                  color: Colors.white.withOpacity(0.2),
                                ),
                              if (achievement['link'] != null)
                                TextButton(
                                  onPressed: () {
                                    launchUrlString(achievement['link']!);
                                  },
                                  child: Text(
                                    "View",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      color: secondaryColor,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            achievement['description']!,
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 36),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Education",
                          style: GoogleFonts.montserrat(
                            fontSize: 32,
                            color: primaryColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        education['degree']!,
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                      Text(
                        education['university']!,
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                      Text(
                        education['duration']!,
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
