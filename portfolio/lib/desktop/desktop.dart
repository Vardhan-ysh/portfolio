import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/desktop/scrollable.dart';
import 'package:portfolio/desktop/static.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});

  @override
  _DesktopViewState createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _achievementsKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _handlePointerSignal(PointerSignalEvent event) {
    // print("😒");
    if (event is PointerScrollEvent) {
      // print("😒a");
      final newOffset = _scrollController.offset + event.scrollDelta.dy;
      if (newOffset < 0) {
        _scrollController.animateTo(0,
            duration: const Duration(milliseconds: 150),
            curve: Curves.easeInOut);
      } else if (newOffset > _scrollController.position.maxScrollExtent) {
        _scrollController.animateTo(_scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 150),
            curve: Curves.easeInOut);
      } else {
        _scrollController.animateTo(newOffset,
            duration: const Duration(milliseconds: 150),
            curve: Curves.easeInOut);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Listener(
        onPointerSignal: _handlePointerSignal,
        child: Stack(
          children: [
            ScrollConfiguration(
              behavior: const ScrollBehavior().copyWith(
                scrollbars: false,
                physics: const BouncingScrollPhysics(),
                // platform: TargetPlatform.windows,
              ),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                controller: _scrollController,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      // height: MediaQuery.of(context).size.height,
                      // constraints: const BoxConstraints(
                      //   minWidth: 800,
                      // ),
                      // color: Colors.green,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.50,
                        ),
                        child: ScrollableSection(
                          aboutKey: _aboutKey,
                          projectsKey: _projectsKey,
                          experienceKey: _experienceKey,
                          achievementsKey: _achievementsKey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              child: StaticSection(),
            ),
            Positioned(
              top: 28,
              right: 68,
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  // backgroundBlendMode: BlendMode.xor,
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.2),
                    width: 2,
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 8),
                    TextButton(
                      onPressed: () {
                        _scrollToSection(_aboutKey);
                      },
                      child: Text(
                        "About",
                        style: GoogleFonts.montserrat(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 2,
                      height: 24,
                      color: Colors.white.withOpacity(0.2),
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      onPressed: () {
                        _scrollToSection(_experienceKey);
                      },
                      child: Text(
                        "Experience",
                        style: GoogleFonts.montserrat(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 2,
                      height: 24,
                      color: Colors.white.withOpacity(0.2),
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      onPressed: () {
                        _scrollToSection(_projectsKey);
                      },
                      child: Text(
                        "Projects",
                        style: GoogleFonts.montserrat(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 2,
                      height: 24,
                      color: Colors.white.withOpacity(0.2),
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      onPressed: () {
                        _scrollToSection(_achievementsKey);
                      },
                      child: Text(
                        "Achievements",
                        style: GoogleFonts.montserrat(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 2,
                      height: 24,
                      color: Colors.white.withOpacity(0.2),
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      onPressed: () {
                        _scrollToSection(_achievementsKey);
                      },
                      child: Text(
                        "Certificates",
                        style: GoogleFonts.montserrat(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
