import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/data/data.dart';
import 'package:url_launcher/url_launcher_string.dart';

class StaticSection extends StatelessWidget {
  const StaticSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 400,
        minHeight: 600,
      ),
      child: SizedBox(
        // color: Colors.blue,
        width: MediaQuery.of(context).size.width * 0.40,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 124),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (MediaQuery.of(context).size.width > 1000)
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 8),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 28),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.6),
                            width: 2,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            myImage,
                            width: 160,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  )
                else
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 8),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 28),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.6),
                            width: 2,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            myImage,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                Text(
                  name,
                  style: GoogleFonts.orbitron(
                    // color: primaryColor,
                    fontSize: 36,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 48),
                child: Text(
                  designation,
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                if (MediaQuery.of(context).size.width > 1200)
                  Padding(
                    padding: const EdgeInsets.only(left: 60, right: 16),
                    child: Text(
                      "Skills",
                      style: GoogleFonts.montserrat(
                        fontSize: 32,
                        color: primaryColor,
                      ),
                    ),
                  ),
                Container(
                  width: 2,
                  height: 84,
                  color: Colors.white.withOpacity(0.2),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  width: 400,
                  height: 84,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 84,
                      autoPlay: true,
                      autoPlayInterval: const Duration(milliseconds: 1600),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 1600),
                      enlargeCenterPage: false,
                      aspectRatio: 0.1,
                      viewportFraction: 0.3,
                      pauseAutoPlayOnTouch: false,
                    ),
                    items: skills.map((skill) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Padding(
                            padding: const EdgeInsets.all(8),
                            child: Chip(
                              backgroundColor: Colors.transparent,
                              // shadowColor: Colors.white.withOpacity(0.4),
                              // elevation: 4,
                              avatar: Image.asset(
                                skill['image']!,
                                width: 34,
                                height: 34,
                              ),
                              label: Text(skill['name']!),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                if (MediaQuery.of(context).size.width > 1200)
                  Padding(
                    padding: const EdgeInsets.only(left: 60, right: 16),
                    child: Text(
                      "Connect",
                      style: GoogleFonts.montserrat(
                        fontSize: 32,
                        color: primaryColor,
                      ),
                    ),
                  ),
                Container(
                  width: 2,
                  height: 84,
                  color: Colors.white.withOpacity(0.2),
                ),
                const SizedBox(width: 16),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.solidEnvelope,
                    color: Colors.white.withOpacity(0.8),
                    size: 24,
                  ),
                  onPressed: () => launchUrlString(contact['Email']!),
                ),
                const SizedBox(width: 16),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.white.withOpacity(0.8),
                    size: 24,
                  ),
                  onPressed: () => launchUrlString(contact['LinkedIn']!),
                ),
                const SizedBox(width: 16),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.github,
                    color: Colors.white.withOpacity(0.8),
                    size: 24,
                  ),
                  onPressed: () => launchUrlString(contact['GitHub']!),
                ),
                const SizedBox(width: 16),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.twitter,
                    color: Colors.white.withOpacity(0.8),
                    size: 24,
                  ),
                  onPressed: () => launchUrlString(contact['Twitter']!),
                ),
                const SizedBox(width: 16),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.white.withOpacity(0.8),
                    size: 24,
                  ),
                  onPressed: () => launchUrlString(contact['Instagram']!),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                if (MediaQuery.of(context).size.width > 1200)
                  Padding(
                    padding: const EdgeInsets.only(left: 60, right: 16),
                    child: Text(
                      "Education",
                      style: GoogleFonts.montserrat(
                        fontSize: 32,
                        color: primaryColor,
                      ),
                    ),
                  ),
                Container(
                  width: 2,
                  height: 84,
                  color: Colors.white.withOpacity(0.2),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
            const SizedBox(height: 36),
            SizedBox(
              height: 32,
              child: ElevatedButton(
                onPressed: () => launchUrlString(resumeLink),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                    side: BorderSide(
                      color: Colors.white.withOpacity(0.8),
                      width: 1,
                    ),
                  ),
                ),
                child: Text(
                  "Resume",
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
