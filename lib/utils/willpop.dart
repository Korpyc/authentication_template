import 'package:flutter/material.dart';

// this is mixin for overriding android back button behaviour

mixin AppWillPopMixin {
  DateTime preBackPress = DateTime.now();
  Future<bool> onWillPop(BuildContext context) async {
    if (Navigator.of(context).canPop()) {
      Navigator.pop(context);
      return false;
    } else {
      final timegap = DateTime.now().difference(preBackPress);
      final cantExit = timegap >= const Duration(seconds: 2);
      preBackPress = DateTime.now();
      if (cantExit) {
        //show snackbar
        final snack = SnackBar(
          backgroundColor: Colors.transparent,
          content: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.grey.withOpacity(0.8),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Press Back button again to Exit',
                ),
              ),
            ),
          ),
          duration: const Duration(seconds: 2),
          padding: const EdgeInsets.all(16),
          behavior: SnackBarBehavior.floating,
        );
        ScaffoldMessenger.of(context).showSnackBar(snack);
        return false;
      } else {
        return true;
      }
    }
  }
}
