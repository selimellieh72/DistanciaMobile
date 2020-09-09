import 'package:flutter/material.dart';

class HomeworkScreen extends StatelessWidget {
  static const routeName = '/homework-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Homeworks',
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33),
                color: Color.fromRGBO(112, 112, 112, 1),
              ),
              height: 80,
              child: Stack(
                children: [
                  Row(
                    children: [
                      Text(
                        'Physique',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'instructions',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'date',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              ('Time'),
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
