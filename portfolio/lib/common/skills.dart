import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/data/data.dart';

class SkillsWidget extends StatefulWidget {
  const SkillsWidget({super.key});

  @override
  _SkillsWidgetState createState() => _SkillsWidgetState();
}

class _SkillsWidgetState extends State<SkillsWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      animationDuration: const Duration(milliseconds: 400),
      elevation: 1,
      expandedHeaderPadding: EdgeInsets.zero,
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      children: [
        ExpansionPanel(
          backgroundColor: Colors.transparent,
          // splashColor: Colors.transparent,
          // highlightColor: Colors.transparent,

          headerBuilder: (context, isExpanded) {
            return ListTile(
              title: Text(
                "Skills",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: primaryColor,
                ),
              ),
            );
          },
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.2,
              ),
              itemCount: skills.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        skills[index]['image']!,
                        height: 50,
                        width: 50,
                      ),
                      const SizedBox(height: 8),
                      Text(skills[index]['name']!),
                    ],
                  ),
                );
              },
            ),
          ),
          isExpanded: _isExpanded,
          canTapOnHeader: true,
        ),
      ],
    );
  }
}
