import 'package:flutter/material.dart';

class QuizHarianBar extends StatelessWidget {
  const QuizHarianBar({Key? key, required this.width}) : super(key: key);

  final width;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      child: Container(
        height: 170,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              width: width,
              padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu_book_rounded,
                    color: Color(0xFF409D78),
                    size: 50,
                  ),
                  Icon(
                    Icons.grain_outlined,
                    color: Color(0xFF409D78),
                    size: 50,
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Quiz Harian',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF06cc7c)),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: Text(
                        'Yuk Belajar',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    color: Color(0xFF42b36e),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      shadowColor: Colors.black,
      elevation: 20,
      borderOnForeground: false,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    );
  }
}
