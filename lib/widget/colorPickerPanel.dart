import 'package:flutter/material.dart';

class ColorPicker extends StatefulWidget {
  const ColorPicker({
    super.key,
  });

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  final List<Color> colorsLine1 = [
    Colors.red,
    Colors.black,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
  ];

  final List<Color> colorsLine2 = [
    Colors.cyan,
    Colors.pink,
    Colors.amber,
    Colors.teal,
    Colors.indigo,
    Colors.brown,
  ];
  Color selectedColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        child: colorPicker(),
      ),
    );
  }

  Card colorPicker() {
    return Card(
      color: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            lineOne(),
            const SizedBox(height: 16.0),
            lineTwo(),
          ],
        ),
      ),
    );
  }

  Row lineTwo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: colorsLine2
          .map((color) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedColor = color;
                  });
                },
                child: CircleAvatar(
                  backgroundColor: color,
                  radius: 20,
                  child:
                      selectedColor == color ? const Icon(Icons.check) : null,
                ),
              ))
          .toList(),
    );
  }

  Row lineOne() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: colorsLine1
          .map((color) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedColor = color;
                  });
                },
                child: CircleAvatar(
                  backgroundColor: color,
                  radius: 20,
                  child:
                      selectedColor == color ? const Icon(Icons.check) : null,
                ),
              ))
          .toList(),
    );
  }
}
