import 'package:flutter/material.dart';

class KonsultasiCard extends StatelessWidget {
  const KonsultasiCard({Key? key, required this.width}) : super(key: key);

  final width;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      child: Container(
        height: 100,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
              height: 85,
              alignment: Alignment.topCenter,
              width: 100,
              child: Column(
                children: [
                  Icon(
                    Icons.account_circle_rounded,
                    color: Color(0xFF17B978),
                    size: 42,
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                      child: Text(
                        'Jadwal',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    color: Color(0xFF42b36e),
                  ),
                ],
              ),
            ),
            Container(
              height: 85,
              padding: EdgeInsets.fromLTRB(10, 5, 10, 2),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr. Ryan',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      'Doctor Ahli',
                      style: TextStyle(
                        color: Color(0xFFC4C4C4),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Minggu Jam 09.00',
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(left: 20),
              height: 85,
              child: Row(
                children: [
                  Text(
                    'Ngobrol',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF107F53),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Color(0xFF107F53),
                    ),
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
