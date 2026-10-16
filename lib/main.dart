import 'package:flutter/material.dart';

void main() {
  runApp(const SecretLetterApp());
}

class SecretLetterApp extends StatelessWidget {
  const SecretLetterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'A Letter for Iza',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Georgia',
        scaffoldBackgroundColor: const Color(0xFFFFF8F3),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFB76E79),
        ),
      ),
      home: const SecretLetterPage(),
    );
  }
}

class SecretLetterPage extends StatefulWidget {
  const SecretLetterPage({super.key});

  @override
  State<SecretLetterPage> createState() =>
      _SecretLetterPageState();
}

class _SecretLetterPageState extends State<SecretLetterPage> {
  bool isOpened = false;

  void openLetter() {
    setState(() {
      isOpened = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFFF8F3),
              Color(0xFFF8E8E8),
              Color(0xFFFFF4EB),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 700),
            switchInCurve: Curves.easeOutCubic,
            child: isOpened
                ? const LetterContent(key: ValueKey('letter'))
                : EnvelopeContent(
                    key: const ValueKey('envelope'),
                    onOpen: openLetter,
                  ),
          ),
        ),
      ),
    );
  }
}

// ======================================================
// ENVELOPE SCREEN
// ======================================================

class EnvelopeContent extends StatelessWidget {
  final VoidCallback onOpen;

  const EnvelopeContent({
    super.key,
    required this.onOpen,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.favorite,
              color: Color(0xFFB76E79),
              size: 32,
            ),

            const SizedBox(height: 18),

     import 'package:flutter/material.dart';

void main() {
  runApp(const SecretLetterApp());
}

class SecretLetterApp extends StatelessWidget {
  const SecretLetterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'A Letter for Iza',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Georgia',
        scaffoldBackgroundColor: const Color(0xFFFFF8F3),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFB76E79),
        ),
      ),
      home: const SecretLetterPage(),
    );
  }
}

class SecretLetterPage extends StatefulWidget {
  const SecretLetterPage({super.key});

  @override
  State<SecretLetterPage> createState() =>
      _SecretLetterPageState();
}

class _SecretLetterPageState extends State<SecretLetterPage> {
  bool isOpened = false;

  void openLetter() {
    setState(() {
      isOpened = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFFF8F3),
              Color(0xFFF8E8E8),
              Color(0xFFFFF4EB),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 700),
            switchInCurve: Curves.easeOutCubic,
            child: isOpened
                ? const LetterContent(key: ValueKey('letter'))
                : EnvelopeContent(
                    key: const ValueKey('envelope'),
                    onOpen: openLetter,
                  ),
          ),
        ),
      ),
    );
  }
}

// ======================================================
// ENVELOPE SCREEN
// ======================================================

class EnvelopeContent extends StatelessWidget {
  final VoidCallback onOpen;

  const EnvelopeContent({
    super.key,
    required this.onOpen,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.favorite,
              color: Color(0xFFB76E79),
              size: 32,
            ),

            const SizedBox(height: 18),

            const Text(
              'A LITTLE SOMETHING',       const Text(
              'A LITTLE SOMETHING',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                letterSpacing: 4,
                color: Color(0xFF9B7474),
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              'For Iza Solis',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w400,
                color: Color(0xFF714B50),
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              'There is something I want to tell you.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                color: Color(0xFF8D7774),
              ),
            ),

            const SizedBox(height: 40),

            // Envelope illustration
            Container(
              width: 270,
              height: 190,
              decoration: BoxDecoration(
                color: const Color(0xFFF0D5D2),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFB76E79)
                        .withOpacity(0.18),
                    blurRadius: 25,
                    offset: const Offset(0, 12),
                  ),
                ],
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const Positioned(
                    top: 20,
                    child: Text(
                      'TO:',
                      style: TextStyle(
                        fontSize: 10,
                        letterSpacing: 3,
                        color: Color(0xFF98716E),
                      ),
                    ),
                  ),

