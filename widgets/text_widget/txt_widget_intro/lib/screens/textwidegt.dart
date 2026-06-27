import 'package:flutter/material.dart'; // Imports Flutter Material Design widgets

// A stateless widget because the UI does not change
class TextScreen extends StatelessWidget {
  // Constructor
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Builds the UI
    return Scaffold(
      // Top app bar
      appBar: AppBar(
        backgroundColor: Colors.blue, // App bar background color
        title: Text('Text Screen'), // App bar title
      ),

      // Main content of the screen
      body: Text(
        'Hello world my name is Syed Manan Ali i am learning flutter', // Text to display

        maxLines: 2, // Shows only 2 lines

        textDirection: TextDirection.rtl, // Displays text from right to left

        textAlign: TextAlign.left, // Aligns text to the left

        style: TextStyle(
          fontSize: 40, // Text size

          fontWeight: FontWeight.bold, // Makes text bold

          color: Colors.deepOrange, // Text color

          letterSpacing: 2, // Space between letters

          height: 2, // Line height (spacing between lines)

          overflow: TextOverflow.ellipsis, // Shows "..." if text overflows

          decoration: TextDecoration.underline, // Underlines the text

          decorationColor: Colors.lime, // Underline color

          decorationThickness: 3, // Underline thickness

          fontFamily: 'Font2', // Uses custom font named Font2

          wordSpacing: 10, // Space between words

          shadows: [
            Shadow(
              color: Color.fromARGB(255, 0, 4, 4), // Shadow color
              blurRadius: 3, // Shadow blur
              offset: Offset(3, 3), // Shadow position (x, y)
            ),
          ],

          backgroundColor: Colors.purpleAccent, // Background behind text
        ),
      ),
    );
  }
}