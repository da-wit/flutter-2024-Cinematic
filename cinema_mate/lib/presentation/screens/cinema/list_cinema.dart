import 'package:cinema_mate/presentation/screens/cinema/cinema_details.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_color.dart';
import '../../widgets/card.dart'; // Import the Cinema_Detail page

var newColor = AppColor();

// var navBottom=CinemaBottomNavBar(selectedIndex: 3,
// onItemSelected: (index){},);
var cards =
    const AppCard(title: 'Movies Name', imgpath: 'assets/images/img.jpg');

class CinemaList extends StatelessWidget {
  const CinemaList({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: newColor.bg,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          children: [
            InkWell(
              onTap: () {
                return _dialogBuilder(
                    context, 'Movie', 'assets/images/img.jpg');
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: cards,
              ),
            ),
            InkWell(
              onTap: () {
                return _dialogBuilder(
                    context, 'Movie', 'assets/images/img.jpg');
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: cards,
              ),
            ),
            InkWell(
              onTap: () {
                return _dialogBuilder(
                    context, 'Movie', 'assets/images/img.jpg');
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: cards,
              ),
            ),
            InkWell(
              onTap: () {
                return _dialogBuilder(
                    context, 'Movie', 'assets/images/img.jpg');
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: cards,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _dialogBuilder(BuildContext context, String title, String imagePath) {
  showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: FractionallySizedBox(
          widthFactor: 1.1,
          child: SingleChildScrollView(
            child: CinemaDetail(title: title, imagePath: imagePath),
          ),
        ),
      );
    },
  );
}
