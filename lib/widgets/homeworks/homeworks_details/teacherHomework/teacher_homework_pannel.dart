import 'package:edulb/application/homeworks/fetch_submits/fetch_submits_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class TeacherDetailsWidgetsPannel extends StatelessWidget {
  void _launchUrl(String url) async {
    final bool canLaunchUrl = await canLaunch(url);
    if (!canLaunchUrl) {
      return;
    }
    await launch(url);
  }

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return BlocConsumer<FetchSubmitsBloc, FetchSubmitsState>(
        listener: (_, state) => Container(),
        builder: (_, state) => state.maybeMap(
              submitsSuccess: (state) {
                return Container(
                    padding: EdgeInsets.fromLTRB(22, 4, 22, 4),
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
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Name',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                            Text(
                              'Status',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: state.submits.length,
                            itemBuilder: (_, i) => Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${state.submits[i].user.firstName} ${state.submits[i].user.lastName}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(fontWeight: FontWeight.w600),
                                ),
                                GestureDetector(
                                  onTap: state.submits[i].submittedFileUrl.fold(
                                      () => () {},
                                      (fileUrl) => () => _launchUrl(fileUrl)),
                                  child: Row(
                                    children: [
                                      Text(
                                        state.submits[i].submittedFileUrl.fold(
                                            () => 'Not submitted',
                                            (_) => 'Submitted'),
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            .copyWith(
                                                fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      SvgPicture.asset(
                                        'assets/icons/eye.svg',
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ));
              },
              orElse: () => Center(
                child: CircularProgressIndicator(),
              ),
            ));
  }
}
