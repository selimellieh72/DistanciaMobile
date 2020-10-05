import 'package:edulb/domain/homeworks/homework_item.dart';
import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeworkDetailsWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeworkItem _homework = ModalRoute.of(context).settings.arguments;
    final screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          width: double.infinity,
          height: screenSize.height * 0.12,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(94, 231, 254, 1),
                Color.fromRGBO(8, 119, 204, 1),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Teacher:',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    FittedBox(
                      child: Text(
                        'Johnny Eid',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'deadDline',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: screenSize.width * 0.024,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenSize.height * 0.037,
              ),
              Text(
                'Details:',
                style: Theme.of(context).textTheme.headline1,
              ),
              Container(
                height: 150,
                width: double.infinity,
                child: Text(
                  _homework.instructions,
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: Color.fromRGBO(42, 42, 42, 1),
                      fontWeight: FontWeight.w500),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My work',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        Row(
                          children: [
                            GradientButton(
                              increaseWidthBy: 50,
                              increaseHeightBy: 6,
                              callback: () {},
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromRGBO(207, 94, 254, 1),
                                  Color.fromRGBO(8, 119, 204, 1),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Upload',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          .copyWith(fontSize: 20),
                                    ),
                                    Icon(MdiIcons.uploadOutline,
                                        color: Colors.white, size: 30)
                                  ],
                                ),
                              ),
                            ),
                            Spacer()
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Final Grade',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        SizedBox(
                          height: screenSize.height * 0.02,
                        ),
                        Text(
                          'Homework not graded',
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: Color.fromRGBO(42, 42, 42, 1),
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
