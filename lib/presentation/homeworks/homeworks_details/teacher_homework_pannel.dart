import 'package:edulb/presentation/homeworks/format_name.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:edulb/application/homeworks/fetch_submits/fetch_submits_bloc.dart';

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
                            Flexible(
                              flex: 2,
                              child: FittedBox(
                                child: Text(
                                  'Name',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1
                                      .copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: FittedBox(
                                  child: Text(
                                    'Status',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                ),
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
                                Flexible(
                                  flex: 2,
                                  child: Text(
                                    FormatName.formatName(
                                      lastName: state.submits[i].user.lastName,
                                      firstName:
                                          state.submits[i].user.firstName,
                                    ),
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: state.submits[i].submittedFileUrl
                                        .fold(
                                            () => () {},
                                            (fileUrl) =>
                                                () => _launchUrl(fileUrl)),
                                    child: Container(
                                      width: 125,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          state.submits[i].submittedFileUrl
                                              .fold(
                                            () => Text(
                                              'Empty',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromRGBO(
                                                          255, 149, 149, 1)),
                                            ),
                                            (_) => Text(
                                              'Submitted',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1
                                                  .copyWith(
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                          state.submits[i].submittedFileUrl
                                              .fold(
                                                  () => SvgPicture.asset(
                                                        'assets/icons/eye.svg',
                                                        color: Color.fromRGBO(
                                                            172, 172, 172, 1),
                                                      ),
                                                  (a) => SvgPicture.asset(
                                                        'assets/icons/eye.svg',
                                                      ))
                                        ],
                                      ),
                                    ),
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
