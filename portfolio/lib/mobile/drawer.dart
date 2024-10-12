import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/common/skills.dart';
import 'package:portfolio/data/data.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.aboutKey,
    required this.projectsKey,
    required this.experienceKey,
    required this.achievementsKey,
    required this.certificatesKey,
  });

  final GlobalKey aboutKey;
  final GlobalKey projectsKey;
  final GlobalKey experienceKey;
  final GlobalKey achievementsKey;
  final GlobalKey certificatesKey;

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Navigator.of(context).pop();
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            SizedBox(
              height: 64,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                ),
                child: Row(
                  children: [
                    // Row(
                    //   children: [
                    Text(
                      "Navigation",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        color: primaryColor,
                      ),
                    ),
                    const Spacer(),
                    // IconButton(
                    //   icon: const Icon(Icons.close),
                    //   onPressed: () => Navigator.of(context).pop(),
                    //   //   ),
                    //   // ],
                    // ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Icon(
                        Icons.close,
                        color: Colors.white.withOpacity(0.4),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: ListTile(
                title: Center(
                  child: Text(
                    'About',
                    style: GoogleFonts.montserrat(
                      fontSize: 24,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ),
                onTap: () => _scrollToSection(aboutKey),
              ),
            ),
            Center(
              child: ListTile(
                title: Center(
                  child: Text(
                    'Experience',
                    style: GoogleFonts.montserrat(
                      fontSize: 24,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ),
                onTap: () => _scrollToSection(experienceKey),
              ),
            ),
            Center(
              child: ListTile(
                title: Center(
                  child: Text(
                    'Projects',
                    style: GoogleFonts.montserrat(
                      fontSize: 24,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ),
                onTap: () => _scrollToSection(projectsKey),
              ),
            ),
            Center(
              child: ListTile(
                title: Center(
                  child: Text(
                    'Achievements',
                    style: GoogleFonts.montserrat(
                      fontSize: 24,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ),
                onTap: () => _scrollToSection(achievementsKey),
              ),
            ),
            Center(
              child: ListTile(
                title: Center(
                  child: Text(
                    'Certificates',
                    style: GoogleFonts.montserrat(
                      fontSize: 24,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ),
                onTap: () => _scrollToSection(certificatesKey),
              ),
            ),
            // const SizedBox(height: 28),
            // SizedBox(
            //   height: 64,
            //   child: DrawerHeader(
            //     child: Center(
            //       child: Text(
            //         "Contact",
            //         style: GoogleFonts.montserrat(
            //           fontWeight: FontWeight.bold,
            //           fontSize: 23,
            //           color: primaryColor,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     IconButton(
            //       icon: Icon(
            //         FontAwesomeIcons.solidEnvelope,
            //         color: Colors.white.withOpacity(0.8),
            //         size: 24,
            //       ),
            //       onPressed: () => launchUrlString(contact['Email']!),
            //     ),
            //     const SizedBox(width: 8),
            //     IconButton(
            //       icon: Icon(
            //         FontAwesomeIcons.linkedin,
            //         color: Colors.white.withOpacity(0.8),
            //         size: 24,
            //       ),
            //       onPressed: () => launchUrlString(contact['LinkedIn']!),
            //     ),
            //     const SizedBox(width: 8),
            //     IconButton(
            //       icon: Icon(
            //         FontAwesomeIcons.github,
            //         color: Colors.white.withOpacity(0.8),
            //         size: 24,
            //       ),
            //       onPressed: () => launchUrlString(contact['GitHub']!),
            //     ),
            //     const SizedBox(width: 8),
            //     IconButton(
            //       icon: Icon(
            //         FontAwesomeIcons.twitter,
            //         color: Colors.white.withOpacity(0.8),
            //         size: 24,
            //       ),
            //       onPressed: () => launchUrlString(contact['Twitter']!),
            //     ),
            //     const SizedBox(width: 8),
            //     IconButton(
            //       icon: Icon(
            //         FontAwesomeIcons.instagram,
            //         color: Colors.white.withOpacity(0.8),
            //         size: 24,
            //       ),
            //       onPressed: () => launchUrlString(contact['Instagram']!),
            //     ),
            //   ],
            // ),
            // const SizedBox(height: 28),
            // SizedBox(
            //   height: 64,
            //   child: DrawerHeader(
            //     child: Center(
            //       child: Text(
            //         "Education",
            //         style: GoogleFonts.montserrat(
            //           fontWeight: FontWeight.bold,
            //           fontSize: 23,
            //           color: primaryColor,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // Column(
            //   children: [
            //     Text(
            //       education['degree']!,
            //       style: GoogleFonts.montserrat(
            //         fontSize: 16,
            //         color: Colors.white.withOpacity(0.8),
            //       ),
            //     ),
            //     Text(
            //       education['university']!,
            //       style: GoogleFonts.montserrat(
            //         fontSize: 16,
            //         color: Colors.white.withOpacity(0.8),
            //       ),
            //     ),
            //     Text(
            //       education['duration']!,
            //       style: GoogleFonts.montserrat(
            //         fontSize: 16,
            //         color: Colors.white.withOpacity(0.8),
            //       ),
            //     ),
            //   ],
            // ),
            const SizedBox(height: 28),
            // SizedBox(
            //   height: 64,
            //   child: DrawerHeader(
            //     child: Center(
            //       child: Text(
            //         "Education",
            //         style: GoogleFonts.montserrat(
            //           fontWeight: FontWeight.bold,
            //           fontSize: 23,
            //           color: primaryColor,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            SkillsWidget(),
          ],
        ),
      ),
    );
  }
}
