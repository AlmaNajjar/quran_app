import 'package:flutter/material.dart';

class RahmaAnimatedText extends StatefulWidget {
  const RahmaAnimatedText({super.key});

  @override
  State<RahmaAnimatedText> createState() => _RahmaAnimatedTextState();
}

class _RahmaAnimatedTextState extends State<RahmaAnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scale;
  late Animation<double> _opacity;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);

    _scale = Tween<double>(
      begin: 0.8,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));

    _opacity = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _colorAnimation = ColorTween(
      begin: Colors.yellow,
      end: Colors.white,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.scale(
          scale: _scale.value,
          child: Opacity(
            opacity: _opacity.value,
            child: Text(
              "Rahma",
              style: TextStyle(
                fontSize: 72,
                fontWeight: FontWeight.bold,
                color: _colorAnimation.value,
                shadows: [
                  Shadow(
                    color: _colorAnimation.value!.withOpacity(0.8),
                    blurRadius: 40,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
