import 'package:flutter/material.dart';

class Skip extends StatelessWidget {
  final int currentPage;
  final int numPages;

  const Skip(this.currentPage, this.numPages, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Action to skip pages (e.g., navigate to the last page)
        Navigator.pushReplacementNamed(context, '/lastPage'); // Adjust the route as needed
      },
      child: Text('Skip'),
    );
  }
}
