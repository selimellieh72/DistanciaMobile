import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TeacherDetailsWidgetsPannel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.fromLTRB(11, 4, 60, 4),
      height: _screenSize.height * 0.44,
      width: _screenSize.width * 0.95,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(207, 94, 254, 1),
            Color.fromRGBO(8, 119, 204, 1),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name',
                style: Theme.of(context).textTheme.headline1.copyWith(
                      color: Colors.white,
                    ),
              ),
              Text(
                'Name of the student',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Status',
                style: Theme.of(context).textTheme.headline1.copyWith(
                      color: Colors.white,
                    ),
              ),
              Row(
                children: [
                  Text(
                    'Submitted',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: _screenSize.width * 0.01,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    child: SvgPicture.asset('assets/icons/eye.svg'),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
