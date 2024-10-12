import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/common/skills.dart';
import 'package:portfolio/data/data.dart';
import 'package:url_launcher/url_launcher_string.dart';

class About extends StatelessWidget {
  const About({super.key, required this.aboutKey});

  final GlobalKey aboutKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: aboutKey,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
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
                    width: 140,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 32),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Text(
                      "About Me",
                      style: GoogleFonts.montserrat(
                        fontSize: 32,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              FontAwesomeIcons.solidEnvelope,
                              color: Colors.white.withOpacity(0.8),
                              size: 24,
                            ),
                            onPressed: () => launchUrlString(contact['Email']!),
                          ),
                          const SizedBox(width: 8),
                          IconButton(
                            icon: Icon(
                              FontAwesomeIcons.linkedin,
                              color: Colors.white.withOpacity(0.8),
                              size: 24,
                            ),
                            onPressed: () =>
                                launchUrlString(contact['LinkedIn']!),
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              FontAwesomeIcons.github,
                              color: Colors.white.withOpacity(0.8),
                              size: 24,
                            ),
                            onPressed: () =>
                                launchUrlString(contact['GitHub']!),
                          ),
                          const SizedBox(width: 8),
                          IconButton(
                            icon: Icon(
                              FontAwesomeIcons.twitter,
                              color: Colors.white.withOpacity(0.8),
                              size: 24,
                            ),
                            onPressed: () =>
                                launchUrlString(contact['Twitter']!),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const IconButton(
                            icon: Icon(
                              FontAwesomeIcons.twitter,
                              color: Colors.transparent,
                              size: 24,
                            ),
                            onPressed: null,
                          ),
                          IconButton(
                            icon: Icon(
                              FontAwesomeIcons.instagram,
                              color: Colors.white.withOpacity(0.8),
                              size: 24,
                            ),
                            onPressed: () =>
                                launchUrlString(contact['Instagram']!),
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            aboutMe,
            style: GoogleFonts.montserrat(
              fontSize: 16,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
          // SkillsWidget(),
          // SizedBox(
          //   height: 84,
          //   child: CarouselSlider(
          //     options: CarouselOptions(
          //       height: 84,
          //       autoPlay: true,
          //       autoPlayInterval: const Duration(milliseconds: 1600),
          //       autoPlayAnimationDuration: const Duration(milliseconds: 1600),
          //       enlargeCenterPage: false,
          //       aspectRatio: 0.1,
          //       viewportFraction: 0.3,
          //       pauseAutoPlayOnTouch: false,
          //     ),
          //     items: skills.map((skill) {
          //       return Builder(
          //         builder: (BuildContext context) {
          //           return Padding(
          //             padding: const EdgeInsets.all(8),
          //             child: Chip(
          //               backgroundColor: Colors.transparent,
          //               avatar: Image.asset(
          //                 skill['image']!,
          //                 width: 34,
          //                 height: 34,
          //               ),
          //               // avatar: Icon(FontAwesomeIcons.code),
          //               label: Text(skill['name']!),
          //             ),
          //           );
          //         },
          //       );
          //     }).toList(),
          //   ),
          // ),
          const SizedBox(height: 22),
          OutlinedButton(
            onPressed: () => launchUrlString(resumeLink),
            child: Text(
              "Download Resume",
              style: GoogleFonts.montserrat(
                color: Colors.white.withOpacity(0.8),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
