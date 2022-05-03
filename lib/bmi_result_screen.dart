import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;

  const BMIResultScreen({
    Key? key,
    required this.result,
    required this.isMale,
    required this.age,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // HELLO WORLD
        backgroundColor: Colors.teal,
        title: const Text('BMI Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender: ${isMale ? 'Male' : 'Female'}',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
            Text(
              'Result: $result',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
            Text(
              'Age: $age',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
