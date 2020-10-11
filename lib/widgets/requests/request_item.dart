import 'package:edulb/helpers/db_helper.dart';
import 'package:flutter/material.dart';

class RequestItem extends StatelessWidget {
  final String requestId;
  final String studentFirstName;
  final String studentLastName;
  final String studentProfileImageUrl;
  final String gradeName;

  const RequestItem(
    this.requestId,
    this.studentFirstName,
    this.studentLastName,
    this.studentProfileImageUrl,
    this.gradeName,
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 3,
        child: ListTile(
          contentPadding: EdgeInsets.all(10),
          leading: CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage(studentProfileImageUrl),
          ),
          title: Text(
            '$studentFirstName $studentLastName',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          subtitle: Text(
            'Wants to join grade \'$gradeName\'.',
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(color: Colors.black),
            overflow: TextOverflow.clip,
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(Icons.check),
                onPressed: () => DBHELPER.acceptRequest(requestId),
                color: Colors.green,
              ),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () => DBHELPER.declineRequest(requestId),
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
