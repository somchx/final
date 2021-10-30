import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'game.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  Game? _game;
  final TextEditingController _controller = TextEditingController();
  String? _guessNumber;
  String? _feedback;
  bool _ansCheck = false;
  List<dynamic> guessList = [];

  @override
  void initState() {
    super.initState();
    _game = Game();
  }

  _handleGame() {
    setState(() {
      _game = Game();
      _guessNumber = null;
      _feedback = '';
      _ansCheck = false;
      guessList.clear();
    });
  }

  _endGameControl() {
    setState(() {
      _ansCheck = !_ansCheck;
      int total = _game!.totalGuesses;
      _showMaterialDialog('GOOD JOB!',
          'The answer is $_guessNumber\nYou have made $total guesses\n$guessList');
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GUESS THE NUMBER'),
      ),
      body: Container(
        color: Colors.yellow.shade100,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildHeader(),
                _buildMainContent(),
                _buildInputPanel(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Image.asset(
          "assets/images/logo_number.png",
          width: 240.0,
        ),
        Text(
          'Guess The Number',
          style: GoogleFonts.kanit(fontSize: 22.0, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _buildMainContent() {
    return _guessNumber == null
        ? Column(
            children: [
              Text(
                "I'm thinking of a number between 1 and 100.\nCan you guess it?",
                style: GoogleFonts.kanit(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
            ],
          )
        : Column(
            children: [
              Text(
                _guessNumber!,
                style: GoogleFonts.kanit(fontSize: 60.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (_ansCheck)
                    Icon(Icons.check, size: 50.0, color: Colors.green),
                  if (!_ansCheck)
                    Icon(Icons.clear, size: 50.0, color: Colors.red),
                  Text(
                    _feedback!,
                    style: GoogleFonts.kanit(fontSize: 40.0),
                  ),
                ],
              ),
              if (_ansCheck)
                TextButton(onPressed: _handleGame, child: Text('NEW GAME')),
            ],
          );
  }

  Widget _buildInputPanel() {
    return Card(
      color: Colors.blue,
      elevation: 10.0,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Flexible(
                child: TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              style: const TextStyle(
                color: Colors.yellow,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              cursorColor: Colors.yellow,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10.0),
                isDense: true,
                // กำหนดลักษณะเส้น border ของ TextField ในสถานะปกติ
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
                // กำหนดลักษณะเส้น border ของ TextField เมื่อได้รับโฟกัส
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                hintText: 'Enter the number here',
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 16.0,
                ),
              ),
            )),
            TextButton(
              onPressed: () {
                setState(() {
                  _guessNumber = _controller.text;
                  int? guess = int.tryParse(_guessNumber!);
                  guessList.add(guess);
                  if (guess != null) {
                    int result = _game!.doGuess(guess);
                    if (result == 0) {
                      _feedback = 'CORRECT!';
                      _endGameControl();
                    } else if (result == 1) {
                      _feedback = 'TOO HIGH!';
                    } else {
                      _feedback = 'TOO LOW!';
                    }
                  }
                  _controller.clear();
                });
              },
              child: Text(
                'GUESS',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showMaterialDialog(String title, String msg) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(msg),
          actions: [
            // ปุ่ม OK ใน dialog
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                // ปิด dialog
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
