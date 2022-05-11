import 'package:flutter/material.dart';
import 'package:html_character_entities/html_character_entities.dart';

import '../constants/box_shadow.dart';

class AnswerCard extends StatelessWidget {
  const AnswerCard({
    Key? key,
    required this.answer,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  final String answer;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 20.0,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 20.0,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: boxShadow,
          border: Border.all(
            color: isSelected ? Colors.yellow.shade700 : Colors.white,
            width: 4.0,
          ),
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                HtmlCharacterEntities.decode(answer),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
