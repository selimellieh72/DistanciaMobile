import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:edulb/providers/user_data.dart';
import 'package:edulb/widgets/others/drawer.dart';

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
        drawer: AppDrawer(),
        body: Selector(
            builder: (_, bool dataSet, __) => dataSet == false
                ? Center(child: CircularProgressIndicator())
                : FutureBuilder(
                    future: Provider.of<UserData>(context, listen: false)
                        .fetchUserData(FirebaseAuth.instance.currentUser.uid),
                    builder: (ctx, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return Column(
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
                                      Flexible(
                                        flex: 2,
                                        child: Padding(
                                          padding: const EdgeInsets.all(1),
                                          child: FittedBox(
                                            child: FittedBox(
                                              child: Text(
                                                'Physique',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Flexible(
                                        flex: 3,
                                        child: Container(
                                          padding: EdgeInsets.all(3),
                                          alignment: Alignment.center,
                                          child: Text(
                                            'instructionsinstructionsinstructionsinstructionsinstructionsinstructionsinstructionsinstructionsinstructions',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        fit: FlexFit.tight,
                                        flex: 1,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
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
                      );
                    },
                  ),
            selector: (ctx, UserData userData) => userData.dataSet));
  }
}
