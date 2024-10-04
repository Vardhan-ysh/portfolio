import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/data/data.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ScrollableSection extends StatelessWidget {
  const ScrollableSection({
    required this.aboutKey,
    required this.projectsKey,
    required this.experienceKey,
    required this.achievementsKey,
    super.key,
  });

  final GlobalKey aboutKey;
  final GlobalKey projectsKey;
  final GlobalKey experienceKey;
  final GlobalKey achievementsKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 108, left: 48, right: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            key: aboutKey,
            "About Me",
            style: GoogleFonts.montserrat(
              fontSize: 32,
              color: primaryColor,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            aboutMe,
            style: GoogleFonts.montserrat(
              fontSize: 16,
              color: Colors.white.withOpacity(0.6),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            // width: 48,
            height: 2,
            color: Colors.white.withOpacity(0.2),
          ),
          const SizedBox(height: 36),
          Text(
            key: experienceKey,
            "Experience",
            style: GoogleFonts.montserrat(
              fontSize: 32,
              color: primaryColor,
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
                              launchUrlString(experience['company_link']!);
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
          // const SizedBox(height: 12),
          Container(
            // width: 48,
            height: 2,
            color: Colors.white.withOpacity(0.2),
          ),
          const SizedBox(height: 36),
          Text(
            key: projectsKey,
            "Projects",
            style: GoogleFonts.montserrat(
              fontSize: 32,
              color: primaryColor,
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
                      if (project['link'] != null)
                        Container(
                          margin: const EdgeInsets.only(top: 3),
                          width: 2,
                          height: 20,
                          color: Colors.white.withOpacity(0.2),
                        ),
                      if (project['link'] != null)
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
          // const SizedBox(height: 12),
          Container(
            // width: 48,
            height: 2,
            color: Colors.white.withOpacity(0.2),
          ),
          const SizedBox(height: 36),
          Text(
            key: achievementsKey,
            "Achievements & Certificates",
            style: GoogleFonts.montserrat(
              fontSize: 32,
              color: primaryColor,
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
                      Text(
                        achievement['title']!,
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          color: Colors.white.withOpacity(0.8),
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
    );
  }
}