                  const Positioned(
                    top: 43,
                    child: Text(
                      'IZA SOLIS',
                      style: TextStyle(
                        fontSize: 23,
                        letterSpacing: 2,
                        color: Color(0xFF714B50),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  const Positioned(
                    top: 78,
                    child: Icon(
                      Icons.favorite,
                      color: Color(0xFFB76E79),
                      size: 25,
                    ),
                  ),

                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: ClipPath(
                      clipper: EnvelopeFlapClipper(),
                      child: Container(
                        height: 100,
                        color: const Color(0xFFE8C0C0),
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: 12,
                    child: Container(
                      width: 38,
                      height: 38,
                      decoration: const BoxDecoration(
                        color: Color(0xFFB76E79),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 35),

            SizedBox(
              width: 250,
              height: 52,
              child: ElevatedButton(
                onPressed: onOpen,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFB76E79),
                  foregroundColor: Colors.white,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.mail_outline, size: 20),
                    SizedBox(width: 10),
                    Text(
                      'Open Your Letter',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 18),

            const Text(
              'A little message, just for you.',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 12,
                fontStyle: FontStyle.italic,
                color: Color(0xFF9B8580),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ======================================================
// ENVELOPE FLAP DESIGN
// ======================================================

class EnvelopeFlapClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0, 0);
    path.lineTo(size.width / 2, size.height * 0.68);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(EnvelopeFlapClipper oldClipper) {
    return false;
  }
}

// ======================================================
// LETTER SCREEN
// ======================================================

class LetterContent extends StatelessWidget {
  const LetterContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 25,
        ),
        child: Container(
          width: 500,
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: const Color(0xFFFFFDF9),
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: const Color(0xFFEBD8D0),
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF8E5D5D)
                    .withOpacity(0.10),
                blurRadius: 25,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Icon(
                  Icons.favorite_border,
                  size: 30,
                  color: Color(0xFFB76E79),
                ),
              ),

              const SizedBox(height: 18),

              const Center(
                child: Text(
                  'A LETTER FOR YOU',
                  style: TextStyle(
                    fontSize: 11,
                    letterSpacing: 3,
                    color: Color(0xFFB08080),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              const SizedBox(height: 8),

              const Center(
                child: Text(
                  'Iza Solis',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF714B50),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              const SizedBox(height: 22),

              const Divider(
                color: Color(0xFFEAD8D0),
              ),

              const SizedBox(height: 20),

              const Text(
                'Dear Iza,',
                style: TextStyle(
                  fontSize: 19,
                  color: Color(0xFF714B50),
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 18),

              const Text(
                "There's something I've been wanting "
                "to tell you for a while now, and I think "
                "it's time to be honest about it.",
                style: letterStyle,
              ),

              const SizedBox(height: 18),

              const Text(
                "A few months ago, I noticed you, and "
                "since then, you've caught my attention "
                "in a way I didn't expect. I may not know "
                "you that well, and we may not talk much, "
                "but I can't deny that I've started to "
                "develop feelings for you.",
                style: letterStyle,
              ),

              const SizedBox(height: 18),

              const Text(
                "I'm not writing this to make things "
                "awkward or to put you in an uncomfortable "
                "position. I simply want to be honest about "
                "what I feel instead of keeping it to myself.",
                style: letterStyle,
              ),

              const SizedBox(height: 18),

              const Text(
                "I'd genuinely love the opportunity to "
                "get to know you better, even if it means "
                "starting with a simple conversation.",
                style: letterStyle,
              ),

              const SizedBox(height: 22),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF1EF),
                  borderRadius: BorderRadius.circular(12),
                  border: const Border(
                    left: BorderSide(
                      color: Color(0xFFB76E79),
                      width: 3,
                    ),
                  ),
                ),
                child: const Text(
                  "Whatever your feelings may be, "
                  "I'll respect them. I just wanted you "
                  "to know that someone here has quietly "
                  "admired you and finally found the "
                  "courage to tell you.",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    height: 1.8,
                    color: Color(0xFF795D5B),
                  ),
                ),
              ),

              const SizedBox(height: 28),

              const Text(
                'Sincerely,',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF8D7774),
                  fontStyle: FontStyle.italic,
                ),
              ),

              const SizedBox(height: 5),

              const Text(
                'Kurt',
                style: TextStyle(
                  fontSize: 28,
                  color: Color(0xFFB76E79),
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 5),

              const Text(
                '♡',
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFFB76E79),
                ),
              ),

              const SizedBox(height: 25),

              const Divider(
                color: Color(0xFFEAD8D0),
              ),

              const SizedBox(height: 10),

              const Center(
                child: Text(
                  'Thank you for taking the time to read this.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 12,
                    color: Color(0xFF9B8580),
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),

              const SizedBox(height: 15),

              Center(
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => const SecretLetterPage(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.replay,
                    size: 17,
                  ),
                  label: const Text('Close Letter'),
                  style: TextButton.styleFrom(
                    foregroundColor: const Co                "get to know you better, even if it means "
                "starting with a simple conversation.",
                style: letterStyle,
              ),

              const SizedBox(height: 22),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF1EF),
                  borderRadius: BorderRadius.circular(12),
                  border: const Border(
                    left: BorderSide(
                      color: Color(0xFFB76E79),
                      width: 3,
                    ),
                  ),
                ),
                child: const Text(
                  "Whatever your feelings may be, "
                  "I'll respect them. I just wanted you "
                  "to know that someone here has quietly "
                  "admired you and finally found the "
                  "courage to tell you.",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    height: 1.8,
                    color: Color(0xFF795D5B),
                  ),
                ),
              ),

              const SizedBox(height: 28),

              const Text(
                'Sincerely,',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF8D7774),
                  fontStyle: FontStyle.italic,
                ),
              ),

              const SizedBox(height: 5),

              const Text(
                'Kurt',
                style: TextStyle(
                  fontSize: 28,
                  color: Color(0xFFB76E79),
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 5),

              const Text(
                '♡',
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFFB76E79),
                ),
              ),

              const SizedBox(height: 25),

              const Divider(
                color: Color(0xFFEAD8D0),
              ),

              const SizedBox(height: 10),

              const Center(
                child: Text(
                  'Thank you for taking the time to read this.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 12,
                    color: Color(0xFF9B8580),
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),

              const SizedBox(height: 15),

              Center(
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => const SecretLetterPage(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.replay,
                    size: 17,
                  ),
                  label: const Text('Close Letter'),
                  style: TextButton.styleFrom(
                    foregroundColor: const Color(0xFFB76E79),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const TextStyle letterStyle = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 15,
  height: 1.85,
  color: Color(0xFF5F514E),
);lor(0xFFB76E79),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const TextStyle letterStyle = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 15,
  height: 1.85,
  color: Color(0xFF5F514E),
);
