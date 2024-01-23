//   //
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
//  PARTS
//  PROVIDERS

///

class UiUpdatesDemo extends StatefulWidget {
  const UiUpdatesDemo({super.key});

  @override
  StatefulElement createElement() {
    debugPrint('UIUpdatesDemo CREATEELEMENT called');
    return super.createElement();
  }

  @override
  _UiUpdatesDemoState createState() => _UiUpdatesDemoState();
}

class _UiUpdatesDemoState extends State<UiUpdatesDemo> {
  bool _isUnderstood = false;

  @override
  Widget build(BuildContext context) {
    debugPrint('UIUpdatesDemo BUILD called');
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'Every Flutter developer should have a basic understanding of Flutter\'s internals!',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Do you understand how Flutter updates UIs?',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    setState(() {
                      _isUnderstood = false;
                    });
                  },
                  child: const Text('No'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _isUnderstood = true;
                    });
                  },
                  child: const Text('Yes'),
                ),
              ],
            ),
            if (_isUnderstood) const Text('Awesome!') else const Text('Oops!'),
          ],
        ),
      ),
    );
  }
}
