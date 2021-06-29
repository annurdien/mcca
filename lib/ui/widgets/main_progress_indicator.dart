import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MainProgressIndicator extends StatelessWidget {
  const MainProgressIndicator({Key? key, this.width}) : super(key: key);

  final width;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      child: Container(
        height: 80,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xFF409D78),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/membaca.png',
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(3, 15, 0, 5),
                  child: Row(
                    children: [
                      Text(
                        'Menulis Cepat',
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text('40 %')
                    ],
                  ),
                ),
                LinearPercentIndicator(
                  width: width * 0.69,
                  padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
                  lineHeight: 15,
                  backgroundColor: Color(0xFFE5E5E5),
                  progressColor: Color(0xFF107F53),
                  percent: 0.4,
                ),
              ],
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
