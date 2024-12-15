import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:async';

class BattleScreen extends StatefulWidget {
  const BattleScreen({super.key});

  @override
  State<BattleScreen> createState() => _BattleScreenState();
}

class _BattleScreenState extends State<BattleScreen> with TickerProviderStateMixin {
  late AnimationController _timerController;
  late AnimationController _progressController;
  int _currentRound = 1;
  int _score = 0;
  String _currentQuestion = '';
  List<String> _options = [];
  bool _isAnswered = false;
  Timer? _gameTimer;
  
  @override
  void initState() {
    super.initState();
    _timerController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 15),
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _handleTimeout();
        }
      });

    _progressController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _startNewRound();
  }

  void _startNewRound() {
    setState(() {
      _currentQuestion = 'What is the correct translation of "Hello" in Spanish?';
      _options = ['Hola', 'Bonjour', 'Ciao', 'Hallo'];
      _isAnswered = false;
    });
    _timerController.reset();
    _timerController.forward();
  }

  void _handleTimeout() {
    if (!_isAnswered) {
      _showAnswer(false);
    }
  }

  void _handleAnswer(String answer) {
    if (_isAnswered) return;
    
    bool isCorrect = answer == 'Hola';
    _showAnswer(isCorrect);
  }

  void _showAnswer(bool isCorrect) {
    setState(() {
      _isAnswered = true;
      if (isCorrect) _score += 100;
    });

    _timerController.stop();
    
    Future.delayed(const Duration(seconds: 2), () {
      if (_currentRound < 5) {
        setState(() => _currentRound++);
        _startNewRound();
      } else {
        _showGameComplete();
      }
    });
  }

  void _showGameComplete() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Battle Complete!'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Final Score: $_score'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.go('/home'),
              child: const Text('Return to Home'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.secondary,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Top Bar
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => context.pop(),
                      icon: const Icon(Icons.close, color: Colors.white),
                    ),
                    Text(
                      'Round $_currentRound/5',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    Text(
                      'Score: $_score',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ],
                ),
              ),

              // Timer
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: AnimatedBuilder(
                  animation: _timerController,
                  builder: (context, child) {
                    return LinearProgressIndicator(
                      value: 1 - _timerController.value,
                      backgroundColor: Colors.white.withOpacity(0.3),
                      valueColor: AlwaysStoppedAnimation<Color>(
                        _timerController.value < 0.3 ? Colors.red : Colors.white,
                      ),
                    );
                  },
                ),
              ),

              // Question Area
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              _currentQuestion,
                              style: Theme.of(context).textTheme.headlineSmall,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 32),
                            ...List.generate(
                              _options.length,
                              (index) => Padding(
                                padding: const EdgeInsets.only(bottom: 16.0),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: _isAnswered
                                        ? null
                                        : () => _handleAnswer(_options[index]),
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.all(16),
                                    ),
                                    child: Text(_options[index]),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timerController.dispose();
    _progressController.dispose();
    _gameTimer?.cancel();
    super.dispose();
  }
}
